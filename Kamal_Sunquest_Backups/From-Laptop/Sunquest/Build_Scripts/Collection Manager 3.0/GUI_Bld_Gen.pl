#!/usr/bin/perl -w
#=========================================================================
#  (c) COPYRIGHT, 2005,
#  Misys Helathcare Systems, Inc., as an unpublished work.
#  THIS IS A CONFIDENTIAL WORK OF AUTHORSHIP SUBJECT
#  TO LIMITED USE AGREEMENTS AND IS A TRADE SECRET WHICH IS
#  THE PROPERTY OF MISYS HEALTHCARE SYSTEMS, INC. ALL USE,
#  DISCLOSURE AND/OR REPRODUCTION NOT SPECIFICALLY AUTHORIZED
#  IN WRITING BY MISYS HEALTHCARE SYSTEMS, INC.
#  IS PROHIBITED. All rights reserved.
#
#=========================================================================
#  OMake_Bld_Gen.pl
#  Performs build using omake & also copies files to its target directory
#  by pulling all the necessary data from the GUI.cfg file
#
# Usage:
#  
#
# Returns:
#  Error messages will be sent to STDOUT and STDERR
#
# Processing:
#
# Caveats:  
#   
#
#=========================================================================
# Edit history:
#
#	Initial creation:	Sharad Agarwal        10/19/2006 
#
#=========================================================================

#(Always use 'strict' unless you have a VERY good reason not to)
use strict;
use Cwd;
use File::Glob;
use File::Basename;
# Commented by Sharad Agarwal on 09th March 2007
#use Misys::SendMail;
use Config::IniFiles;

# Added by Saju as on 03/01/2007 (DD/MM/YYYY)
use File::Path;

# Config file used for this script
my $cfgfile = "GUI.cfg";
my ($file,$list,@temp,$i);
my @data = ();
my $count = 0;
my $root_path = 'C:\\';
my $dir = getcwd;
my $command_line;
my ($result,$log_details);
my ($command_exec, $name);
my $bld_fail = 0;
my @config_data;
my ($target_file, $source_file, $target, @list_Files, @cfgsecs_cc_build);
my ($prod, $buildDir, $log_file, $log_error);
my $command;
my $file_del;
# Commented by Sharad Agarwal on 09th March 2007
#my $Email_flag = 1;
my ($build_value, $cfg_ref, $Web_value);
my %cfg = ();

# Added by Sharad Agarwal 0n 14th Nov. 2006
# Commented by Sharad Agarwal on 09th March 2007
#my @email_list = (); # For storing the email list from the config file.
my @file_output; # It stores the log file data for the body of mail.
# Commented by Sharad Agarwal on 09th March 2007
#my ($sm, $subject, $email_id); #sm is the object of Sendmail and $subject is for manage subject text.
my ($user_Name, $user_domain, $serverName);

#============================================================================#
sub get_timestamp {
#  This function gives the currrent date and time.
#============================================================================#  
  my ($sec, $min, $hr, $day, $month, $year) = (localtime (time))[0 .. 5];
  return (sprintf("%04d/%02d/%02d %02d:%02d:%02d",
            ($year + 1900), ($month + 1), $day, $hr, $min, $sec));
}

=put
# Commented by Sharad Agarwal on 09th March 2007
#===========================================================================
sub send_email
# Added by Sharad Agarwal 0n 14th Nov. 2006
# This function is used for composing mail and send it to the given 
# addresses in config file
#===========================================================================
{
  if (scalar(@email_list)!= 0)
  {
    $sm->setDebug($sm->ON);
    $sm->setDebug($sm->OFF);
    $sm->From($email_list[0]);
    $sm->Subject($subject);
    my $recipient = join(',', @email_list);
    $sm->To(@email_list);
    my $body = join("\n", @file_output); 
    $sm->setMailBody($body);
    if ($sm->sendMail() != 0) {
      print $sm->{'error'}."\n";
      exit -1;
    }
  }
  else
  {
    print "Unable to send an Email. No mailing list provided.";
  }
}

#=================================================================================
sub get_Email_List
# Added by Sharad Agarwal 0n 14th Nov. 2006
# This function gives all the mail addresses from the config file.
#=================================================================================
{
    #print "Email List : $cfg{'EmailAddress'}\n";
    @email_list = split /,/, $email_id;
}
=cut

