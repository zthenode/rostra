/*/
///////////////////////////////////////////////////////////////////////
/// Copyright (c) 1988-2020 $organization$
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
///   File: Semaphore.h
///
/// Author: $author$
///   Date: 1/6/2020
///////////////////////////////////////////////////////////////////////
/*/
#ifndef XOS_PLATFORM_OS_MICROSOFT_WINDOWS_SEMAPHORE_H
#define XOS_PLATFORM_OS_MICROSOFT_WINDOWS_SEMAPHORE_H

#include "xos/platform/os/microsoft/windows/Handle.h"

#if defined(__cplusplus)
extern "C" {
#endif /*/ defined(__cplusplus) /*/

#if !defined(WINDOWS)
/*/
/// windows semaphores
/// ...
/*/
HANDLE WINAPI CreateSemaphore(
  _In_opt_ LPSECURITY_ATTRIBUTES lpSemaphoreAttributes,
  _In_     LONG                  lInitialCount,
  _In_     LONG                  lMaximumCount,
  _In_opt_ LPCTSTR               lpName
);
BOOL WINAPI ReleaseSemaphore(
  _In_      HANDLE hSemaphore,
  _In_      LONG   lReleaseCount,
  _Out_opt_ LPLONG lpPreviousCount
);
/*/
/// ...
/// windows semaphores
/*/
#endif /*/ !defined(WINDOWS) /*/

#if defined(__cplusplus)
} /*/ extern "C" /*/
#endif /*/ defined(__cplusplus) /*/

#endif /*/ ndef XOS_PLATFORM_OS_MICROSOFT_WINDOWS_SEMAPHORE_H /*/
