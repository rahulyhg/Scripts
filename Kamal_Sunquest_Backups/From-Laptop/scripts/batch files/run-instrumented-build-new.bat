rem Author: Pavan Rayadurg (pavan.rayadurg@trianz.com)
rem Photosmart Essential Onyx Debug Build
echo ON

call "%VS80COMNTOOLS%vsvars32.bat"

REM ==========================================================================
rem format D: /V:Data /Q /X

REM ======= start : vendor specific variables =========
rem set vendor_vob=btbuild
rem set vendor_name=trianz
rem set vendor=bt
REM ======= end : vendor specific variables =========

c:

rem set product_name=psp
rem set release_name=onyx

echo "Started the DEBUG build"

subst /D s:
subst /D q:
subst /D R:
subst /D T:

subst s: w:\tzhpradm_PS_Onyx_Debug_Build_view
subst q: s:\dpe_onyx
subst R: D:\build-archive
subst T: D:\BuildTools
rem subst t: \\izfilesrv\RUBY\CodeBaseShared

s:

cd s:\sdtajscripts\scripts

nant /f:psp-release.build -verbose -D:vendor.name=trianz -D:param.buildtype=msm task.version.read -D:ccase.checkout.flag=unr psp.build.shared.checkout psp.imgmgrbuild.binary.copy

cd s:\btbuild\scripts

nant -verbose -D:solution.config=Release -D:assembly.type="" imgmgr

cd s:\sdtajscripts\scripts

nant /f:psp-release.build -l:nant_debug_out.log -verbose -D:vendor.name=trianz -D:param.buildtype=msm psp.build.init task.version.read psp.clean.privatefiles -D:profiling.buildflag=true -D:imgmgr.buildflag=false psp.vendor.src.build.compile psp.debug.devfolder.zip psp.build.shared.undocheckout

if errorlevel 1 goto failedBuild

:successBuild
nant /f:psp-release.build -D:logfile=nant_debug_out.log -D:param.access.type=internal -verbose -D:vendor.name=trianz -D:param.buildtype=msm -D:buildResult=Succeeded -D:notify.miscellaneous.list=project-psp-builds@trianz.com psp.debug.log

goto end

:failedBuild
nant /f:psp-release.build -D:logfile=nant_out.log -D:param.access.type=internal -verbose -D:vendor.name=trianz -D:param.buildtype=msm -D:buildResult=Failed -D:notify.miscellaneous.list=project-psp-builds@trianz.com psp.debug.log

date /T
time /T
echo "DEBUG Build failed !!!"
@pause

:end