#============================================================================#  
sub process_data {
#   Process the data which we read from config file.
#============================================================================#
  for $i (0..(scalar(@data)-1))
  {
    $command = $data[$i][0];
    #********************************************************************************
    if ( uc($command) eq "OMAKE")
    {
    # Comment added by Sharad Agarwal on 04th Jan 2007
    # If the first parameter is omake in the input file (GUI.cfg)
    # The config file should contain in the format;
    # Ex: omake,C:\Level1\,abc.mak
    #********************************************************************************
      chdir($root_path);
      $dir = getcwd;
      chdir($data[$i][1]);
      $dir = getcwd;
      print("\n\nCurrent Dir : $dir\n");
      $command_exec = 'omake -f '.$data[$i][2].' -b " " -d -v';
      $log_details = "Error : Command failed for $command_exec \n";
      result();
    }
    #********************************************************************************
    
    
    #********************************************************************************
    if ( uc($command) eq "COPY")
    {
    # Comment added by Sharad Agarwal on 04th Jan 2007
    # If the first parameter is COPY in the input file (GUI.cfg)
    # It is used for copying only the files in the source directory.
    # The config file should contain in the format;
    # Ex: copy,C:\Level1\abc.dll,P:\Level1\Level2
    #     copy,C:\Level1\*.*,P:\Level1\Level2
    #     copy,C:\Level1\*.css,P:\Level1\Level2
    #********************************************************************************
      $source_file = $data[$i][1];
      
      # Added by Saju as on 03/01/2006 (DD/MM/YYYY)
      $source_file =~ s/\\/\//g; # Convert all backslash to slash 
      $source_file =~ s/[\\\/]$//; # Remove the trailing slash or backslash
      $source_file =~ s/\s+/\\ /g;
      # End
            
      $target_file = $data[$i][2];
      
      # Added by Saju as on 03/01/2006 (DD/MM/YYYY)
      $target_file =~ s/\\\s/ /g;  # Remove '\' followed by space with a space
      $target_file =~ s/\s+$//;    # Remove the trailing spaces
      $target_file =~ s/[\\\/]$//; # Remove the trailing slash or backslash
      # End
      
      # Added by Sharad on 07th Feb 2007
      mkpath([$target_file], 0, 0777) if (!-d $target_file);
      
      @list_Files = glob($source_file);
      $count = scalar(@list_Files);
      foreach $name ( @list_Files )
      {
        $source_file = "$name";
      
        # Added by Saju as on 03/01/2006 (DD/MM/YYYY)
        $source_file =~ s/\\(\s)/ /g; # Retain the spaces in the file ans folder names
        $source_file =~ s/\//\\/g; # Convert all slash to backslash
        # End
        
        $log_details = "Error : Could not copy $source_file - To - $target_file\n";
        # $command_exec = 'xcopy /H /Y /R /K /S "'.$source_file.'" "'.$target_file.'"';
        $command_exec = 'xcopy /H /Y /R /K "'.$source_file.'" "'.$target_file.'"';
        result();
      }
    }
    #********************************************************************************
    
    #********************************************************************************
    if ( uc($command) eq "XCOPY")
    {
    # Condition added by Sharad Agarwal on 04th Jan 2007
    # If the first parameter is XCOPY in the input file (GUI.cfg)
    # It is used for copying the whole directory structure.
    # The config file should contain in the format;
    # Ex: xcopy,C:\Level1,P:\Level1\
    # Ex: xcopy,C:\Level1,P:\ (In this case our script will create Level1 folder on P drive and copy the structure).
    #********************************************************************************
      $source_file = $data[$i][1];
      $source_file =~ s/[\\\/]$//; # Remove the trailing slash or backslash
            
      $target_file = $data[$i][2];
      $target_file =~ s/\s+$//;    # Remove the trailing spaces
      $target_file =~ s/[\\\/]$//; # Remove the trailing slash or backslash
      
      my $Source_Base = basename($source_file);
      my $Target_Base = basename($target_file);
      
      if ($Source_Base ne $Target_Base)
      {
        $target_file = $target_file. "\\$Source_Base";
      }
      
      $log_details = "Error : Could not copy $source_file - To - $target_file\n";
      $command_exec = 'xcopy /E /Y /I /C /H /R /K /F "'.$source_file.'" "'.$target_file.'"';
      result();
    }
    #********************************************************************************
    
    #********************************************************************************
    if ( uc($command) eq "DELETE")
    {
    # Comment added by Sharad Agarwal on 04th Jan 2007
    # If the first parameter is DELETE in the input file (GUI.cfg)
    # It is used for deleting the files. 
    # The config file should contain in the format;
    # Ex: delete,C:\Level1\,*.*   (delete dll files at level1)
    # Ex: delete,C:\Level1\,*.dll (delete only dll files at level1)
    # Ex: delete,C:\Level1\,*.exe (delete only exe files at level1)
    #********************************************************************************
      chdir($data[$i][1]);
      $dir = getcwd;
      $source_file = $data[$i][1]. $data[$i][2];
      @list_Files = glob($source_file);
      $count = scalar(@list_Files);
      foreach $name ( @list_Files )
      {
        $file_del = '"'.basename($name).'"'; 
        unlink < -U $file_del>;
        if (-e $file_del)
        {
          $log_details = "Error : Deleting file $dir/$file_del\n\n";
          log_error($log_details);
        }
        else
        {
          print STDOUT "Deletion succeeded for $dir/$file_del\n\n";
        }
      }
    }
    #********************************************************************************
    
    #********************************************************************************
    if ( uc($command) eq "UN-REGISTER")
    {
    # Comment added by Sharad Agarwal on 04th Jan 2007
    # If the first parameter is UN-REGISTER in the input file (GUI.cfg)
    # It is used for unregistering the .dll files. 
    # The config file should contain in the format;
    # Ex: Un-Register,C:\Level1\,abc.dll
    #     Un-Register,C:\Level1\,abc.exe
    #********************************************************************************
      my @line_data = split /\./, $data[$i][2];
      if (uc($line_data[-1]) eq "EXE")
      {
        $command_exec = '"'.$data[$i][1]. $data[$i][2]. '" /UnRegServer';
      }
      else
      {
        $command_exec = 'regsvr32.exe /u /s "'. $data[$i][1]. $data[$i][2].'"';
      }
      $log_details = "Error : UnRegistering ". $data[$i][1]. $data[$i][2]. "\n";
      result();
    }
    #********************************************************************************
    
    
    #********************************************************************************
    if ( uc($command) eq "REGISTER")
    {
    # Comment added by Sharad Agarwal on 04th Jan 2007
    # If the first parameter is REGISTER in the input file (GUI.cfg)
    # It is used for registering the .dll files. 
    # The config file should contain in the format;
    # Ex: Register,C:\Level1\,abc.dll
    #     Register,C:\Level1\,abc.exe
    #********************************************************************************
      my @line_data = split /\./, $data[$i][2];
      if (uc($line_data[-1]) eq "EXE")
      {
        $command_exec = '"'.$data[$i][1]. $data[$i][2]. '" /RegServer';
      }
      else
      {
        $command_exec = 'regsvr32.exe /s "'. $data[$i][1]. $data[$i][2].'"';
      }
      $log_details = "Error : Registering ". $data[$i][1]. $data[$i][2]. "\n";
      result();
    }
    #********************************************************************************
    
    #********************************************************************************
    if ( uc($command) eq "JAVAC")
    {
    # Condition added by Sharad Agarwal on 06th Feb 2007
    # If the first parameter is JAVAC in the input file (GUI.cfg)
    # It is used for compiling the java components.
    # The config file should contain in the format;
    # Ex: javac,D:\jdk1.2.2\lib\java40.jar,C:\WEBVIEW_BLD_VIEW\RAD_GUI\Components\WebView\java\SQInputField\,SQInputField.java
    #********************************************************************************
      $source_file = $data[$i][2];
      $source_file =~ s/[\\\/]$//; # Remove the trailing slash or backslash
      chdir($source_file);
      $dir = getcwd;

      $target_file = $data[$i][3];

      $log_details = "Error : Not able to Build $target_file\n";
      $command_exec = 'javac -classpath "'.$data[$i][1].'" '.$target_file;
      result();
    }
    #********************************************************************************

    #********************************************************************************
    if ( uc($command) eq "JAR")
    {
    # Condition added by Sharad Agarwal on 07th Feb 2007
    # If the first parameter is JAR in the input file (GUI.cfg)
    # It is used for jar the java class files.
    # The config file should contain in the format;
    # Ex: jar,SQInputField.jar,SQInputField$SymKey.class SQInputField.class
    #********************************************************************************
      $source_file = $data[$i][2];
      #$source_file =~ s/[\\\/]$//; # Remove the trailing slash or backslash
      #chdir($source_file);
      #$dir = getcwd;

      $target_file = $data[$i][3];

      $log_details = "Error : Not able to jar $source_file\n";
      $command_exec = 'jar '.$data[$i][1].' '.$source_file.' '.$target_file;
      result();
    }
    #********************************************************************************

    #********************************************************************************
    if ( uc($command) eq "CD")
    {
    # Condition added by Sharad Agarwal on 07th Feb 2007
    # If the first parameter is CD in the input file (GUI.cfg)
    # It is used to change the current directory.
    # The config file should contain in the format;
    # Ex: cd,C:\WEBVIEW_BLD_VIEW\RAD_GUI\WebView\ConfigHelp\nsdnsfix
    #********************************************************************************
      $source_file = $data[$i][1];
      $source_file =~ s/[\\\/]$//; # Remove the trailing slash or backslash
      chdir($source_file);
      $dir = getcwd;
    }
    #********************************************************************************
    
    #********************************************************************************
    if ( uc($command) eq "WZZIP")
    {
    # Condition added by Sharad Agarwal on 07th Feb 2007
    # If the first parameter is WZZIP in the input file (GUI.cfg)
    # It is used to zip the files.
    # The config file should contain in the format;
    # Ex: wzzip,C:\WEBVIEW_BLD_VIEW\RAD_GUI\WebView\ConfigHelp\nsdnsfix\nsdnsfix.zip
    #********************************************************************************
      $source_file = $data[$i][1];
      $source_file =~ s/[\\\/]$//; # Remove the trailing slash or backslash

      $log_details = "Error : Not able to zip $source_file\n";
      $command_exec = 'wzzip -rp '.$source_file;
      result();
    }
    #********************************************************************************
  }
}

