
######################################################################

DELL OPENMANAGE(TM) SERVER ADMINISTRATOR VERSION 3.0 README

######################################################################

NOTE: This readme provides information for Dell OpenManage Server
      Administrator version 3.0.

This file contains updated information for your "Dell OpenManage
Server Administrator User's Guide" and any other technical
documentation included with Server Administrator.

NOTE: See the Dell OpenManage Install 5.0 readme ("readme_ins.txt"),
      which is located under the "readme" folder on the
      "Dell(TM) PowerEdge(TM) Installation and Server Management" CD
      for the latest installation information and issues specifically
      related to Server Administrator.

NOTE: See the Dell OpenManage Storage Management readme (located in
      the "srvadmin\docs\readme" directory on the "Dell PowerEdge
      Installation and Server Management" CD) for supplemental
      information regarding the Storage Management Service.

The Server Administrator documentation includes the "User's Guide",
"Messages Reference Guide", "CIM Reference Guide", "Command Line
Interface (CLI) User's Guide", "SNMP Reference Guide", and
"Compatibility Guide". You can access the documentation from the
documentation CD or from the Dell support website at
"support.dell.com".

This file contains the following sections:

* Criticality

* Minimum Requirements

* Release Highlights

* Installation

* User Notes

* Known Issues

######################################################################
CRITICALITY
######################################################################

3 - Optional

Dell recommends that you review specifics about the update to
determine if it applies to your system. The update contains changes
that impact only certain configurations, or provides new features that
may or may not apply to your environment.

######################################################################
MINIMUM REQUIREMENTS
######################################################################

This section provides information about the minimum requirements for
installing and using Server Administrator.

======================================================================
INSTALLATION AND SERVER MANAGEMENT CD VERSION 5.0 SUPPORTED SYSTEMS
======================================================================

Server Administrator 3.0 is supported on the "Installation and Server
Management" CD version 5.0.

The following Dell PowerEdge systems are supported for
"Installation and Server Management" CD version 5.0: 600SC, 650, 700,
750, 800, 830, 850, 1600SC, 1650, 1655MC, 1750, 1800, 1850, 1855MC,
1950, 1955, 2600, 2650, 2800, 2850, 2900, 2950, 4600, 6600, 6650,
6800, and 6850.


======================================================================
SUPPORTED OPERATING SYSTEMS
======================================================================

* Microsoft(R) Windows(R) 2000 Server family (32-bit extension)
  (includes Windows 2000 Server SP4, Windows 2000 Advanced Server SP4,
  and Windows 2000 Small Business Server [SBS], and Windows 2000 SBS
  SP1)

* Microsoft Windows Server(TM) 2003 R2 (32-bit and 64-bit
  extensions) (Standard, and Enterprise and x64 editions), Microsoft
  Windows Server 2003 SP1 (Web Edition), Microsoft Windows Storage
  Server 2003 R2 (includes Express, Standard, Workgroup, and
  Enterprise editions), and Microsoft Windows Server 2003 SBS

* Red Hat(R) Enterprise Linux (AS, WS and ES), (version 3 and 4)
  for Intel(R) x86 and Intel Extended Memory 64 Technology (EM64T)

* SUSE LINUX Enterprise Server (version 9), SP3 for Intel EM64T

* VMWare ESX service console (see www.dell.com/vmware for details)


======================================================================
SUPPORTED WEB BROWSERS
======================================================================

* Microsoft Internet Explorer 6.0(SP1 and SP2) on Microsoft Windows
  Server 2003

* Mozilla 1.7.8, 1.7.10, and 1.7.11 on Red Hat Enterprise Linux
  (AS, ES, WS) version 3.0 and SUSE LINUX Enterprise Server version 9

* Firefox 1.0.7 on Red Hat Enterprise Linux (As, ES, WS) version 4 and
  SUSE LINUX Enterprise Server version 9

  NOTE: The Server Administrator browser attempts to use the available
  browser in all cases. However, under certain circumstances, using an
  unsupported (version or unsupported type) browser may not be
  reported to the user. In such cases, the user may see unexpected
  or incomplete results.

  Note:  The operating system media browser install may not be the
  version supported by Server Administrator. See the appropriate Red
  Hat Enterprise Linux operating system documentation to upgrade the
  base browser install version to the supported version.

======================================================================
SUPPORTED SSL VERSION
======================================================================

* Server Administrator supports SSL 3.0 exclusively.

======================================================================
SUPPORTED RAC FIRMWARE
======================================================================

* On systems installed with a DRAC 4/I and DRAC 4/P firmware version
  1.0 or greater, RAC firmware version 3.20 or greater is required
  for DRAC III, DRAC III/XT, ERA, and ERA/O.

######################################################################
RELEASE HIGHLIGHTS
######################################################################

* This release of Server Administrator provides support for Serial
  Attached SCSI (SAS) technology. SAS technology offers improved
  scalability for your storage environment by providing increased
  bandwidth and capacity to manage more storage enclosures and physical
  disks than is possible with SCSI.

  This release introduces the following SAS-enabled storage products:

  -- Dell PowerEdge(TM) Expandable RAID Controller (PERC) 5/E
  -- Dell PowerVault(TM) MD1000 Storage Enclosure

  Dell OpenManage Server Administrator Storage Management provides
  SAS management with the PERC 5/E controller and the MD1000 storage
  enclosure.

* Added support for the following operating systems:

  * Microsoft Small Business Server (SBS) 2003 SP1
  * Windows Server 2003 x64 (includes Standard and
    Enterprise Editions)
  * Red Hat Enterprise Linux (version 3) for Intel Extended Memory 64
    Technology
  * Red Hat Enterprise Linux (version 4) for Intel x86
  * Red Hat Enterprise Linux (version 4) for Intel Extended Memory 64
    Technology

* Added service pack upgrade capability for systems running Microsoft
  Windows

* Removed support for Novell Netware 5.1

* Removed support for Red Hat Enterprise Linux 2.1

######################################################################
INSTALLATION
######################################################################

For complete installation instructions, see the "Server Administrator
User's Guide".

######################################################################
USER NOTES
######################################################################

This section provides information to help enhance your experience with
Server Administrator in particular implementations and environments.

* Server Administrator uses port 1311 as the default port. Port 1311
  is a registered port number of Dell Inc. If another application is
  configured to run on port 1311 before Server Administrator is
  installed, the Secure Port Server will not start after installation.
  Before you install Server Administrator, ensure that port 1311 is
  not being used.

* You need to enable client-side scripting in Internet Explorer before
  starting Server Administrator. To do so, perform the following
  steps:

  1. Navigate to "Tools" in Internet Explorer.

  2. Under Tools, click "Internet Options".

  3. Under "Internet Options", click the "Security" tab.

  4. Select the security zone that the system running Server
     Administrator falls under.
     NOTE: This option should be set to "Trusted sites".

  5. Click the "Custom Level" button.

  6. For Windows 2000, perform the following steps:

     - Under "Miscellaneous", select the "Allow Meta Refresh" radio
       button.

     - Under "Active Scripting", select the "Enable" radio button.

  7. For Windows 2003, perform the following steps,

     - Under "Miscellaneous", select the "Allow Meta Refresh" radio
       button.

     - Under "Active Scripting", select the "Enable" radio button.

     - Under "Active scripting", select the "Allow scripting of
       Internet Explorer web browser controls" radio button.

     - Click "OK" and restart your browser.

* To allow Single Sign-on for Server Administrator, without prompts
  for user credentials, perform the following steps:

  1. Navigate to "Tools" in Internet Explorer.

  2. Under "Tools", click "Internet Options"

  3. Under "Internet Options", click the "Security" tab.

  4. Select "Trusted sites".

  5. Click the "Custom Level" button.

  6. Under "User Authentication", select the "Automatic Logon with
     current username and password" radio button.

  7. Click "OK" and restart your browser.

* If you run a security scanner tool (such as Nessus) against the
  Server Administrator web server, certain security warnings against
  port 1311 running the Server Administrator web server might be
  displayed. The following warnings have been investigated by Dell
  engineering and are determined to be "false positives"
  (invalid security warnings) that you can safely ignore:

  * "The web server on 1311 allows scripts to read sensitive
    configuration and / or XML files." Dell has determined that this
    warning is a false positive.
  * "The web server on 1311 allows to delete " / " which implies that
    the web server will allow a remote user to delete the files in
    root on the server." Dell has determined that this warning is a
    false positive.
  * "The web server on 1311 might be susceptible to a 'WWW Infinite
    Request' attack." Dell has determined that this warning is a false
    positive.
  * "It is possible to make the remote thttpd server execute arbitrary
    code by sending a request like: GET If-Modified-Since:AAA[...]AAAA
    Solution: If you are using thttpd, upgrade to version 2.0. If you
    are not, then contact your vendor and ask for a patch, or change
    your web server. CVE on this one is CAN-2000-0359". Dell has
    determined that this warning is a false positive.

* Enabling Integrated Windows Authentication in Internet Explorer
  is not required to activate the Single Sign-On feature.

* Server Administrator does not display information related to teaming
  of NICs. For information on NIC teaming, see the network
  controller documentation.

* Server Administrator security settings are not applicable for Active
  Directory users. Active Directory users with read-only login, can
  access Server Administrator, even after access is blocked in the
  preferences page of Server Administrator.

* Dell MIB Files for PowerEdge Systems:

  Dell MIB files for PowerEdge systems allow customers to obtain and
  verify information provided by supported software agents. The
  current MIB files supported by PowerEdge software agents are located
  at "\support\mib" on the "Systems Management Consoles" CD.

  NOTE: A MIB-II-compliant, SNMP-supported network management station
        is required to compile and browse MIB files.

======================================================================
NOTES FOR THE INSTRUMENTATION SERVICE
======================================================================

* User-defined thresholds set under Server Administrator 1.1 become
  the default thresholds after installing subsequent versions.

  After you change the threshold value of a probe on a system running
  Server Administrator 1.1 or earlier, and then upgrade to Server
  Administrator 1.2 or later, the changed threshold value becomes the
  default threshold value.

* When modifying the warning threshold settings, the values are stored
  in the firmware as discrete integer values and scaled for display.
  If the modified value is not a discrete integer, it may change when
  saved.

* Fan redundancy can have the following states:

  Fully Redundant: The sensors display this status, if all the fans
  in the system are present and are in a non-failure state.

  OR

  Redundancy Lost: The sensors display this status, whenever any
  system fan fails or is removed from the chassis.

  Additionally, on PowerEdge 6800, the sensors will report a fan
  redundancy status of "Redundancy Lost" in the following scenarios:

  - A power supply is removed and a power supply fan blank is not
    inserted.
  - A power supply fan blank is present but failed.(134157)

* If a system with memory redundancy enabled enters a "redundancy
  lost" state, it may not be apparent which memory module is the cause.
  If you cannot determine which DIMM to replace, see the "switch to
  spare memory detected" log entry in the ESM system log to find
  which memory module failed.

* If you run Server Administrator while the system is in OS Install Mode,
  memory may be reported incorrectly by  Server Administrator.
  To avoid this issue, you must disable OS Install Mode before running
  Server Administrator.

* If you have to uninstall and reinstall the SNMP services, then
  reinstall OpenManage as well, so that the OpenManage SNMP sub-agents
  are registered with the SNMP Agent.

* Server Administrator Device Drivers

  Server Administrator includes two device drivers: Dell Systems
  Management Base Driver (dcdbas) and Dell BIOS Update Driver
  (dell_rbu).  Server Administrator uses these drivers to perform its
  systems management functions.  Depending on the system, Server
  Administrator loads one or both of these drivers if required.
  These drivers have been released as open source under the GNU
  General Public License v2.0.  They are available in kernels from
  kernel.org starting with kernel 2.6.14.

  Red Hat Enterprise Linux:

  Server Administrator provides precompiled dcdbas and dell_rbu
  modules for Red Hat Enterprise Linux version 3 and 4.  One or both
  of these drivers is expected to ship with future Red Hat
  Enterprise Linux version 3 and 4 updates.

  SUSE Linux Enterprise Server:

  These drivers ship with SUSE Linux Enterprise Server version 9
  Service Pack 3 (SP 3).  They are expected to ship with future
  SUSE Linux Enterprise Server version 9 service packs as well.

  If the drivers are available with the operating system, Server
  Administrator will use those versions of the drivers.  If the
  drivers are not available with the operating system, Server
  Administrator will use its precompiled modules on Red Hat
  Enterprise Linux version 3 and 4.  If precompiled drivers are not
  available with the operating system or Server Administrator,
  Server Administrator uses its Dynamic Kernel Support (DKS) feature
  to build the drivers when needed.  See the "Dell OpenManage
  Installation and Security User's Guide" for more information about
  DKS.

* Alert on Console Alert Action on SUSE Linux Enterprise Server

  When you set Alert Actions for an event, you can specify the action
  to "display an alert on the server."  To perform this action on
  supported Linux operating systems, Server Administrator writes a
  message to the console.  To see the alert message on a SUSE Linux
  Enterprise Server system when the X Window System is running, you
  must start "xterm -C" before the event occurs.

* Broadcast Message Alert Action on SUSE Linux Enterprise Server 9

  When you set Alert Actions for an event, you can specify the action
  to "broadcast a message."  To perform this action on supported
  Linux operating systems, Server Administrator executes the "wall"
  command, which sends the message to everybody logged in with their
  message permission set to yes.  If the system running Server
  Administrator is running the X Window System, you do not see the
  message by default.  To see the broadcast message when the X Window
  System is running, you must start a terminal such as "xterm" or
  "gnome-terminal" before the event occurs.  On SUSE Linux Enterprise
  Server 9, messages sent by "wall" are displayed by the "xterm"
  terminal program but not by the "Konsole" terminal program.

=======================================================================
NOTES FOR THE DIAGNOSTIC SERVICE
=======================================================================

* See the Dell OpenManage Storage Management readme (located in the
  "sm" directory on the "Dell PowerEdge Installation and Server
  Management" CD) for minimum controller firmware and driver
  requirements.
* Ensure that only Dell-supported USB devices are present in your
  system prior to running Diagnostics Services. Disconnect any
  unsupported devices, if they are present. See the
  "Server Administrator Compatibility Guide" for a complete
  list of supported devices.

* Diagnostic Service does not support Adaptec SCSI HostRaid 0 or
  1(39320).(135994)

* PERC 2/QC, PERC 2/Si, PERC 3/Si, PERC 3/Di, and PERC 4/IM require
  Array Manager or Storage Management Service to be installed for
  diagnostics to work correctly.

* CD/DVD tests are not supported on Virtual CD devices.

* The following tape drives are now supported:

  - PowerVault 100T DDS4
  - PowerVault 100T DAT72
  (Above drive is not supported on Red Hat Enterprise Linux version 3)
  - PowerVault 110T DLT1
  - PowerVault 110T DLT VS80
  - PowerVault 110T SDLT220
  - PowerVault 110T SDLT320
  - PowerVault 110T DLTVS160
  - PowerVault 110T LTO2
  - PowerVault 110T LTO3
  - PowerVault 110T LTO-2-L
  - All drives in supported arrays, autoloaders, and libraries.

* The following autoloaders are now supported:

 - PowerVault 122T Autoloader VS80
 - PowerVault 122T Autoloader SDLT320
 - PowerVault 122T Autoloader LTO2
 - PowerVault 128T Autoloader SDLT320
 - PowerVault 132T Autoloader SDLT320
 - PowerVault 132T Autoloader LTO2
 - PowerVault 136T Autoloader SDLT220
 - PowerVault 136T Autoloader SDLT320
 - PowerVault 136T Autoloader LTO2

* Diagnostics lists several attributes for each tape drive.

  The attributes and their definitions are defined as follows:

  - PowerOnHours (POH): Number of hours the tape drive has been
                        powered on.
  - TapeMotionHours (TMH): Number of hours the tape has been in use.
  - LastClean (LC): Time (in hours) since the last cleaning.
  - CleanReq (CR): Whether cleaning is required for the tape drive.
  - NumberofCleans (NOC): Number of cleans performed on the tape
                          drive.
  - LoadCount (LoC): Number of times the tape media has been loaded
		     or unloaded in the tape drive.

* The following table lists the attributes for each tape drive ("S"
is the abbreviation for "Supported"):

---------------------------------------------------------
    TAPE                |POH| TMH | LC | CR | NOC | LoC |
   DEVICE               |   |     |    |    |     |     |
------------------------|-------------------------------|
PowerVault-100T-DDS4    | S |  S  | S  |  S |  S  |  S  |
------------------------|---|-----|----|----|-----|-----|
PowerVault-100T-DAT72   | S |  S  | S  |  S |  S  |  S  |
------------------------|---|-----|----|----|-----|-----|
PowerVault-110T-LTO1    | S |  S  | S  |  S |  S  |  S  |
------------------------|-------------------------------|
PowerVault 110T-LTO2    | S | NA  | NA |  S |  S  |  S  |
------------------------|---|-----|----|----|-----|-----|
PowerVault-110T-LTO3    | S |  S  | S  |  S |  S  | NA  |
------------------------|---|-----|----|----|-----|-----|
PowerVault-110T-LTO-2-L | S | NA  | NA |  S |  S  |  S  |
------------------------|---|-----|----|----|-----|-----|
PowerVault-110T-DLT1    | S |  S  | S  |  S |  NA |  S  |
------------------------|---|-----|----|----|-----|-----|
PowerVault-110T-DLT-VS80| S |  S  | NA |  S |  NA |  S  |
------------------------|---|-----|----|----|-----|-----|
PowerVault-110T-SDLT320 | S |  S  | NA |  S |  S  |  S  |
------------------------|---|-----|----|----|-----|-----|
PowerVault-110T-SDLT220 | S |  S  | NA |  S |  S  |  S  |
------------------------|---|-----|----|----|-----|-----|
PowerVault-110T-DLTVS160| S |  S  | NA |  S |  NA |  S  |
------------------------|---|-----|----|----|-----|-----|
PowerVault-122T-SDLT320 | S |  S  | NA |  S |  S  |  S  |
------------------------|---|-----|----|----|-----|-----|
PowerVault-122T-DLT-VS80| S |  S  | NA |  S |  NA |  S  |
------------------------|---|-----|----|----|-----|-----|
PowerVault-132T-LTO2    | S |  S  | NA |  S |  S  |  S  |
------------------------|---|-----|----|----|-----|-----|
PowerVault-132T-LTO     | S |  S  | NA |  S |  S  |  S  |
------------------------|---|-----|----|----|-----|-----|
PowerVault-132T-SDLT320 | S |  S  | NA |  S |  S  |  S  |
------------------------|---|-----|----|----|-----|-----|
PowerVault-136T-SDLT320 | S |  S  | NA |  S |  S  |  S  |
------------------------|---|-----|----|----|-----|-----|
PowerVault-136T-SDLT220 | S |  S  | NA |  S |  S  |  S  |
------------------------|---|-----|----|----|-----|-----|
PowerVault-136T-LTO2    | S |  S  | NA |  S |  S  |  S  |
------------------------|---|-----|----|----|-----|-----|

* The Diagnostic Service does not support CERC SATA/2s(RAID mode).

* The Diagnostic Service does not support the following tests on the
  PowerVault 122T tape library\autoloader. (146844)

  * Tape Changer Automation Test
  * Tape Device Self Test

* Following are the supported adapters and tests for Intel NIC
  diagnostics on Windows:

--------------------------|--------|--------|------|---------|-----|
                   |EEPROM|PHY     |MAC     | FIFO |Interrupt| Link|
                   |Test  |Loopback|Loopback| Test |Test     | Test|
Adapter            |Test  |Test    |        |      |         |     |
-------------------|------|--------|--------|------|---------|-----|
PRO/1000 MF        |      |        |        |      |         |     |
Server Adapter     |Yes   |Yes     |Yes     |Yes   |Yes      |Yes  |
-------------------|------|--------|--------|------|---------|-----|
PRO/1000 MT        |      |        |        |      |         |     |
Server Adapter 	   |Yes   |Yes     |Yes     |Yes   |Yes      |Yes  |
-------------------|------|--------|--------|------|---------|-----|
Intel PRO/1000 MT  |      |        |        |      |         |     |
Dual Port	   |      |        |        |      |         |     |
Sever Adapter      |Yes   |Yes     |No      |Yes   |Yes      |Yes  |
--------------------------|--------|--------|------|---------|-----|
Intel PRO/100s     |      |        |        |      |         |     |
Server Adapter     |Yes   |Yes     |Yes     |No    |Yes      |Yes  |
-------------------|------|--------|--------|------|---------|-----|
Intel PRO/1000 XT  |      |        |        |      |         |     |
Network Connection |Yes   |Yes     |No      |Yes   |Yes      |Yes  |
-------------------|------|--------|--------|------|---------|-----|
Intel PRO/1000     |      |        |        |      |         |     |
CT Network         |      |        |        |      |         |     |
Connection 	   |Yes   |Yes     |Yes     |Yes   |Yes      |Yes  |
-------------------|------|--------|--------|------|---------|-----|
Intel PRO/1000 MT  |Yes   |Yes     |Yes     |Yes   |Yes      |Yes  |
Network Connection |      |        |        |      |         |     |
-------------------|------|--------|--------|------|---------|-----|
Intel PRO/1000 MT  |      |        |        |      |         |     |
Dual Port Network  |	  |	   |        |      |         |     |
Connection         |Yes   |Yes     |No      |Yes   |Yes      |Yes  |
-------------------|------|--------|--------|------|---------|-----|
Intel PRO/1000 MB  |      |        |        |      |         |     |
Dual Port Network  |	  |	   |        |      |         |     |
Connection         |Yes   |Yes     |No      |Yes   |Yes      |Yes  |
-------------------|------|--------|--------|------|---------|-----|
--------------------------|--------|--------|------|---------|-----|
                   |EEPROM|PHY     |MAC     | FIFO |Interrupt| Link|
                   |Test  |Loopback|Loopback| Test |Test     | Test|
Adapter            |Test  |Test    |        |      |         |     |
-------------------|------|--------|--------|------|---------|-----|
PRO/1000 MF        |      |        |        |      |         |     |
Server Adapter     |Yes   |Yes     |Yes     |Yes   |Yes      |Yes  |
-------------------|------|--------|--------|------|---------|-----|
PRO/1000 MT        |      |        |        |      |         |     |
Server Adapter 	   |Yes   |Yes     |Yes     |Yes   |Yes      |Yes  |
-------------------|------|--------|--------|------|---------|-----|
Intel PRO/1000 MT  |      |        |        |      |         |     |
Dual Port	   |      |        |        |      |         |     |
Sever Adapter      |Yes   |Yes     |No      |Yes   |Yes      |Yes  |
--------------------------|--------|--------|------|---------|-----|
Intel PRO/100s     |      |        |        |      |         |     |
Server Adapter     |Yes   |Yes     |Yes     |No    |Yes      |Yes  |
-------------------|------|--------|--------|------|---------|-----|
Intel PRO/1000 XT  |      |        |        |      |         |     |
Network Connection |Yes   |Yes     |No      |Yes   |Yes      |Yes  |
-------------------|------|--------|--------|------|---------|-----|
Intel PRO/1000     |      |        |        |      |         |     |
CT Network         |      |        |        |      |         |     |
Connection 	   |Yes   |Yes     |Yes     |Yes   |Yes      |Yes  |
-------------------|------|--------|--------|------|---------|-----|
Intel PRO/1000 MT  |Yes   |Yes     |Yes     |Yes   |Yes      |Yes  |
Network Connection |      |        |        |      |         |     |
-------------------|------|--------|--------|------|---------|-----|
Intel PRO/1000 MT  |      |        |        |      |         |     |
Dual Port Network  |	  |	   |        |      |         |     |
Connection         |Yes   |Yes     |No      |Yes   |Yes      |Yes  |
-------------------|------|--------|--------|------|---------|-----|
Intel PRO/1000 MB  |      |        |        |      |         |     |
Dual Port Network  |	  |	   |        |      |         |     |
Connection         |Yes   |Yes     |No      |Yes   |Yes      |Yes  |
-------------------|------|--------|--------|------|---------|-----|


* Supported adapters and tests for Broadcom NIC diagnostics on Windows:

-------|--------|--------|------|--------|----|---------|--------|--------|----|----|
Adapter|Register|MII     |EEPROM|Internal|CPU |Interrupt|MAC     |PHY     |LED |ASF |
       |Test    |Register|Test  |Memory  |Test| Test    |Loopback|Loopback|Test|Test|
       |        |Test    |      |Test    |    |         |Test    |Test    |    |    |
-------|--------|--------|------|--------|----|---------|--------|--------|----|----|
5700   |Yes     |Yes     |Yes   |Yes     |Yes |Yes      |Yes     |Yes     |Yes |No  |
-------|--------|--------|------|--------|----|---------|--------|--------|----|----|
5701   |Yes     |Yes     |Yes   |Yes     |Yes |Yes      |Yes     |Yes     |Yes |No  |
-------|--------|--------|------|--------|----|---------|--------|--------|----|----|
5703   |Yes     |Yes     |Yes   |Yes     |Yes |Yes      |Yes     |Yes     |Yes |Yes |
-------|--------|--------|------|--------|----|---------|--------|--------|----|----|
5703s  |Yes     |No      |Yes   |Yes     |Yes |Yes      |Yes     |No      |Yes |Yes |
-------|--------|--------|------|--------|----|---------|--------|--------|----|----|
5704   |Yes     |Yes     |Yes   |Yes     |Yes |Yes      |Yes     |Yes     |Yes |Yes |
-------|--------|--------|------|--------|----|---------|--------|--------|----|----|
5751   |Yes     |Yes     |Yes   |Yes     |Yes |Yes      |Yes     |Yes     |Yes |Yes |
-------|--------|--------|------|--------|----|---------|--------|--------|----|----|
5721   |Yes     |Yes     |Yes   |Yes     |Yes |Yes      |Yes     |Yes     |Yes |Yes |
-------|--------|--------|------|--------|----|---------|--------|--------|----|----|
5708   |Yes     |Yes     |Yes   |Yes     |Yes |Yes      |Yes     |Yes     |Yes |No  |
-------|--------|--------|------|--------|----|---------|--------|--------|----|----|
5708s  |Yes     |No      |Yes   |Yes     |Yes |Yes      |Yes     |No      |Yes |No  |
-------|--------|--------|------|--------|----|---------|--------|--------|----|----|


* Supported adapters and tests for Broadcom NIC diagnostics on Linux:

-------|--------|--------|------|--------|---------|--------|--------|----|
Adapter|Control |MII     |EEPROM|Internal|Interrupt|MAC     |PHY     |LED |
Test   |Register|Register|Test  |Memory  | Test    |Loopback|Loopback|Test|
       |Test    |Test    |      |Test    |         |Test    |Test    |    |
-------|--------|--------|------|--------|---------|--------|--------|----|
5700   |Yes     |Yes     |Yes   |Yes     |Yes      |Yes     |Yes     |Yes |
-------|--------|--------|------|--------|---------|--------|--------|----|
5701   |Yes     |Yes     |Yes   |Yes     |Yes      |Yes     |Yes     |Yes |
-------|--------|--------|------|--------|---------|--------|--------|----|
5703   |Yes     |Yes     |Yes   |Yes     |Yes      |Yes     |Yes     |Yes |
-------|--------|--------|------|--------|---------|--------|--------|----|
5703s  |Yes     |No      |Yes   |Yes     |Yes      |Yes     |No      |Yes |
-------|--------|--------|------|--------|---------|--------|--------|----|
5704   |Yes     |Yes     |Yes   |Yes     |Yes      |Yes     |Yes     |Yes |
-------|--------|--------|------|--------|---------|--------|--------|----|
5751   |Yes     |Yes     |Yes   |Yes     |Yes      |Yes     |Yes     |Yes |
-------|--------|--------|------|--------|---------|--------|--------|----|
5721   |Yes     |Yes     |Yes   |Yes     |Yes      |Yes     |Yes     |Yes |
-------|--------|--------|------|--------|---------|--------|--------|----|
5708   |Yes     |Yes     |Yes   |Yes     |Yes      |Yes     |Yes     |Yes |
-------|--------|--------|------|--------|---------|--------|--------|----|
5708s  |Yes     |No      |Yes   |Yes     |Yes      |Yes     |No      |Yes |
-------|--------|--------|------|--------|---------|--------|--------|----|


======================================================================
NOTES FOR THE STORAGE MANAGEMENT SERVICE
======================================================================

* When using the Storage Management Service, the Systems Management
  Data Manager must first be stopped before Adaptec controllers are
  updated.

* Detailed information on the Storage Management Service is available
  in the Storage Management Service online help. After installing and
  launching Server Administrator, you can access the Storage Management
  Service online help by selecting the Storage or lower-level tree
  object and clicking the Help button on the global navigation bar.

======================================================================
NOTES FOR THE REMOTE ACCESS SERVICE
======================================================================

* This service is supported on PowerEdge 650, 700, 750, 800, 1600SC,
  1650, 1750, 1800, 1850, 2600, 2650, 2800, 2850, 4600, 6600, 6650,
  6800, and 6850 systems only. It enables remote access to a server
  that has lost its network connection or that has become
  unresponsive. In this release of Server Administrator, the Remote
  Access Service uses the following Remote Access Controllers (RACs):
  Dell Remote Access Card (DRAC) 4/I, DRAC 4/P, DRAC III, DRAC III/XT,
  Embedded Remote Access (ERA), or Embedded Remote Access
  Option (ERA/O).

* RACs also have their own CLI that is accessed through the "racadm"
  command. You can add racadm commands to a batch or script file to
  automate various user tasks. To limit the stress load on the managed
  system and RAC, you should add "sleep" or "delay" commands of one or
  two seconds between the individual racadm commands.

* DRAC 4 is not supported by the Server Administrator 4.1 CLI. For CLI
  DRAC 4 reporting and configuration, use the "racadm" command.

* Server Administrator 2.1 does not include software for DRAC II.
  However, the DRAC II software can be installed by either installing
  Server Administrator 1.8 or earlier and then upgrading to Server
  Administrator 2.1, or by installing Server Administrator 2.0 and
  then installing the DRAC II software separately from Server
  Administrator 1.8 or earlier.

  To install the DRAC II software for the managed system, run
  "setup.exe" from the "drac25\server" directory on the "Systems
  Management" CD (previously called the "Dell OpenManage Applications"
  CD").

  To install the DRAC II software for the management station, run
  "setup.exe" from the "drac25\clientms" directory on the "Systems
  Management" CD (previously called the "Dell OpenManage Applications"
  CD").

  Note:  The DRAC II stand-alone installer does not prompt the user
         to reboot the system. A manual reboot must be performed after
         installing the DRAC II software.

* After installing Internet Explorer 5.0 or later, you may notice that
  the automatic configuration and proxy setting information for each
  connection is separate from the same information used for the LAN
  connection. If you have both a dial-up and a LAN connection at the
  same time, Internet Explorer may block your access to the Internet.

  This blocking occurs because each connection in Internet Explorer
  5.0 uses its own automatic configuration and proxy settings. When
  you try to establish a PPP connection, Internet Explorer attempts
  to use the dial-up connection settings to access the Internet.

  You can find additional information about this issue in article
  Q236920, "Connections No Longer Use LAN Automatic Configuration
  and Proxy (Q236920)" in the Microsoft Knowledge Base (KB) at
  "support.microsoft.com".

  To correct this problem, you must apply Microsoft IE HotFix
  Q818060 or KB839571 to either Internet Explorer 5.01 SP2 or
  6.0 SP1. HotFix Q818060 and KB839571 are available on the
  "Systems Management Consoles" CD in the "\support\Windows\HotFix"
  directory. See the following Microsoft support articles for further
  instructions on applying this HotFix:

    (Windows 2000 Server) "http://support.microsoft.com?kbid=818060"
    (Windows 2003 Server) "http://support.microsoft.com/kb/839571"

  As explained in the Microsoft KB article, use the Registry
  Editor ("regedit.exe") to browse to the following key:

    HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion
    \Internet Settings\

  If it is not present, create a registry item called
  "DialupUseLanSettings" and set a value of "1". Make sure the value
  type is "DWORD".

  Note: HotFix Q818060 may still fail to install on Internet Explorer
  6.0 SP1. If the error "This update requires Internet Explorer 6.0
  SP1 to be installed" occurs, follow these instructions:

    1. Unzip "Q818060-Eng-IE6.zip".

    2. From a Windows command shell, enter "Q818060.exe /C" to
       extract the HotFix files to a directory.

    3. In the command shell, switch to the directory and then enter
       "ieupdate.exe Q818060".

    4. Launch Internet Explorer, open the "Help" menu, and select
       "About Internet Explorer". Verify that "Q818060" appears in
        the "Update Versions" field.

######################################################################
KNOWN ISSUES
######################################################################

This section provides information on open issues with this release of
Server Administrator.

======================================================================
ISSUES FOR SERVER ADMINISTRATOR RUNNING ON ALL SUPPORTED OPERATING
SYSTEMS
======================================================================

* Due to resource availability, inventory collection may terminate
  unexpectedly and restart.  If this occurs, the folder
  "C:\Temp\invcol" may be left as an artifact.  The presence of this
  folder does not affect functionality of the inventory collection.
  The folder may be deleted if desired. (138549)

* The Online Help for Server Administrator 2.1 should contain the
  following text related to the Demand Based Power Management feature
  in the BIOS Setup page:

  Demand Based Power Management minimizes wasted energy by dynamically
  changing processor performance or power states based on utilization.
  Click the following buttons to configure the feature:

  Enable - Enables configuration of the Demand Based Power Management.

  Disable - Disables configuration of the Demand Based Power
  Management. This is the default setting.

* When entering an IP address with 255 in the 4th term you
  will receive an "invalid IP address" error even if the address is
  valid. The error is correctly reported for class-C IP addresses.
  A popup occurs incorrectly on some valid class-A and class-B IP
  addresses ending in 255. To resolve this issue, choose another
  valid address that does not end with 255.

* After installing Server Administrator from the command prompt,
  issuing an "omreport", "omconfig" or "omdiag" command from the same
  prompt causes an error. You must open a new command prompt and issue
  commands from the new window.

* When installed on a system, some remote desktop tools redirect or
  lock serial ports. During such a scenario, the Serial Port
  Diagnostics will fail all tests. To resolve the issue, unlock the
  serial port using the remote desktop tool.

* If the command log page in the Server Administrator GUI displays an
  error message indicating that the XML is malformed, you must clear
  the command log from the CLI using the "omconfig system cmdlog
  action=clear" command.


* After an initial install of Server Administrator on the managed
  system, using IT Assistant to perform a Remote Server Administrator
  Command Line or Software Update task will fail on 64-bit extension
  operating systems.  To resolve the issue, reboot the managed system
  after the install.(144312)

* After a "Reset to Defaults" operation of the BMC Management
  controller, the first user configuration operation will fail if it
  is a single user configuration item (such as enabling or disabling
  a user or changing user name). Always change a combination of two
  user configuration items (such as enabling or disabling a user and
  changing user name) concurrently during your first configuration
  operation.(136599)

* On PowerEdge 2500 systems, the operation of the power button
  always synchronizes with the "System BIOS Setup". It may not
  correspond to the Server Administrator front panel display when the
  state is disabled within the BIOS setup.(138612)

* Due to network or system performance and depending on the level of
  activity, the Server Administrator logs may become too large and
  take a long time to load in the GUI. To resolve the issue, it is
  recommended that you limit the log file size to 1 MB or clear the
  logs periodically.(137680)

* On PowerEdge 750 systems, if you disable the Power button in
  Server Administrator, the system does not power cycle or power down
  in the event of system instability and/or blue screens. In such
  cases, you need to physically remove the power cord from the system
  to power down the unit. As the startup and recovery options in the
  operating system override those of Server Administrator, you need
  to configure them in the operating system to restart the system
  after a crash.

  NOTE: The above situation is applicable only when the "reboot"
  option in the startup and recovery options is disabled. If the
  "reboot" option is enabled, the system will automatically reboot
  and you will not be forced to shut down by removing the power cord.
  (126837)

* While browsing through IT Assistant, if the SNMP protocol is
  disabled and the CIM protocol is enabled, the redundancy status is
  shown as lost even though the system has full redundancy. To
  confirm the correct state of the system, use the Server
  Administrator user interface.

* On select PowerEdge x4xx and x5xx systems running the Red Hat
  Enterprise Linux operating system, issuing a host control command to
  shut down and power off the system may not shut down the system
  properly. This issue occurs when there are hung processes in the
  system preventing the operating system from shutting down the system
  before powering off. On a subsequent boot, you can safely ignore the
  following message if it appears on the system console:
  "Your server appears to have shut down unclearly. Press Y within 'n'
  seconds to force a file system integrity check".

* If you have a RAID 1 virtual disk on a CERC SATA 1.5/6ch
  controller, performing a Format or Split Mirror operation
  may fail. Dell is working to resolve this problem.

* On the "Server Preferences" page in the Server Administrator
  user interface, the "IP addresses to Bind to" option can either
  be set to bind all IPs addressed or a single IP address.

* When issuing the Server Administrator command line "omreport
  system version -outc <filename>", be sure to specify an absolute
  path name for the output file, for example, "c:\out.txt"; otherwise,
  the output file will be empty.

* Attempting to modify the BIOS setting ROMB (RAID on Motherboard) to
  "RAID" or "SCSI" may cause the Systems Management Data Manager
  to stop running. Setting it to "Off" does not affect the Data
  Manager. Modify the file "dctkst32.ini" under the directory
  "<OpenManageInstallPath>\omsa\ini" by changing the entries
  "BSETP.ROMBChannel.1" to "BSETP.ROMBChannel.2"
  and "BSETP.ROMBChannel.0" to "BSETP.ROMBChannel.1" to resolve
  this issue. Ensure that the change is done in this order to
  avoid confusion. Reboot the system for the changes to take effect.

* Issuing the "omreport system esmlog/alertlog/cmdlog -fmt tbl"
  command on the CLI can result in XML parsing errors if the size
  of the log is very large. Use the GUI or the "omreport system
  esmlog/alertlog/cmdlog" CLI command to view the contents of
  the log.(124997)

* When trying to create a new BMC user having a duplicate user name,
  an error message "Error! This function is not supported on this
  system" is displayed instead of indicating that a duplicate user
  name already exists.

* The following four hyperlinks on the "System-> System Summary" page
  of Server Administrator may not work under certain conditions on
  systems using Mozilla browsers: "System", "Main system
  chassis", "Network Data", and "Software Profile".

* When reinstalling or upgrading Server Administrator, all currently
  installed services including Array Manager will be replaced with
  the service version qualified with the Server Administrator product
  being installed. This behavior is generic across supported
  operating systems.

* For complex "omconfig" CLI commands that contain multiple commands
  in one command line, the CLI may report a success status for the
  command even if part of the command failed. To avoid this issue,
  run only one command per command line. The current settings can be
  confirmed by performing the corresponding "omreport" command.

* On Chinese and Japanese (double-byte) language systems, these
  elements may appear garbled:

  * Multibyte user names
  * Page title
  * Column headers
  * Button text on the "Alert Log" page

* When running Server Administrator on a system with a Traditional
  Chinese operating system, the Server Administrator pages are
  displayed in Simplified Chinese. To view Server Administrator in
  English, go to your browser language preference page and change
  the language to English.

* When running Server Administrator on a system with a non-English
  operating system, the e-mail attachments applications are to be
  executed for alert management.

* In Server Administrator, you must not open any saved log file (with
  .zip extension) with the Windows Server 2003 or Windows XP embedded
  "Compressed (zipped) Folder" utility. Extract the file using WinZip
  or a similar tool to view the complete content (text and images).

* After installing Server Administrator on certain systems, a second
  reboot may be required for updated BIOS settings to be properly
  displayed by Server Administrator.

* If you import an invalid root certificate into Server Administrator
  using "Preferences-> General Settings-> Web Server-> X.509
  Certificate" and try to log in to Server Administrator after
  restarting the web server, you get a blank page.

  To correct this issue, you must restore your original "keystore.db"
  file before importing a valid root certificate. To restore the
  "keystore.db" file, you must use both the basic operating system
  commands and the Server Administrator CLI. Perform the following
  steps from your operating system command line:

  1. Type:

     omconfig system webserver action=stop

  2. Locate the "keystore.db.bak" file. The default path is
     "C:\program files\dell\SysMgt\iws\config".

  3. Copy "keystore.db.bak" to "keystore.db".

  4. Type:

     omconfig system webserver action=start

* A temperature that drops below a minimum failure threshold does not
  cause a system reset even if this alert action is set.

* A reporting error, for the amount of memory enabled, may exist for
  the Level 2 (L2) cache memory when you view "Processor interface"
  for PowerEdge 6600 and 6650 systems. It may be incorrectly displayed
  as 256 K.

  If you purchased more than 256 K of L2 cache with your system, all
  of the L2 cache you have installed is fully enabled. The reporting
  error will be corrected in a future BIOS release for PowerEdge 6600
  and 6650 systems.

* Clicking the browser "Back" and "Refresh" buttons may not display
  the correct page with respect to the Server Administrator component
  tree, tabs, tab menus, or help as Server Administrator has been
  designed with limited functionality to reduce overhead. Full feature
  capabilities of the web browser such as "Back", "Refresh", and
  "Open in New Window" may not be supported.

  Example:

  1. Click "Main System Chassis" under "System Component Tree".

  2. Click "Fans" under "Main System Chassis".

  3. Click "Alert Actions" on the tab menu bar.

  4. Click the "Back" button on the browser.

  This action takes you to the "Fan Probes" page, leaving the tab
  menu bar unchanged. This action places the "Fan Probes" page
  under "Alert Actions" on the tab menu bar instead of under
  "Fan Probes".

* Selecting the boot sequence under the BIOS "Setup" tab does not
  re-enable boot devices that have been previously disabled in
  the System Setup Program.

* The links on the Server Administrator home page might lock up after
  repeated random clicking. To resolve this situation, refresh the
  browser by pressing <F5> or by clicking the browser "Refresh"
  button.

* All unsecure HTTP requests to Server Administrator receive an
  invalid response. Server Administrator runs only one instance of
  the web server, which is secure. Make all connections through
  https://<ip address> : <port number>. Any "http://<ip address>:
  <port number>" request for connection with the server receives an
  invalid response.

* If the browser used with Server Administrator indicates that it
  cannot display a page or perform an action, ensure that the browser
  is in online mode. To go online, perform the following:

  -  If you are using Internet Explorer, click "File" on the
     menu bar and deselect the "Work Offline" option. When "Work
     Offline" is selected, a check displays to the left of the option
     on the "File" menu.

* If Internet Explorer prompts you to "Work Offline", "Connect", or
  "Try Again", always select "Connect" or "Try Again". Do not select
  "Work Offline".

* When setting dates in the "Asset Information" section of the Server
  Administrator home page, the current time is appended to the date.
  When setting dates with the CLI, the appended time is noon.

* If Network Adapter Teaming is installed and enabled on your system,
  Server Administrator does not display the IP address or other
  connection-related data for the individual network adapters. The
  connection status and IP address belong to the virtual adapter
  created by the teaming software.

* For systems running a supported Red Hat Enterprise Linux operating
  system, kernel driver messages such as "AAC_ChardevOpen" are
  sometimes displayed in the console at the login prompt. These
  messages are displayed in the console when the driver initialization
  is delayed by the installation of Server Administrator services and
  can be safely ignored.

* On some systems, temperature probe values and settings are only
  supported for whole degrees, not tenths of a degree. On these
  systems, setting a fractional value for the minimum warning
  temperature threshold results in the set value being rounded down
  to the next whole number value. This behavior may cause the minimum
  warning threshold to have the same value as the minimum failure
  threshold.

* The Virtual Media test will not pass if the POST Results test is executed
  prior to it. This is due to the POST Result test disconnecting all open
  RAC sessions.

* When you upgrade Dell OpenManage�from versions 4.3 and above, to version 5.0,
  the Diagnostic Hardware Configuration History page may indicate
  that some devices were removed; or added and removed, even when your
  hardware configuration is unchanged. This discrepancy can be safely ignored.

======================================================================
ISSUES FOR SERVER ADMINISTRATOR RUNNING ON ALL MICROSOFT WINDOWS
OPERATING SYSTEMS
======================================================================

* Execute all Server Administrator CLI commands from a 32-bit Windows
  command prompt. Acceptable ways to access the 32-bit command prompt
  are by clicking "Start-> Programs-> Accessories-> Command Prompt"
  or by clicking "Start-> Run" and then typing "cmd.exe". Attempts to
  run the CLI commands from the DOS command "command.com" may produce
  unpredictable results.

* If the system running Server Administrator is also running the
  Dell|EMC(R) Navisphere(R) SAN Management application, you may
  experience problems while using the Navisphere application. If this
  issue occurs, upgrade the version of Java on the system to
  JRE 1.4.2.

* The Secure Port Server might hang on system startup if both
  Oracle and VERITAS(R) Backup Exec(TM) are installed on the
  system. To manually start the secure port server on a system running
  Windows, click "Start-> Programs-> Administrative Tools-> Service",
  and, then right-click "Secure Port Server" and select "Start".

* The Server Administrator web GUI may appear to hang if Server
  Administrator Diagnostics are run on a significantly large amount
  of SAS (Serial-Attached SCSI) hard drives at once. The OMSA CLI
  command "omdiag storage sasdevdiag" may end prematurely as well.
  This is caused by a default memory allocation limit of 64MB in the
  Java Runtime Engine (JRE) that Server Administrator uses. Stop the
  Secure Port Server service (or terminate the omaws32.exe process)
  and increase the memory allocated to the JRE by editing the file
  "omprv32.ini" and changing adding the following line to:

  Option=Xmx512M

  This file is typically located in:

  \Program Files\Dell\SysMgt\oma\ini. Then start the service. Note
  that this added memory will reduce available memory to other
  applications. As an alternative only run diagnostics on a subset
  amount of SAS drives at once.

======================================================================
ISSUES FOR SERVER ADMINISTRATOR RUNNING ON MICROSOFT WINDOWS 2003
OPERATING SYSTEMS
======================================================================

* Warning messages ("A provider, omprov, has been registered in the
  WMI namespace, Root\CIMV2\Dell, to use the LocalSystem account.
  This account is privileged and the provider may cause a security
  violation if it does not correctly impersonate user requests")
  may be displayed after installing Server Administrator. These
  messages can be ignored as the Managed Object Format file used to
  register the provider ("omprov") states that the provider only reads
  the inventory data; it does not perform any functions on the server
  that require user impersonation. (139526)

* When running Server Administrator on Windows 2003 Small Business
  Server Edition, the "Export" function will display the export file
  in the browser window, instead of prompting the user to "open" or
  "save" the export file.

* An error message ("The compressed (zipped) folder is invalid or
  corrupted") will be displayed when you perform the following
  actions in Server Administrator on Windows 2003 for x64 systems
  with Internet Explorer 6 Service Pack 1:

  1. Go to System -> Logs

  2. Select "Command," "Alert," or "Hardware."

  3. Click "Save As"

  4. Click "Open" in "File Download" message box.

  Additionally, the "Export" function in the Server Administrator
  GUI may not work. The root cause of both problems is the same.
  To resolve the issue, uncheck "Do not save encrypted pages to
  disk" under Tools-> Internet Options-> Advanced tab. For more
  information, see the following article on the Microsoft website:
  "http://support.microsoft.com/default.aspx?scid=kb;en-us;812935",
  "http://support.microsoft.com/default.aspx?scid=kb;en-us;141582"
  and "http://support.microsoft.com/default.aspx?scid=kb;en-us;144876".

* When running Server Administrator, crypt32.dll errors may be written
  to the OS Application Event log. This issue occurs due to the
  "Update Root Certificates" component, which is installed by default
  as part of Windows Server 2003 installation. For more information
  on this component and reasons for errors, see the
  following articles on the Microsoft website:

  "http://www.microsoft.com/technet/prodtechnol/windowsserver2003/
  technologies/security/ws03mngd/04_s3cer.mspx"

  "http://support.microsoft.com/default.aspx?scid=kb;en-us;317541"

  There are two options to avoid these errors from being written to
  the Event log:

  - Uninstall the "Update Root certificates" component as detailed
    in the first knowledge base article mentioned above.

    Note: This procedure may affect other programs as discussed in
          the article.

  - Install the Server Administrator certificate as a trusted
    certificate.

    Note: This procedure may still prompt you to accept the
          certificate when you log on to Server Administrator, but
          will prevent the crypt32 errors from being logged to the
          Event log.


======================================================================
ISSUES FOR SERVER ADMINISTRATOR RUNNING ON RED HAT ENTERPRISE LINUX
OPERATING SYSTEMS
======================================================================

* The Secure Port server may not start on Red Hat Enterprise Linux
  3.0, due to known issues with concurrent rpmdb access. There are
  two options to resolve this issue:
  - Update the following RPMs:

        popt-1.8.2-13.i386.rpm
        rpm-4.2.3-13.i386.rpm
        rpm-build-4.2.3-13.i386.rpm
        rpm-devel-4.2.3-13.i386.rpm
        rpm-libs-4.2.3-13.i386.rpm
        rpm-python-4.2.3-13.i386.rpm

  - Apply Red Hat Enterprise Linux 3.0 update 4 to the system.

* The Server Administrator may not start if a feature of the product
  is being executed and a Server Administrator installation or upgrade
  is taking place.

* When starting Server Administrator from the Red Hat Enterprise Linux
  console, kernel log messages appear. To suppress these messages,
  perform the following steps:

  1. Edit the "/etc/sysconfig/syslog" file and modify KLOGD_OPTIONS to
     KLOGD_OPTIONS="-c 4".

  2. Restart "syslog" by executing "/etc/init.d/syslog restart".

* When using the Mozilla browser on Red Hat Enterprise Linux operating
  systems, the font and type size on the Server Administrator global
  navigation bar appear different from the default font and type size
  that Server Administrator uses.

* On systems running Red Hat Enterprise Linux 4 Gold (Intel x86 and Intel
  Extended 64 bit architectures) with DRAC 4 installed, the CD device
  will be listed under a Tertiary Channel instead of the Primary Channel.
  This issue has been resolved in Red Hat Enterprise Linux 4 U2.

* On servers that contain dual-port Intel 82541 ASIC LOMs running the
  Linux operating system, with the network service down, the Offline Link
  test will fail for the first time on any port when the test is run
  simultaneously on both LOMs.

* In the initial release of Red Hat Enterprise Linux (Version 4), the
  snmp daemon will time-out when walking the network configuration section
  of the MIB II tree on systems running the Intel EM64T operating system.
  This results in missing data while trying to manage this server using
  Dell IT Assistant. This issue can be fixed by updating
  net-snmp-libs-5.1.2-11.EL4.6 found in Red Hat Enterprise Linux
  (Version 4) update 3.

======================================================================
ISSUES FOR SERVER ADMINISTRATOR RUNNING ON SUSE LINUX ENTERPRISE
SERVER 9 OPERATING SYSTEM
======================================================================

* Incorrect IP Address displayed in SNMP applications. There is a bug in
  net-snmp 5.1.3.1-0.6 RPM and earlier versions where the SNMP daemon provides
  an incorrect SNMP response to a request for a network interface address.
  For example, if a network interface has an IP address of 192.168.1.1, the
  SNMP daemon will provide an IP address of 192.168.1.1.0.0.0.0. This may
  have adverse affects when trying to manage the system and may affect
  Dell IT Assistant operations.
  To avoid this issue, update the net-snmp RPM to version 5.1.3.1-0.13 or
  later via YaST Online Update.

* On systems running SuSe Linux Enterprise Server 9 SP3, Server
  Administrator web interface may freeze when clicking on components
  in the tree view (left pane of the interface).

  To correct this issue, restart the connection service by running

      "srvadmin-services.sh restart" or
      "omconfig system webserver action=restart"

  from the command line. You must refresh the web interface and log
  back into Server Administrator to continue.

======================================================================
ISSUES FOR STORAGE MANAGEMENT SERVICE
======================================================================

The following are open issues regarding the Storage Management
Service.

----------------------------------------------------------------------
STORAGE MANAGEMENT SERVICE ISSUES FOR ALL OPERATING SYSTEMS
----------------------------------------------------------------------

* When issuing certain "omconfig storage" CLI commands with "Power
  User" privileges, the message "Error! User has insufficient
  privileges to run command: omconfig" may be displayed. You must be
  logged in as an Administrator to perform these actions.

* On a Windows Server 2003 system, it is strongly recommended that you
  update to Service Pack 1 or later.  Service Pack 1 is required to
  fully support SAS technology.

* On a Windows 2000 system, it is strongly recommended that you update
  to Service Pack 4 or later.  Service Pack 4 is required to
  fully support SAS technology.

* On a Red Hat Enterprise Linux 3.x system, Update 3 or later is
  required for Storage Management and Update 6 or later is required to
  fully support SAS technology.  Dell strongly recommends that you use
  the Red Hat Network (RHN) service to update your system software with
  the latest update package before deploying your system. Go to
  www.redhat.com to access the RHN service and download updates.

* Invalid "Format and Check Consistency" options are displayed
  for a regenerating virtual disk. When an array disk in a virtual
  disk is rebuilding, the virtual disk changes to a "Regenerating"
  state. The Format and Check Consistency operations should not
  be performed on a virtual disk that is in a Regenerating state.
  However, the task drop-down menu for a Regenerating
  RAID 1-concatenated virtual disk may display the "Format and
  Check Consistency" options. Dell is working to resolve this
  problem.

* If an array disk in a RAID 1-concatenated virtual disk fails,
  the virtual disk is in a "Degraded" state. Rebooting the system
  may cause the virtual disk to change to a "Failed" state yet the
  virtual disk is still fully operational and can be restored to "OK"
  status once a functional array disk is added back to the RAID-1 set.
  Dell is working to resolve this problem.

* Using the Storage Management Service "Advanced Create VDisk Wizard"
  may occasionally result in a vertical scrollbar of less than normal
  width. If this occurs, resizing the Server Administrator window will
  cause the vertical scrollbar to be redrawn correctly.

* If a virtual disk, using the GUI, is renamed with a name containing
  multiple blank and consecutive spaces, the name is truncated to a
  single space after "Apply" is clicked.

* When the "Open in a New Window" option is selected in the Storage
  Management Service Advanced Create VDisk Wizard, the current page
  is opened in a new window, rather than launching the selected
  option.

----------------------------------------------------------------------
STORAGE MANAGEMENT SERVICE ISSUES FOR RED HAT ENTERPRISE LINUX
OPERATING SYSTEMS
-----------------------------------------------------------------

* If an array disk in a RAID 1-concatenated virtual disk fails,
  the virtual disk is in a Degraded state. The Check Consistency
  operation should not be performed on a virtual disk while it
  is in a degraded state. However, the task drop-down menu
  for a degraded RAID 1-concatenated virtual disk may display the
  "Check Consistency" option. Do not perform a consistency
  check until after appropriate actions are performed to restore the
  virtual disk. Dell is working to resolve this problem.

* With Chinese or Japanese language browser settings, using the
  Storage Management Service Advanced Create VDisk Wizard may
  occasionally result in text overflowing the bottom of the
  side-by-side blue text boxes.

======================================================================
ISSUES FOR DIAGNOSTICS SERVICE
======================================================================

The following are open issues regarding Diagnostics service.

----------------------------------------------------------------------
ISSUES FOR ALL OPERATING SYSTEMS
----------------------------------------------------------------------

* The media test for a PowerVault-110T-LTO3 can take an excess of
  20 hours to execute. (140205)

* Running the Tape Self-Test and Media Test on LTO3 WORM (write-once,
  read-many) media will make the media unusable after these tests are
  executed.

* Current DIMM status will not be reported by the Memory Pattern Test.
  To ensure that the status of the DIMM is reported correctly,
  first re-enumerate the list of devices and then check DIMM status.

* Do not update the NIC drivers while running the tests. If you do,
  tests may produce unexpected results.

* When installed on a system, some remote desktop tools redirect or
  lock serial ports. The Serial Port Diagnostics will fail all tests,
  during such a scenario. To resolve the issue, unlock the serial port
  using the remote desktop tool. (144731)

* Running NIC diagnostics which disconnect the network may also cause
  a Server Administrator user session to be logged out and disruption
  of applications that require or use a network connection. See the
  Diagnostics online help for details on NIC diagnostics behavior.

* During the Autoloader Self-test, the Tape Device Self-test displays
  a warning ("Data on the media will be destroyed!") at the start.
  This message applies specifically to tape drives and is not valid
  for autoloaders.

* If you are using Server Administrator on a system that is completely
  isolated on a network (cannot ping any other systems) and the
  "Automatically detect settings" check box is selected in the Local
  Area Network proxy settings page of Internet Explorer version 5.5
  or earlier, you may experience performance problems in the
  Diagnostic Service. To correct this issue, deselect the
  "Automatically detect settings" check box.

* Depending on the interval between Server Administrator startup and
  login, the "Diagnostics Service" tab may not be available in Server
  Administrator or listed on the "Health" page.
  Diagnostics Service waits for the Server Administrator to start
  completely before enumerating (scanning system for available devices
  to diagnose). If you press <F5> to refresh, the "Diagnostics
  Service" tab displays when enumeration is complete. This process can
  take several minutes on some systems. The "Diagnostics Service Link"
  does not work until the "Diagnostics Service" tab is displayed.

* If your hard drive becomes full (no space left) and you run
  diagnostics on the managed system, Server Administrator does not
  show progress for the running diagnostics; instead, you see a blank
  page. You cannot cancel the tests because the blank page is shown
  instead of the progress page with the "Abort" button. To correct
  this issue, you must free up some space on your hard drive, reboot
  the system, and run diagnostics again.

* Scheduled diagnostics are only initiated if the web server is up and
  running. Any tasks scheduled in the past will not run until the
  next run time.

* If the Secure Port Server is shut down when tests are executing
  (from the GUI or CLI), the tests might not complete because the JVM
  in which they were executing shuts down along with the server. This
  behavior is undefined.

* Spare bank memory is not supported on some systems (such as a
  PowerEdge 2550). As a result, the spare bank fail-over state cannot
  be enabled. On such systems, the Instrumentation Service does not
  provide a way to check the fail-over state. The Memory Pattern test
  may pass on such systems because of Error Correcting Codes (ECC).

* Disconnecting the USB cable when running a diskette test on a USB
  diskette drive may produce unexpected results. On systems running
  Red Hat Enterprise Linux, the operating system may stop responding.
  On systems running Windows, the test may never complete.

* Port 8000 is the default Remote Method Invocation (RMI) Registry
  port used by the Diagnostic Service. Setting this to another port
  number, which is already in use, does not produce a warning. If port
  8000 is already used by another application, the Diagnostic Service
  might not start.

  To correct this issue, make sure that port 8000 is free, or modify
  the "RMI_PORT" value in "DiagnosticSettings.properties" (installed
  in <installation dir>/openmanage/oldiags/lib) and restart the Secure
  Port Server.

* Parallel port diagnostics only support base address 0x378h.

* When a device is removed from the system or disabled from BIOS and
  a re-enumerate is performed, or when the system comes up, the
  device name and description of the removed hardware on the
  "Diagnostic Hardware Change History" page may display incomplete
  information.

* On Chinese and Japanese language systems, double-byte characters in
  the edit boxes may appear garbled. To correct this issue, change the
  browser character coding to ISO-8859-1.(141691)

* If the RMI port is changed in the "Diagnostic Application Settings"
  page ("Preference-> Diagnostics"), the change does not take effect
  until the Secure Port Server is restarted. However, there is no
  option to restart the Secure Port Server from the "Diagnostics
  Application Settings" page.

  To correct this issue, restart the Secure Port Server manually
  using the Windows Services or the "service omawsd restart" command
  on systems running Red Hat Enterprise Linux.

* Running Broadcom diagnostic tests on multiple NICs may generate
  intermittent failure results. If you encounter this error condition,
  select and run Broadcom diagnostic tests on one NIC at a time to
  obtain correct results.

* Onboard SATA controllers are shown as IDE controllers. Online-help
  will not contain any reference to SATA devices.

----------------------------------------------------------------------
ISSUES FOR WINDOWS OPERATING SYSTEMS
----------------------------------------------------------------------

* After installing the Server Administrator Diagnostic Service or
  restarting the Secure Port Server service, the following errors
  are logged in the Event Viewer System Log by the Removable Storage
  Service.

  "Type: Error, Source: DCOM"
  "Type: Error, Source: Removable Storage Service"

  These entries are logged because the Diagnostic Service must stop
  the Removable Storage Service, to enable scanning of the system for
  tape devices on which to perform diagnostics. After performing the
  scan, the Removable Storage Service is restarted.

* Wait for 30 seconds before starting the Secure Port Server or re-
  enumerating from the "Diagnostic Selection" page, if any one of
  the following circumstances apply:

  - Network adapter is disabled or enabled.
  - Diagnostics are run and the Secure Port Server is restarted.

* The network icon in the system tray notification area displays a
  red X when you run network diagnostic tests on Microsoft Windows
  2003 with network teaming enabled. The red X indicates that the
  network card is functioning improperly. Ignore this message as it
  is a false warning. Your network card is functioning properly
  irrespective of the status displayed on the system notification
  tray. Dell engineering has investigated that this invalid warning
  occurs in Microsoft Windows 2003,  when the network interface is
  taken offline and brought back online.  For more details on how to
  force a status update of the tray icon,  see the Microsoft
  Knowledge Base article 899759.
  "(http://support.microsoft.com/default.aspx?scid=kb;en-us;899759)"

* When the simultaneous connections to port 8000 are in excess,
  your webserver may not respond until all the connections are
  serviced. To avoid congestion of port 8000, it is recommended that
  you use firewall security to block unknown ip addresses from
  accessing port 8000.

* When the Memory Pattern Test is run on any system with memory greater
  than 2 GB and the pagefile size is set to be managed by the operating
  system for one or more drives, the test returns the warning message:
  "The test could not allocate enough memory to run. Verify that the
  Virtual Memory Paging file is larger than the total physical memory
  installed in the system."

* On systems running a Windows Operating System, HDDs connected to an
  on-board SATA controller will be shown as IDE Disks and the test
  available will be shown as IDE Hard Disk Test.


----------------------------------------------------------------------
ISSUES FOR RED HAT ENTERPRISE LINUX OPERATING SYSTEMS
----------------------------------------------------------------------

* Running the CD/DVD diagnostics on an audio CD in a bus-powered USB
  CD drive will cause the system to hang. This issue is caused due to
  a known problem with the USB driver that is installed with Red Hat
  Enterprise Linux 3 Gold. This issue has been resolved in the Red Hat
  Enterprise Linux 3 Update 2.

* The user may see a warning message ("Warning: locate: could not open
  database /var/lib/slocate/slocate.db no such file or directory")
  when "Secure Port Server" is not running and the "omdiag" command is
  run on systems running Red Hat Enterprise Linux. This issue occurs
  if Server Administrator is installed on a system freshly installed
  with Red Hat Enterprise Linux as the slocate database is not created
  during the installation. To avoid  seeing the warning messages, run
  the "updatedb" command and then run the "omdiag" command.(137670)

* When re-enumeration is in progress, do not restart the Secure Port
  Server. If you restart the Secure Port Server during re-enumeration,
  it may not respond properly, and you will need to restart it again.

* The Intel NIC description may have some extra trailing characters on
  the Diagnostics selection page on systems running the Red Hat
  Enterprise Linux operating system. This issue does not impact the
  NIC functionality.(137194)

* Running the CD/DVD Read Exerciser test on a bad CD medium may cause
  the test to run for a longer than normal duration. To shorten the
  test duration, run the test with the "Halt Execution of Test on
  First Error" option selected or in "Quick Test" mode from the
  "Diagnostic Test Execution Settings" page. The test can also be
  aborted by clicking the "Abort" link in the "Diagnostic Status"
  page.

* Connecting or removing USB or CD/DVD devices from Red Hat
  Enterprise Linux systems, while the enumeration is in progress,
  may cause the system to hang.(141704)

* The following error messages may be displayed on the console and
  /var/log/messages when the snmp daemon is started:

  "audit(1115069711.646:0): avc: denied {write} for pid=5985
   exe=/usr/sbin/snmpd name=snmpd.log dev=sda3 ino=572045
   scontext=root:system_r:snmpd_t tcontext=root:object_r:var_log_t
   tclass=file"

   "audit(1115069711.829:0): avc:  denied  {read append} for pid=5987
    exe=/usr/sbin/snmpd name=snmpd.log dev=sda3 ino=572045 scontext=
    root:system_r:snmpd_t tcontext=root:object_r:var_log_t tclass=file"

   This happens because both "procfgd" and "snmpd" need to access
   the "/var/log/snmpd.log" log file in Red Hat Enterprise Linux
   version 4. The log file has a SELinux security context that renders
   it inaccessible to "snmpd". To resolve the issue, perform either
   one of the following actions:

   Restore the log's security context directly:
   "chcon user_u:object_r:snmpd_log_t /var/log/messages"

   OR

   Remove the log and allow snmpd to recreate it:
   "service procfgd stop
    service snmpd stop
    rm -f /var/log/snmpd.log
    service   snmpd start
    service procfgd start" (14265)

* Intel PROSet management application is no longer required to be
  installed for Intel Network Interface diagnostic tests in Linux.

* If tapeware is installed, the OpenManage service may fail to start.
  In this case, delete the softlink entry
  /lib/libstdc++-libc6.2-2.so.3 and restart your system.
  Contact your Tapeware support vendor for a resolution to this problem.

* ICH7R IDE controllers are not supported. Running tests on this
  controller or the devices connected to it may cause unexpected behavior.

* If a device is idle and is not using its IRQ, the PCI Configuration
  test may report the device as being disabled.

* When you run a SCSI Communication test, on a channel that has an
  LTO3 tape drive connected to it, and perform a backup simultaneously
  using 'tar commands', the backup operation may fail.
  Ensure that backup or restore operations are not in progress
  before running the SCSI Communication test.

* When the Yosemite backup software is installed on a system that
  has a tape changer, SCSI Communication tests and tape tests may fail
  to complete. Ensure that the Yosemite backup software service is
  stopped before running these tests."


======================================================================
ISSUES FOR REMOTE ACCESS
======================================================================

NOTE: The Remote Access Service is supported on PowerEdge 650, 700,
      750, 800, 1600SC, 1650, 1750, 1800, 1850, 2600, 2650, 2800,
      2850, 4600, 6600, 6650, 6800, and 6850 systems only.

The following subsections list the currently known issues regarding
implementation and operation of your RAC and the Remote Access Service
in Server Administrator.

----------------------------------------------------------------------
ISSUES FOR THE DRAC 4
----------------------------------------------------------------------

* Perform the following steps if you do not see the "Remote Access
  Controller" properties tab in the Server Administrator user
  interface, after installing it on a system with DRAC 4:

  1. Make sure that the "Remote Access" service is running.

  2. Refresh the Server Administrator user interface.

    If the "Remote Access Controller" properties tab still
    does not appear:

    - Close the Server Administrator  user interface.

    - Restart the "Systems Management Data Manager" service.

    - Restart the "Secure Port Server" service.

    - Open the Server Administrator user interface and log in.

* When connecting to a remote DRAC 4 using a Mozilla web browser,
  the Virtual Media feature may not be available. The browser
  displays the error: "Virtual Media Plug-in is not installed or
  running". This issue is caused by new Java applet security
  features of Mozilla 1.7.3 and newer. Perform the following steps to
  permanently authorize the applet for that specific browser:

  1. Log in to DRAC 4 and navigate to the "Properties" page.

  2. Change the Web address in the browser window from
     "https://<DRAC4-IP-address>/cgi/main" to
     "https://<DRAC4-IP-address>/rac4vm.xpi", and press Enter.

     Mozilla prompts you with an "Opening rac4vm.xpi" dialog,
     allowing you to save the file to your local file system.

  3. Click "OK" and save the file to a temporary location (should
     be your home directory, by default).

  4. After saving the file, close the browser.

  5. Restart the browser, and specify the Web address of the
     "rac4vm.xpi" file (for example:  file:///root/rac4vm.xpi).

  6. Mozilla presents you with the "Software Installation" dialog:
     Click the "Install" button to continue.

  7. After installation completes, close and restart the browser.

  8. Now, log in to DRAC 4, and navigate to the Virtual Media link.
     The plug-in is installed and ready to use.

  9. At this point, delete the "~/rac4vm.xpi" file.

* The cfgDNSServer1 and cfgDNSServer2 properties of group
  cfgLanNetworking may be set to identical values while swapping
  addresses. Some performance may be lost temporarily during the
  swapping. The cfgLanNetworking group is configured using the
  "racadm config" command.(132894)

----------------------------------------------------------------------
ISSUES FOR DRAC III, DRAC III/XT, ERA, AND ERA/O
----------------------------------------------------------------------

* Remote Access Dial-Up Settings: If you change a DRAC III modem
  "Dial Mode" setting to "Tone" or "Pulse" using Server Administrator,
  IT Assistant displays the opposite setting.

----------------------------------------------------------------------
ISSUES FOR ALL OPERATING SYSTEMS
----------------------------------------------------------------------

* Server Administrator user interface and commands related to "local
  authentication enable" are not applicable for RAC firmware 3.20.
  The Active Directory authentication feature replaces "local
  operating system authentication" feature in this version of
  firmware. Due to this change, the following commands will return
  errors:

  "racadm localauthenable"
  "omconfig rac authentication"

* Due to the fluctuations in the watchdog timer, the "Last Crash
  Screen" may not be captured when the Automatic System Recovery is
  set to a value less than 30 seconds. To ensure correct functioning
  of the Last Crash Screen feature, set the System Reset Timer to at
  least 30 seconds.

* The cfgDNSServer1 and cfgDNSServer2 properties of group
  cfgLanNetworking may be set to identical values while swapping
  addresses. Some performance may be lost temporarily during the
  swapping. The cfgLanNetworking group is configured using the
  "racadm config" command.(132894)

* The remote access controller uses FTP protocol to perform some of
  the Dell OpenManage commands. If a firewall is installed in the
  system, it may cause these commands to fail.

  The following Server Administrator CLI commands use FTP protocol to
  communicate with the RAC:

  "omconfig rac uploadcert"
  "omconfig rac generatecert"
  "omupdate racfwupdate"

  The following racadm commands use FTP protocol to communicate with
  the RAC:

  "racadm sslcertupload"
  "racadm sslcsrgen"
  "racadm fwupdate"

* If the RAC configuration is reset to factory defaults using the
  "racadm racresetcfg" command, the RAC configuration tab in Server
  Administrator does not reflect the reset configuration settings
  until the system reboots. Also, the RAC configuration page in
  Server Administrator cannot be used to make any configuration
  changes until the system reboots.

* The RAC does not support local RAC user IDs with special
  characters. When adding a local RAC user, use only alphanumeric
  characters for the user name.

* While the RAC is resetting, the Instrumentation Service cannot
  read sensor data for certain systems. As a result, the voltage,
  temperature, and other probes may not be visible on the Server
  Administrator home page until the RAC has completed resetting.

* The RAC may not send traps when your system is locked up. To enable
  traps to be sent when the system is locked up, you must configure
  the watchdog timer using the Server Administrator GUI. In the Server
  Administrator GUI, click the "Properties" tab and ensure that
  "Auto Recovery" is selected. The default value of the "Action On
  Hung Operating System Detection" setting is "None". "None" indicates
  that detection will not be performed.

* RAC firmware 2.0 and higher does not support passwords with special
  characters (nonalphanumeric) only for RAC user IDs logging in using
  the web-based interface (with Local RAC Authentication). If you
  created RAC user IDs using previous versions of the firmware or if
  you created user IDs using Server Administrator that is running
  version 2.0 firmware on the managed system, you cannot log in to the
  RAC.

  Use one of the following four methods to correct this issue:

  - Change your passwords before updating the firmware.

  OR

  - Use the following CLI command to change the password:

    "omconfig rac users username=xx userpassword=yy"

    where "xx" is the original userid and "yy" is the new password.

  OR

  - Change the password through Server Administrator using the "User"
    tab. Ensure that the check box to change the password is checked.
    Enter a new password, and then enter it again to validate the
    change.

  OR

  - Use the racadm utility to change the password:

    "racadm config -g cfgUserAdmin -o cfgUserAdminPassword
    -i <usr_index> <new_pwd>"

    where <usr_index> is the index of the user database entry to be
    modified and <new_pwd> is the new password.

* Depending on your network and proxy configurations and whether you
  are using Mozilla browser, you may need to
  enter the exact IP address of the RAC controller you are trying to
  access in the "No Proxy for" field of your browser.

  Perform the following steps:

  1. Open your Mozilla browser.

  2. Click "Edit".

  3. Click "Preferences ...".

  4. Click "Advanced" in the left sidebar.

  5. Click "Proxies" in the left sidebar.

  6. Enter the RAC IP address in the "No Proxy for:" field.

  7. Click "OK" and then close the browser.

* If the out-of-band RAC user interface was spawned off from the
  Server Administrator home page with a Mozilla browser, strings with
  extended ASCII characters may not display correctly in certain
  languages. This issue occurs because the browser is set to the UTF-8
  character set by Server Administrator. To correct this issue, change
  the browser character coding to ISO-8859-1. For Japanese and
  Chinese, UTF-8 is the correct encoding for RAC pages.

* When using Mozilla 1.6 to view the RAC web user interface, you must
  adjust your cookie settings to "Enable all cookies" by going to
  the menu options "Edit-> Preferences-> Privacy & Security->
  Cookies" and then selecting "Enable all cookies". If you do not make
  this adjustment, you will not be able to log in to the web
  interface, and you will receive a message indicating that your
  user name and password are incorrect.

----------------------------------------------------------------------
ISSUES FOR WINDOWS OPERATING SYSTEMS
----------------------------------------------------------------------

* A dial-up network connection to the remote access controller is
  established by the RAC managed system software installer. The RAC
  software will not work properly if this dial-up connection is
  deleted or if a proxy is set up in the Internet settings. An
  InstallPPP utility is provided with the RAC software to restore the
  RAC PPP connection. This utility can also correct Internet
  connection problems with proxy server settings, when using the
  Windows 2003 operating system. You can run the utility from the
  Windows command prompt with the argument "CreateRACConnection" as
  shown below:

  c:\>installPPP CreateRACConnection

* Applications that use InstallShield 3.x to install software may take
  longer to install if RAC Services are running. To reduce the
  software installation time, stop RAC Services before performing the
  installation. You must restart RAC Services after the installation
  is complete.

* Due to functional details that are specific to Windows Dynamic DNS
  servers, the RAC internal PPP IP address is broadcast to the Dynamic
  DNS service on servers running Windows. The Dynamic DNS service
  stores that particular IP address in its DNS look-up table and
  associates it with the name of the system that hosts the RAC. This
  action causes problems with Active Directory under Windows. The
  default value for a RAC's internal PPP IP address is
  192.168.234.235, but the address can be changed by the user. This
  issue is a known problem, and there is an article and a hot fix
  available from Microsoft. The Knowledge Base article number is
  Q292822. Downloading the hot fix and implementing the steps in the
  article solve the problem.

* If you have used the "Systems Management Consoles" CD version 3.1,
  or earlier, to install RAC management station software on any system
  running a Windows operating system, you must remove any previous
  versions of the RAC management station software before installing a
  later version of the RAC management station software.

  To remove the RAC management station software on Windows, perform
  the following steps:

  1. Insert the "Systems Management" CD into the CD drive.

  2. When the installation application starts, click "Exit".

  3. Open a command shell window:

     a. Click the "Start" button, and then click "Run".

     b. In the "Run" dialog box, type the following command and then
        press <Enter>:

        cmd

  4. Start the Install Shield uninstallation program to remove
     software:

     a. In the command shell window, type the following line
        (replacing x: with the actual drive letter of your CD drive,
        such as d:):

        x:\rac20\mtpkg\setup.exe

     b. Select "Remove", and then click "Next".

     c. Click "OK".

     d. Click "Finish".

  5. Close the command shell window.

* On systems running Windows, the RAC installation process requires a
  virtual modem connection named RACPORT to communicate between the
  operating system and the RAC. When any modem is added to the system,
  the operating system automatically creates a virtual fax
  device icon in the printers folder. The fax icon is not used by the
  RAC and can be deleted or ignored.

* The mouse movement on a local system may appear jerky and erratic
  during console redirection. This behavior is evident especially when
  using menus or opening windows.

* Resizing the Windows desktop to a resolution of 640 x 480 causes
  some information to not be visible in the browser window when using
  the RAC web-based interface. This issue occurs in Internet Explorer.
  To view a screen in its entirety when using a resolution
  of 640 x 480, you must enlarge the browser window.

* While installing applications such as SQL Server 2000,if the RAC
  device (PCI Function 0, PCI Function 2 and RAC Virtual
  UART Port) is disabled and the RAC service is running, you may
  experience problems such as an application hang. To successfully
  install these applications you can either re-enable the driver else
  you can stop the service.(129915)

----------------------------------------------------------------------
ISSUES FOR RED HAT ENTERPRISE LINUX OPERATING SYSTEMS
----------------------------------------------------------------------

* While installing the Dell OpenManage systems management applications
  through the Nautilus File Manager, you must use the "Run" button and
  not the "Run In Terminal" button after choosing the "start.sh"
  script from the File Manager's file list. Use the "Run In Terminal"
  button for applications that do not open a window of their own (the
  "start.sh" script opens its own window). If you choose "Run In
  Terminal", you must restart the racvnc service after installing
  Dell OpenManage systems management applications by typing the
  following command:

  "service racvnc restart"

* When using Console Redirection on a managed system running Red Hat
  Enterprise Linux, the focus (cursor moved back over an object)
  follows the cursor. Occasionally, the text windows in Console
  Redirection lose focus. Before attempting to type in a text window
  in a Console Redirection window, click the mouse in the text
  window's spacebar or top menu bar to ensure that your target text
  window has the focus on the correct window or application that you
  are attempting to use.


######################################################################

Information in this document is subject to change without notice.
(C) 2006 Dell Inc. All rights reserved.

Reproduction in any manner whatsoever without the written permission
of Dell Inc. is strictly forbidden.

Trademarks used in this text: "Dell", "PowerEdge", "PowerVault", and
"Dell OpenManage" are trademarks of Dell Inc.; "Intel" is a registered
trademark of Intel Corporation; "Microsoft", "Windows Server", and
"Windows NT" are registered trademarks of Microsoft Corporation;
"Red Hat" is a registered trademark of Red Hat, Inc. "EMC" and
"Navisphere" are registered trademarks of EMC Corporation; "VERITAS"
is a registered trademark and "Backup Exec" is a trademark of VERITAS
Software Corporation.

Server Administrator uses the OverLIB JavaScript library. This
library can be obtained from "http://www.bosrup.com/web/overlib/".

Other trademarks and trade names may be used in this document to refer
to either the entities claiming the marks and names or their products.
Dell Inc. disclaims any proprietary interest in
trademarks and trade names other than its own.

January  2006
