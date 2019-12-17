$enc_filename
$dec_filename
$yn

while true; do
    read -p "Enter the filename you wish to encrypt w/ filepath: " dec_filename

    if [ -f $dec_filename ]; then
        read -p "Enter a filename for the final encrypted file w/ filepath: " enc_filename;
        openssl enc -aes-256-cbc -iter 1000 -in $dec_filename -out $enc_filename;
        echo "File has been encrypted.";
        break;
    else
        echo "File does not exist."
    fi
done

while true; do
    read -p "Do wish to delete the original (y/n)?: " yn
    case $yn in
        [Yy]* ) rm $dec_filename; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no (y/n).";;
    esac
done