#============================================================================#
sub result{
#   Runs the command line & logs if any error into the log file.
#============================================================================#
    $result = system $command_exec;
    if ($result > 0) {
      #$bld_fail = 1 if (uc($command) eq "OMAKE");
      $bld_fail = 1; #Modified by Sharad Agarwal on 3rd Jan 2007
      print STDOUT $log_details;
      log_error($log_details);      
      return;
      #die "* * *   C h e c k   T h e   E r r o r  F r o m    L o g   F i l e   * * * \n"
    }
    else {
      # Added by Sharad Agarwal on 23th Oct 2006
      print STDOUT "Command succeeded for $command_exec\n\n";
    }
}

#============================================================================#
sub log_error
# This function logs error into the log file. 
#============================================================================#
{
  print "$log_details";
  print STDERR get_timestamp()."  ". $log_details;
}

#============================================================================#  
sub get_cfg_recs {
#   Gets all the details from those sections for the defined key's.
#============================================================================#      
  #Added by Sharad on 07th Dec. 2006
  my $cfgref_cc_build = new Config::IniFiles( -file => "cc_build.cfg" );
  @cfgsecs_cc_build = $cfgref_cc_build->Sections();
  return;
}

#============================================================================#  
sub get_config_data {
#   Gets all the details from those sections for the defined key's.
#============================================================================#      
  
  # Added by Sharad Agarwal on 07th Dec. 2006
  # This will open the cc_build.cfg file
  my $cfgsec_cc_build = shift(@cfgsecs_cc_build);
  my $cfgref_cc_build = new Config::IniFiles( -file => "cc_build.cfg" );
  
  # Added by Sharad Agarwal on 07th Dec. 2006
  # This will read the value of 'Product' from cc_build.cfg file
  $prod = $cfgref_cc_build->val( 'CLEARCASE', 'Product' );
  die "Missing product name in $cfgsec_cc_build of cc_build.cfg.\n"
    if (!defined $prod);
  
  # Added by Sharad Agarwal on 07th Dec. 2006
  # This will read the value of 'Working_Dir' from cc_build.cfg file
  # and $builddir will be generated by using that value.
  #$buildDir = $cfgref_cc_build->val( 'CLEARCASE', 'Working_Dir' ). $prod.'_BLD_VIEW\\';\
  #Robert added
  $buildDir = $cfgref_cc_build->val( 'CLEARCASE', 'BuildDirectory' );
  die "Missing vob name in $cfgsec_cc_build of cc_build.cfg.\n"
    if (!defined $buildDir);
    
  # Added by Saju as on 03/01/2007 (DD/MM/YYYY) to create the directory if it does not exists.  
  mkpath([$buildDir], 0, 0777) if !(-e $buildDir); 
    
  # Added by Sharad Agarwal on 17th Feb 2007
  # Removed my Robert Daniels We don't need value March 23, 2007
 # $build_value = $cfgref_cc_build->val( 'CLEARCASE', 'GUI_BUILD' );
  #die "Missing product name in CLEARCASE section of cc_build.cfg.\n"
  #  if (!defined $build_value);
    
#  if ($build_value eq "N" && $build_value ne "")
#  {
 #   print "Value not set for parameter GUI_BUILD in cc_build.cfg file";
 #   exit;
#  }
 # 
  # Added by Sharad Agarwal on 17th Feb 2007
  # Removed my Robert Daniels We don't need value March 23, 2007
  #$Web_value = $cfgref_cc_build->val( 'CLEARCASE', 'GUI_BUILD' );
 # die "Missing product name in CLEARCASE section of cc_build.cfg.\n"
  #  if (!defined $Web_value);

  # Commented by Sharad Agarwal on 09th March 2007
  # Added by Sharad Agarwal 0n 07th Nov. 2006
  #Reading Email list from the config file.
  #$email_id = $cfgref_cc_build->val( $cfgsec_cc_build, 'Email_List' );
  #if (!defined $email_id)
  #{
  #  $Email_flag = 1;
  #}
  #else
  #{
  #  $Email_flag = 0;
  #}
  
  open ( DAT ,"< $cfgfile")
  or die "Unable to find the Config file : $cfgfile.\n" ;
 
  foreach $list (<DAT>)
  {
    my $i;
    chomp($list);
    @temp = split(/,/,$list);
    for $i (0..(scalar(@temp)-1))
    {
        $data[$count][$i] = $temp[$i];
    }
    $count++;
  }
  close(DAT);
  #return;


}

