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
# QtCreator .pri file for rostra executable rostra
########################################################################

########################################################################
# rostra

# rostra_exe TARGET
#
rostra_exe_TARGET = rostra

# rostra_exe INCLUDEPATH
#
rostra_exe_INCLUDEPATH += \
$${rostra_INCLUDEPATH} \

# rostra_exe DEFINES
#
rostra_exe_DEFINES += \
$${rostra_DEFINES} \
DEFAULT_LOGGING_LEVELS_ERROR \
XOS_APP_CONSOLE_ROSTRA_MAIN_INSTANCE \

########################################################################
# rostra_exe OBJECTIVE_HEADERS
#
#rostra_exe_OBJECTIVE_HEADERS += \
#$${ROSTRA_SRC}/rostra/app/console/rostra/main.hh \

# rostra_exe OBJECTIVE_SOURCES
#
#rostra_exe_OBJECTIVE_SOURCES += \
#$${ROSTRA_SRC}/rostra/app/console/rostra/main.mm \

########################################################################
# rostra_exe HEADERS
#
rostra_exe_HEADERS += \
$${NADIR_SRC}/xos/base/exception.hpp \
$${NADIR_SRC}/xos/base/attached.hpp \
$${NADIR_SRC}/xos/base/created.hpp \
$${NADIR_SRC}/xos/base/locked.hpp \
$${NADIR_SRC}/xos/base/logged.hpp \
\
$${NADIR_SRC}/xos/console/io.hpp \
$${NADIR_SRC}/xos/console/main.hpp \
$${NADIR_SRC}/xos/console/getopt/main_opt.hpp \
$${NADIR_SRC}/xos/console/getopt/main.hpp \
\
$${FILA_SRC}/xos/mt/mutex.hpp \
$${FILA_SRC}/xos/mt/posix/timed.hpp \
$${FILA_SRC}/xos/mt/posix/mutex.hpp \
$${FILA_SRC}/xos/mt/linux/mutex.hpp \
$${FILA_SRC}/xos/mt/apple/osx/mutex.hpp \
$${FILA_SRC}/xos/mt/os/mutex.hpp \
$${FILA_SRC}/xos/mt/os/os.hpp \
\
$${CRONO_SRC}/xos/base/logger.hpp \
$${CRONO_SRC}/xos/logger/level.hpp \
$${CRONO_SRC}/xos/logger/levels.hpp \
$${CRONO_SRC}/xos/logger/function.hpp \
$${CRONO_SRC}/xos/logger/location.hpp \
$${CRONO_SRC}/xos/logger/message.hpp \
$${CRONO_SRC}/xos/logger/implement.hpp \
$${CRONO_SRC}/xos/logger/defines.hpp \
$${CRONO_SRC}/xos/console/logger.hpp \
\
$${ROSTRA_SRC}/xos/app/console/rostra/main_opt.hpp \
$${ROSTRA_SRC}/xos/app/console/rostra/main.hpp \

# rostra_exe SOURCES
#
rostra_exe_SOURCES += \
$${NADIR_SRC}/xos/base/exception.cpp \
$${NADIR_SRC}/xos/base/attached.cpp \
$${NADIR_SRC}/xos/base/created.cpp \
$${NADIR_SRC}/xos/base/locked.cpp \
$${NADIR_SRC}/xos/base/logged.cpp \
\
$${FILA_SRC}/xos/mt/posix/timed.cpp \
$${FILA_SRC}/xos/mt/posix/mutex.cpp \
$${FILA_SRC}/xos/mt/os/os.cpp \
\
$${CRONO_SRC}/xos/base/logger.cpp \
$${CRONO_SRC}/xos/logger/level.cpp \
$${CRONO_SRC}/xos/logger/levels.cpp \
$${CRONO_SRC}/xos/logger/function.cpp \
$${CRONO_SRC}/xos/logger/location.cpp \
$${CRONO_SRC}/xos/logger/message.cpp \
$${CRONO_SRC}/xos/logger/implement.cpp \
$${CRONO_SRC}/xos/logger/defines.cpp \
\
$${ROSTRA_SRC}/xos/app/console/rostra/main_opt.cpp \
$${ROSTRA_SRC}/xos/app/console/rostra/main.cpp \

########################################################################
# rostra_exe FRAMEWORKS
#
rostra_exe_FRAMEWORKS += \
$${rostra_FRAMEWORKS} \

# rostra_exe LIBS
#
rostra_exe_LIBS += \
$${rostra_LIBS} \

########################################################################
# NO Qt
QT -= gui core
