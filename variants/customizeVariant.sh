#!/sbin/sh
# Copyright (C) 2012 The Android Open Source Project
# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Provides customization of build.prop for various jflte variants.

#att
cat /proc/cmdline|grep -q SGH-I337_ATT
if [ $? = 0 ];
    then
       sed -i 's|ro.build.fingerprint=custom|ro.build.fingerprint=samsung/jflteuc/jflteatt:4.2.2/JDQ39/I337UCUAMDL:user/release-keys|g' /system/build.prop 
       sed -i 's|ro.build.description=custom|ro.build.description=flteuc-user 4.2.2 JDQ39 I337UCUAMDL release-keys|g' /system/build.prop
       sed -i 's|SGS4ALL|SGH-I337|g' /system/build.prop
fi


#tmo
cat /proc/cmdline|grep -q SGH-M919
if [ $? = 0 ];
    then
       sed -i 's|ro.build.fingerprint=custom|ro.build.fingerprint=samsung/jfltetmo/jfltetmo:4.2.2/JDQ39/M919UVUAMDB:user/release-keys|g' /system/build.prop 
       sed -i 's|ro.build.description=custom|ro.build.description=jfltetmo-user 4.2.2 JDQ39 M919UVUAMDB release-keys|g' /system/build.prop
       sed -i 's|SGS4ALL|SGH-M919|g' /system/build.prop
fi

#can
cat /proc/cmdline|grep -q SGH-I337_M
if [ $? = 0 ];
    then
       sed -i 's|ro.build.fingerprint=custom|ro.build.fingerprint=samsung/jfltevl/jfltecan:4.2.2/JDQ39/I337MVLUAMDJ:user/release-keys|g' /system/build.prop 
       sed -i 's|ro.build.description=custom|ro.build.description=jfltevl-user 4.2.2 JDQ39 I337MVLUAMDJ release-keys|g' /system/build.prop
       sed -i 's|SGS4ALL|SGH-I337M|g' /system/build.prop
fi

#xx
cat /proc/cmdline|grep -q 9505
if [ $? = 0 ];
    then
       sed -i 's|ro.build.fingerprint=custom|ro.build.fingerprint=samsung/jfltexx/jflte:4.2.2/JDQ39/I9505XXUAMDE:user/release-keys|g' /system/build.prop 
       sed -i 's|ro.build.description=custom|ro.build.description=jfltexx-user 4.2.2 JDQ39 I9505XXUAMDE release-keys|g' /system/build.prop
       sed -i 's|SGS4ALL|GT-I9505|g' /system/build.prop
fi

awk '!/#build.prop.custom/' /system/build.prop > /system/build.temp && mv /system/build.temp /system/build.prop
chmod 0644 /system/build.prop