#============================================================================#
sub check_file
# If target directory does not exists then it will log an error.
#============================================================================#
{
  if (!-e $target_file)
  {
    log_error($log_details);
  }
  #Added by Sharad Agarwal on 13th Oct 2006
  else{
    print STDOUT "Copy succeeded from $source_file - To - $target_file\n\n";
  }
}

#********************************************************************************************#
#           M A I N   L O G I C   S T A R T S   H E R E   
#********************************************************************************************#

print("\n\n* * * S T A R T   O F   O M A K E   B U I L D  P R O C E S S * * *\n");
print("\n\nPlease wait processing is on....\n\n");

# Commented by Sharad Agarwal on 07th Dec. 2006
# Config data will process in get_config_data() function.
=cut

open (INFILE, "<$cfgfile") or die "Could not open config file $cfgfile";
@config_data=();
my $my_data=();
while (my $line = <INFILE>){
    if ($line eq "\n" || $line eq " ")
    {
      next;
    }
    chomp($line);
    @config_data = split /\=/, $line;
    $my_data = $config_data[0];
    if ($my_data eq ';Product')
    {
      $prod = $config_data[1];
    }
    if ($my_data eq ';BuildDirectory')
    {
      $buildDir = $config_data[1];
    }
    # Commented by Sharad Agarwal on 09th March 2007
    # Added by Sharad Agarwal on 14th November 2006.
    #if ($my_data eq ';Email_List')
    #{
    #  $Email_flag = 0;
    #  $email_id = $config_data[1];
    #}
}
=cut

