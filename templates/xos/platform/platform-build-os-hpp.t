%########################################################################
%# Copyright (c) 1988-2019 $organization$
%#
%# This software is provided by the author and contributors ``as is'' 
%# and any express or implied warranties, including, but not limited to, 
%# the implied warranties of merchantability and fitness for a particular 
%# purpose are disclaimed. In no event shall the author or contributors 
%# be liable for any direct, indirect, incidental, special, exemplary, 
%# or consequential damages (including, but not limited to, procurement 
%# of substitute goods or services; loss of use, data, or profits; or 
%# business interruption) however caused and on any theory of liability, 
%# whether in contract, strict liability, or tort (including negligence 
%# or otherwise) arising in any way out of the use of this software, 
%# even if advised of the possibility of such damage.
%#
%#   File: platform-build-os-hpp.t
%#
%# Author: $author$
%#   Date: 12/24/2019
%########################################################################
%with(%
%include_path,%(%else-then(%include_path%,%(%filepath(%input%)%)%)%)%,%
%is_os,%(%else-then(%is_os%,%(%is_Os%)%)%)%,%
%os,%(%else-then(%if-no(%is_os%,,%(%os%)%)%,%(%if-no(%is_os%,,%(Os)%)%)%)%)%,%
%Os,%(%else-then(%if-no(%is_os%,,%(%Os%)%)%,%(%os%)%)%)%,%
%OS,%(%else-then(%OS%,%(%toupper(%Os%)%)%)%)%,%
%os,%(%else-then(%_Os%,%(%tolower(%Os%)%)%)%)%,%
%%(///
/// Define %OS% if any of the %Os% variants are defined
///
#if defined(%OS%) || defined(_%OS%) || defined(__%OS%__) || defined(__%os%__) || defined(__%os%) || defined(__%Os%__) || defined(__%Os%)
#if !defined(%OS%)
#define %OS%
#endif /// !defined(%OS%) ///
#endif /// defined(%OS%) || defined(_%OS%) || defined(__%OS%__) || defined(__%os%__) || defined(__%os%) || defined(__%Os%__) || defined(__%Os%)
)%)%