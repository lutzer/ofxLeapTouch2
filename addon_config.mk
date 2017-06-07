# All variables and this file are optional, if they are not present the PG and the
# makefiles will try to parse the correct values from the file system.
#
# Variables that specify exclusions can use % as a wildcard to specify that anything in
# that position will match. A partial path can also be specified to, for example, exclude
# a whole folder from the parsed paths from the file system
#
# Variables can be specified using = or +=
# = will clear the contents of that variable both specified from the file or the ones parsed
# from the file system
# += will add the values to the previous ones in the file or the ones parsed from the file
# system
#
# The PG can be used to detect errors in this file, just create a new project with this addon
# and the PG will write to the console the kind of error and in which line it is

meta:
	ADDON_NAME = ofxLeapTouch2
	ADDON_DESCRIPTION = addon catches touches on a regular non-touch screen by using a leap controller
	ADDON_AUTHOR = Lutz Reiter
	ADDON_TAGS = "addon" "touch" "touchscreen" "hardware" "leap"
	ADDON_URL = https://github.com/lutzer/ofxLeapTouch2

common:
	# dependencies with other addons, a list of them separated by spaces
	# or use += in several lines
	ADDON_DEPENDENCIES = ofxLeapMotion2
	ADDON_DEPENDENCIES += ofxGui
	ADDON_DEPENDENCIES += ofxXmlSettings

	# include search paths, this will be usually parsed from the file system
	# but if the addon or addon libraries need special search paths they can be
	# specified here separated by spaces or one per line using +=
	# ADDON_INCLUDES = libs/ultrahaptics_2.2.2/Headers

	# any special flag that should be passed to the compiler when using this
	# addon
	# ADDON_CFLAGS =

	# any special flag that should be passed to the linker when using this
	# addon, also used for system libraries with -lname
	# ADDON_LDFLAGS = -lUltrahaptics.framework

	# linux only, any library that should be included in the project using
	# pkg-config
	# ADDON_PKG_CONFIG_LIBRARIES = Ultrahaptics.framework

	# osx/iOS only, any framework that should be included in the project
	# ADDON_FRAMEWORKS = libs/ultrahaptics_2.2.2/Libraries/CPlusPlus/Ultrahaptics.framework

	# source files, these will be usually parsed from the file system looking
	# in the src folders in libs and the root of the addon. if your addon needs
	# to include files in different places or a different set of files per platform
	# they can be specified here
	# ADDON_SOURCES =

	# some addons need resources to be copied to the bin/data folder of the project
	# specify here any files that need to be copied, you can use wildcards like * and ?
	# ADDON_DATA =

	# when parsing the file system looking for libraries exclude this for all or
	# a specific platform
	# ADDON_LIBS_EXCLUDE =

linux64:
	# binary libraries, these will be usually parsed from the file system but some
	# libraries need to passed to the linker in a specific order/
	#
	# For example in the ofxOpenCV addon we do something like this:
	#
	# ADDON_LIBS =
	# ADDON_LIBS += libs/opencv/lib/linuxarmv6l/libopencv_legacy.a
	# ADDON_LIBS += libs/opencv/lib/linuxarmv6l/libopencv_calib3d.a
	# ...
linux:
win_cb:
linuxarmv6l:
linuxarmv7l:
android/armeabi:
android/armeabi-v7a:
osx:
	# ADDON_FRAMEWORKS = libs/ultrahaptics_2.2.2/Libraries/CPlusPlus/Ultrahaptics.framework