# Added by Sharad Agarwal on 07th Dec. 2006
# for accesing the data from config file.
get_cfg_recs();
get_config_data();

# Commented by Sharad Agarwal on 09th March 2007
# Added by Sharad Agarwal 0n 14th Nov. 2006
#calling the function to store the email list into an array.
#if ($Email_flag == 0)
#{
#  get_Email_List();
#}

# Commented by Sharad Agarwal on 07th Dec. 2006
# close(INFILE) or die "Could not close config file $cfgfile";

if (defined $prod) { # Added by Saju as on 03/01/2006 (DD/MM/YYYY)
  $log_file = $buildDir. $prod. "_GUI_BLD.Log";
  $log_error = $buildDir. $prod. "_GUI_BLD_ERROR.Log";

  open(OLDOUT, ">&STDOUT");
  open(OLDERR, ">&STDERR");

  # Added by Sharad agarwal on 23th Oct 2006
  open (STDOUT,">$log_file") or die "Could not open log file $log_file";
  open (STDERR,">$log_error") or die "Could not open error log file $log_error";
} # end


  # Commented by Sharad Agarwal on 07th Dec. 2006
  # get_config_data();
  process_data();
  
  # Added by Sharad Agarwal on 17th Feb 2007
  if (uc($Web_value) eq "Y")
  {
    $cfgfile = "Web.cfg";
    @data = ();
    open ( DAT ,"< $cfgfile")
    or die "Unable to find the Config file : $cfgfile.\n" ;

    foreach $list (<DAT>)
    {
      my $i;
      chomp($list);
      @temp = split(/,/,$list);
      for $i (0..(scalar(@temp)-1))
      {
        $data[$count][$i] = $temp[$i];
      }
      $count++;
    }
    close(DAT);
    process_data();
  }

