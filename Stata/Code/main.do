/*******************************************************************************
							Template Main do-file							   
*******************************************************************************/

* Set version
version 18

* Set project global(s)
global project "C:/Users/ADMIN/Desktop/World Bank Courses/powel.ado"
global code    "${project}"

* Set ado folder in the code folder
sysdir set PLUS "${code}/ado"

* Install packages in the ado folder 
local user_commands ietoolkit iefieldkit  // Add any other required commands

foreach command of local user_commands {
   cap which `command'
   if _rc == 111 {
	   ssc install `command'
   }
}

* Run do files 
do "${code}/cleaning.do"
do "${code}/mainresults.do"
do "${code}/appendix.do"

* End of do-file!
