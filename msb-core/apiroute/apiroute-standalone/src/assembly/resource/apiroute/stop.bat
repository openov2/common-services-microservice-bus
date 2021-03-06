@REM
@REM Copyright 2016 ZTE Corporation.
@REM
@REM Licensed under the Apache License, Version 2.0 (the "License");
@REM you may not use this file except in compliance with the License.
@REM You may obtain a copy of the License at
@REM
@REM     http://www.apache.org/licenses/LICENSE-2.0
@REM
@REM Unless required by applicable law or agreed to in writing, software
@REM distributed under the License is distributed on an "AS IS" BASIS,
@REM WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@REM See the License for the specific language governing permissions and
@REM limitations under the License.
@REM
@REM     Author: Zhaoxing Meng
@REM     email: meng.zhaoxing1@zte.com.cn
@REM

@echo off
title stopping apiroute-service

set HOME=%~dp0
set APIROUTE_Main_Class="org.openo.msb.ApiRouteApp"

echo ================== apiroute info  =============================================
echo HOME=$HOME
echo APIROUTE_Main_Class=%APIROUTE_Main_Class%
echo ===============================================================================

echo ### Stopping apiroute-service
cd /d %HOME%

rem set JAVA_HOME=D:\WorkSoftware\jdk1.7.0_60
for /f "delims=" %%i in ('%JAVA_HOME%\bin\jcmd') do (
  call find_kill_process "%%i" %APIROUTE_Main_Class% %HOME%
)
exit