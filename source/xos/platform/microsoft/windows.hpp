///////////////////////////////////////////////////////////////////////
/// Copyright (c) 1988-2019 $organization$
///
/// This software is provided by the author and contributors ``as is'' 
/// and any express or implied warranties, including, but not limited to, 
/// the implied warranties of merchantability and fitness for a particular 
/// purpose are disclaimed. In no event shall the author or contributors 
/// be liable for any direct, indirect, incidental, special, exemplary, 
/// or consequential damages (including, but not limited to, procurement 
/// of substitute goods or services; loss of use, data, or profits; or 
/// business interruption) however caused and on any theory of liability, 
/// whether in contract, strict liability, or tort (including negligence 
/// or otherwise) arising in any way out of the use of this software, 
/// even if advised of the possibility of such damage.
///
///   File: windows.hpp
///
/// Author: $author$
///   Date: 11/17/2019
///////////////////////////////////////////////////////////////////////
#ifndef XOS_PLATFORM_MICROSOFT_WINDOWS_HPP
#define XOS_PLATFORM_MICROSOFT_WINDOWS_HPP

#include "xos/platform/types.hpp"
#include "xos/platform/microsoft/windows/posix/sys/time.hpp"

#if !defined(HAS_VFSCNAF)
inline int vfscanf(file_t f, const char *format, va_list va) {
    return -EINVAL;
}
#else /// !defined(HAS_VFSCNAF)
#endif /// !defined(HAS_VFSCNAF)

namespace xos {
namespace platform {
namespace microsoft {
namespace windows {

} /// namespace windows
} /// namespace microsoft
} /// namespace platform
} /// namespace xos

#endif /// ndef XOS_PLATFORM_MICROSOFT_WINDOWS_HPP