=put
#Commented by Sharad Agarwal on 09th March 2007
#Added by Sharad Agarwal on 14th Nov. 2006
#Creating a SendMail object passing the SMTP server as an argument. 
$sm = new SendMail('mhimail.mhi.onemisys.com');
$user_domain = $ENV{'USERDNSDOMAIN'};
$user_domain =~ tr/a-z/A-Z/;
$user_Name = $ENV{'COMPUTERNAME'};
$user_Name =~ tr/a-z/A-Z/;
$serverName = "$user_Name\.$user_domain";

if ($bld_fail == 1){
  # Added by Sharad Agarwal on 23th Oct 2006
  print STDERR "\n\n* * * B U I L D  F A I L E D * * *\n";
  print STDOUT "\n\n* * * B U I L D  F A I L E D * * *\n";
  # Added by Sharad Agarwal 0n 14th Nov. 2006
  # Subject Line for the mail.
  $subject = 'F A I L E D - Product : '.$prod. ' ***OMAKE BUILD***';
}
else{
    # Added by Sharad Agarwal on 23th Oct 2006
    print STDOUT "\n\n* * * B U I L D  S U C C E S S F U L L Y  C O M P L E T E D * * *\n";
    # Added by Sharad Agarwal 0n 14th Nov. 2006
    # Subject Line for the mail.
    $subject = 'S U C C E S S F U L - Product : '.$prod. ' ***OMAKE BUILD COMPLETED***';
}
=cut

if (defined $prod) { # Added by Saju as on 03/01/2006 (DD/MM/YYYY)
  
  #Added by Sharad Agarwal on 23rd Oct. 2006
  close(STDOUT)|| die "Can't close log file";
  close(STDERR) || die "Can't close log file";

  # restore stdout and stderr
  open(STDERR, ">&OLDERR")            or die "Can't restore stderr: $!";
  open(STDOUT, ">&OLDOUT")            or die "Can't restore stdout: $!";

  # avoid leaks by closing the independent copies
  close(OLDOUT)                       or die "Can't close OLDOUT: $!";
  close(OLDERR)                       or die "Can't close OLDERR: $!";
}

# Added by Sharad Agarwal 0n 14th Nov. 2006
# @file_output contains the each line of log file into an array.
push(@file_output,"\n************Please Check The Server $serverName For Log Files************\n\n");

open FILEH, "<$log_file" or die "\nUnable to open log file $log_file\nError: $!\n";
while (my $line = <FILEH>){
    chomp($line);
    print "$line\n";
    #Added by Sharad on 14th Nov. 2006
    push(@file_output,$line);
}
close (FILEH) || die "\nCan't close log file $log_file";

# Commented by Sharad Agarwal on 09th March 2007
#Added by Sharad Agarwal on 14th Nov. 2006
#Call the function for sending mail 
#if ($Email_flag == 0)
#{
#  send_email();
#}

print("\n\n* * * E N D   O F   O M A K E   B U I L D  P R O C E S S * * *\n");

exit 0;


