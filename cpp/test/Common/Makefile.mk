# **********************************************************************
#
# Copyright (c) 2003-2015 ZeroC, Inc. All rights reserved.
#
# This copy of Ice is licensed to you under the terms described in the
# ICE_LICENSE file included in this distribution.
#
# **********************************************************************

$(project)_libraries	= TestCommon
$(project)_noinstall	:= 1

TestCommon_targetdir		:= lib
TestCommon_dependencies 	:= Ice IceUtil
TestCommon_sliceflags   	:= --dll-export TEST_API
TestCommon_cppflags		:= -I$(includedir) -I$(project) -Itest/include
TestCommon_cppflags[shared]	:= -DTEST_API_EXPORTS

projects += $(project)
