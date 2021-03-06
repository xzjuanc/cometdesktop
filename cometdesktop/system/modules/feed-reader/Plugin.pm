package CometDesktop::Plugin::FeedReader;

use strict;
use warnings;

use CometDesktop qw(
    -WWW::Mechanize
);


$desktop->register_plugin( 'feed-reader' => 'FeedReader' );

sub request {
    my ( $self, $task, $what ) = @_;

    if ( $desktop->user->logged_in && $task && $self->can( 'cmd_'.$task ) ) {
        $desktop->content_type( 'text/xml' );
        
        my $cmd = 'cmd_'.$task;
        return $desktop->out( '<?xml version="1.0"?>' ) unless ( $self->$cmd( $what ) );

        return;
    }

    $desktop->error( 'no such task' )->throw;
}

sub new {
    my $class = shift;
    bless( {
        @_,
        agent => 'CometDesktop/1.0',
        from => 'David Davis <xantus@xantus.org>',
        referrer => 'http://cometdesktop.com/',
    }, $class || ref( $class ) );
}

sub ua {
    my $self = shift;
    # reduce, reuse, recycle
    return $self->{ua} if ( $self->{ua} );
    my $mech = WWW::Mechanize->new();
    $mech->timeout(20);
    # referrer is misspelled in the HTTP spec as referer
    $mech->default_headers( HTTP::Headers->new(
        'Referer' => $self->{referrer}
    ) );
    $mech->agent( $self->{agent} );
    $mech->from( $self->{from} );
    $self->{ua} = $mech;
    return $mech;
}

sub cmd_fetch {
    my ( $self, $what ) = @_;

    return unless ( defined $what && $what =~ m!^https?:\/\/! );

    my $res = $self->ua->get( $what );

    return unless ( $res->is_success );

    my $xml = $res->decoded_content;
    return unless ( defined $xml );

    return unless ( $xml =~ m/^<\?xml/ );

	$xml =~ s/<content:encoded>/<content>/g;
	$xml =~ s/<\/content:encoded>/<\/content>/g;
	$xml =~ s/<\/dc:creator>/<\/author>/g;
	$xml =~ s/<dc:creator/<author/g;

    $desktop->out( $xml );
    return 1;
}

1;
