#!/bin/bash
SdkVar="sdk-tools-linux-4333796"
wget --secure-protocol=TLSv1_2 --https-only "https://dl.google.com/android/repository/${SdkVar}.zip"
unzip -d "${SdkVar}" "${SdkVar}.zip"
cd "${SdkVar}"
cd tools
cd bin
yes | ./sdkmanager --update
yes | ./sdkmanager "platforms;android-28" "build-tools;28.0.3" "extras;google;m2repository" "extras;android;m2repository"
yes | ./sdkmanager "ndk-bundle"
yes | ./sdkmanager --licenses
