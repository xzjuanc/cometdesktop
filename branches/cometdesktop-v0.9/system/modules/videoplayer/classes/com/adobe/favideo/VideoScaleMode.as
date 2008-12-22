﻿/**************************************************************************************************BSD LicenseThe BSD License (http://www.opensource.org/licenses/bsd-license.php) specifies the terms andconditions of use for FAVideo:Copyright (c) 2007. Adobe Systems Incorporated.All rights reserved.Redistribution and use in source and binary forms, with or without modification, are permittedprovided that the following conditions are met:  • Redistributions of source code must retain the above copyright notice, this list of conditions    and the following disclaimer.  • Redistributions in binary form must reproduce the above copyright notice, this list of    conditions and the following disclaimer in the documentation and/or other materials provided	with the distribution.  • Neither the name of Adobe Systems Incorporated nor the names of its contributors may be used    to endorse or promote products derived from this software without specific prior written	permission.THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS ORIMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIESOF MERCHANTABILITY ANDFITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER ORCONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIALDAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHERIN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUTOF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.For more information and updates for FAVideo, please visit:http://www.adobe.com/go/favideo/**************************************************************************************************//***  VideoScaleMode, this is modified from the original fl.video.VideoScaleMode class that is used by Flash 9's FLVPlayback component.*/class com.adobe.favideo.VideoScaleMode {		/**     * Specifies that the video be constrained within the     * rectangle determined by the <code>registrationX</code>, <code>registrationY</code>,     * <code>registrationWidth</code>, and <code>registrationHeight</code> properties but that its     * original aspect ratio be preserved.	 */	public static var MAINTAIN_ASPECT_RATIO:String = "maintainAspectRatio";	/**     * Specifies that the video be displayed at exactly the	 * height and width of the source video.	 */	public static var NO_SCALE:String = "noScale";			/**     * Specifies that the video be displayed at the	 * height and width specified by the <code>registrationHeight</code>	 * or <code>height</code> and <code>registrationWidth</code> or <code>width</code>	 * properties.      	 */	public static var EXACT_FIT:String = "exactFit";	}