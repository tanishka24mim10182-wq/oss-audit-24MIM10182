# oss-audit-24MIM10182
Open Source Audit: Apache HTTP Server 
Student Name: Tanishka Khare 
Registration Number: 24MIM10182

Course: Open Source Software (Capstone Project) Project OverviewThis repository contains a suite of five Bash automation scripts developed as part of a comprehensive audit of the Apache HTTP Server. These tools demonstrate practical Linux system administration and the core philosophies of transparency and sharing in the FOSS ecosystem. Technical RequirementsOperating System: Linux (Tested on Ubuntu 24.04 LTS) Environment: Bourne Again Shell (Bash) Dependencies: apache2, lsb-release, awk, grep Step-by-Step Execution InstructionsTo run these scripts on a Linux system.

follow these steps in your terminal:

1: Clone the RepositoryBashgit clone https://github.com/your-username/oss-audit-24MIM10182.git cd oss-audit-24MIM10182

2: Grant Execute PermissionsBefore running, you must grant the scripts permission to execute:Bashchmod +x script1.sh script2.sh script3.sh script4.sh script5.sh

3: Running the ScriptsExecute each script using the ./ prefix:Script 1: System Identity ReportCommand: ./script1.shWhat it does: Displays a welcome screen with distribution details, kernel version, and the OS license.Script

4: FOSS Package InspectorCommand: ./script2.shWhat it does: Checks if apache2 is installed and prints a philosophy note based on the package name.Script 3: Directory AuditorCommand: ./script3.shWhat it does: Loops through system directories to report disk usage and permission owners.Script

5: Log File AnalyzerCommand: ./script4.sh /var/log/apache2/error.log errorWhat it does: Reads the log file line-by-line to count specific keywords (e.g., "error").Script

6: Manifesto GeneratorCommand: ./script5.shWhat it does: Asks three interactive questions and generates a personalized .txt statement.

Script Descriptions & LogicScript:

1: Uses command substitution to pull live data from the kernel.Script

2: Employs conditional logic and a case statement for package identification.Script

3: Utilizes a for loop and awk for filesystem mapping.Script

4: Uses a while-read loop and positional parameters for forensic analysis.Script

5: Demonstrates interactive input and file redirection.
