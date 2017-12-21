#!/bin/sh

# build.sh
# Created by Yuvraj Jhala on 24/04/2017
alias BEGINCOMMENT="if [ ]; then"
alias ENDCOMMENT="fi"

PROJDIR=${PWD}
PROJECT_NAME="HelloWorld"
PRODUCT_NAME="HelloWorld"
TARGET_SDK="iphoneos"
PROJECT_BUILDDIR="${PROJDIR}/custom_build"
TARGET_TEST_NAME="UnitTests"
CONFIGURATION = "Developement"
BUILD_HISTORY_DIR="${PROJDIR}/ipa"
#BUILD_HISTORY_DIR="/Users/Xcloud/Desktop"
DEVELOPPER_NAME="iPhone Developer: itcan co. (Z2E64V7JRN)"
PROVISION_PROFILE = "/Users/Xcloud/simicart/ios/FOCUS_by_ITcan.mobileprovision"
CERTI="/Users/Xcloud/simicart/ios/Certificates.p12"
CURVERSION = "1.0"

#archive
xcodebuild -workspace ${PROJECT_NAME}.xcworkspace -scheme "${PROJECT_NAME}" -sdk iphoneos archive -archivePath "${PROJECT_BUILDDIR}/${PROJECT_NAME}.xcarchive"

xcodebuild -exportArchive \
-archivePath "${PROJECT_BUILDDIR}/${PRODUCT_NAME}.xcarchive" \
-exportPath "${BUILD_HISTORY_DIR}/${PROJECT_NAME}.ipa" \
-exportOptionsPlist "export_options.plist"

