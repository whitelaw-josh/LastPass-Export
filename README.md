# LastPass-Export

This project utilizes LastPass's command-line application in cygwin (repo & documentation resources: https://github.com/lastpass/lastpass-cli) to export all of a user's LastPass passwords and encrypt/decrypt them into a file named by the user using using aes-256-cbc encryption by auto opening a cygwin terminal when a USB device is plugged in.

lastPassExport.sh, lastPassEncrypt.sh, and lastPassDecrypt.sh can be ran easily if placed in the your cygwin directory at the following file path and ran using ./ notation : C:/cygwin64/home/{user_name}/ .

To run cygwin from usb, copy the contents of the cygwin64 folder installed in your directory to your usb and place the autorun.inf in the parent directory.

## lastPassExport.sh

Running this script will check if the computer running this script is the one specified in the conditional on line 8 for security.  It will then prompt you to enter your LastPass username and password and ask for your password again once the export command is ran.  Finally, it will ask for you to specify the filename you wish to export the passwords to an encrypt it after entering in a user specified encryption passcode and log you out of LastPass's command-line interface within cygwin.

## lastPassDecrypt.sh

Running this script will ask the user to specify the file they wish to decrypt followed by prompt for you decrpytion passcode.  After file has been succesfully decrypted, the original decrypted file will be deleted.

## lastPassEncrypt.sh

Running this script will ask the user which file they wish encrypt followed by a prompt for an encrpytion passcode.  After the file has been succesfully encrypted, it will ask the user if they wish to delete the original file used for encrpytion.

## autorun.inf

Applied to parent directory of usb with cygwin contents copied over.  Will only open cygwin terminal in which first command that should be run is ./lastPassExport.sh 
