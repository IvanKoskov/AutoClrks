TARGET := iphone:clang:latest:14
INSTALL_TARGET_PROCESSES = AutoClkrs

include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = AutoClkrs

AutoClkrsTS_FILES = main.m AppDelegate.m ViewController.m
AutoClkrsTS_FRAMEWORKS = UIKit CoreGraphics CoreFoundation
AutoClkrsTS_CFLAGS = -fobjc-arc
AutoClkrsTS_LDFLAGS += -weak_framework MobileInstallation
include $(THEOS_MAKE_PATH)/application.mk
