(*Macport Updater GUI
By Sam Cohen � 2016*)
set valuereturned to display dialog "Update or remove outdated packages installed by Macports" with title "Macports Update" buttons {"Update Software", "Remove Old Versions", "Exit"} default button {"Update Software"}
set BUTTON_Returned to button returned of valuereturned #Need to jump between variables
if BUTTON_Returned = "Update Software" then do shell script "/Applications/'Macports Update.app'/Contents/Resources/Macports-Shell/Macports_Update.sh" with administrator privileges #password propt will follow
if BUTTON_Returned = "Remove Old" then do shell script "/Applications/'Macports Update.app'/Contents/Resources/Macports-Shell/Remove_Old.sh" with administrator privileges
if BUTTON_Returned = "Exit" then return 0
display dialog "Done!" with title "Macports Update" buttons {"OK"} default button {"OK"}