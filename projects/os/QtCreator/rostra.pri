########################################################################
# Copyright (c) 1988-2021 $organization$
#
# This software is provided by the author and contributors ``as is''
# and any express or implied warranties, including, but not limited to,
# the implied warranties of merchantability and fitness for a particular
# purpose are disclaimed. In no event shall the author or contributors
# be liable for any direct, indirect, incidental, special, exemplary,
# or consequential damages (including, but not limited to, procurement
# of substitute goods or services; loss of use, data, or profits; or
# business interruption) however caused and on any theory of liability,
# whether in contract, strict liability, or tort (including negligence
# or otherwise) arising in any way out of the use of this software,
# even if advised of the possibility of such damage.
#
#   File: rostra.pri
#
# Author: $author$
#   Date: 7/31/2021
#
# Os specific QtCreator .pri file for rostra
########################################################################
UNAME = $$system(uname)

contains(UNAME,Darwin) {
ROSTRA_OS = macosx
} else {
contains(UNAME,Linux) {
ROSTRA_OS = linux
} else {
ROSTRA_OS = windows
} # contains(UNAME,Linux)
} # contains(UNAME,Darwin)

contains(BUILD_OS,ROSTRA_OS) {
ROSTRA_BUILD = $${ROSTRA_OS}
} else {
ROSTRA_BUILD = $${BUILD_OS}
} # contains(BUILD_OS,ROSTRA_OS)

contains(BUILD_CPP_VERSION,10) {
CONFIG += c++0x
} else {
contains(BUILD_CPP_VERSION,98|03|11|14|17) {
CONFIG += c++$${BUILD_CPP_VERSION}
} else {
} # contains(BUILD_CPP_VERSION,98|03|11|14|17)
} # contains(BUILD_CPP_VERSION,10)

contains(ROSTRA_OS,macosx) {
} else {
contains(ROSTRA_OS,linux) {
QMAKE_CXXFLAGS += -fpermissive
} else {
contains(ROSTRA_OS,windows) {
} else {
} # contains(ROSTRA_OS,windows)
} # contains(ROSTRA_OS,linux)
} # contains(ROSTRA_OS,macosx)

########################################################################
# nadir
NADIR_THIRDPARTY_PKG_MAKE_BLD = $${NADIR_THIRDPARTY_PKG}/build/$${ROSTRA_BUILD}/$${BUILD_CONFIG}
NADIR_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${NADIR_THIRDPARTY_PRJ}/build/$${ROSTRA_BUILD}/$${BUILD_CONFIG}
NADIR_THIRDPARTY_PKG_BLD = $${NADIR_THIRDPARTY_PKG}/build/$${ROSTRA_BUILD}/QtCreator/$${BUILD_CONFIG}
NADIR_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${NADIR_THIRDPARTY_PRJ}/build/$${ROSTRA_BUILD}/QtCreator/$${BUILD_CONFIG}
NADIR_PKG_BLD = $${OTHER_BLD}/$${NADIR_PKG}/build/$${ROSTRA_BUILD}/QtCreator/$${BUILD_CONFIG}
NADIR_PRJ_BLD = $${OTHER_BLD}/$${NADIR_PRJ}/build/$${ROSTRA_BUILD}/QtCreator/$${BUILD_CONFIG}
#NADIR_LIB = $${NADIR_THIRDPARTY_PKG_MAKE_BLD}/lib
#NADIR_LIB = $${NADIR_THIRDPARTY_PRJ_MAKE_BLD}/lib
#NADIR_LIB = $${NADIR_THIRDPARTY_PKG_BLD}/lib
#NADIR_LIB = $${NADIR_THIRDPARTY_PRJ_BLD}/lib
NADIR_LIB = $${NADIR_PKG_BLD}/lib
#NADIR_LIB = $${NADIR_PRJ_BLD}/lib
#NADIR_LIB = $${ROSTRA_LIB}
NADIR_LIB_NAME = $${NADIR_NAME}

# nadir LIBS
#
nadir_LIBS += \
-L$${NADIR_LIB}/lib$${NADIR_LIB_NAME} \
-l$${NADIR_LIB_NAME} \

########################################################################
# rostra

# rostra INCLUDEPATH
#
rostra_INCLUDEPATH += \

# rostra DEFINES
#
rostra_DEFINES += \

# rostra LIBS
#
rostra_LIBS += \
$${nadir_LIBS} \
$${build_rostra_LIBS} \

contains(ROSTRA_OS,macosx|linux) {
rostra_LIBS += \
-lpthread \
-ldl
} else {
} # contains(ROSTRA_OS,macosx|linux)

contains(ROSTRA_OS,linux) {
rostra_LIBS += \
-lrt
} else {
} # contains(ROSTRA_OS,linux)


