$dec_filename

while true; do
    read -p "Enter the filename you wish to decrypt w/ filepath: " dec_filename

    if [ -f $dec_filename ]; then
        openssl enc -d -aes-256-cbc -iter 1000 -in $dec_filename -out "DEC_$dec_filename";
        echo "File has been decrypted and saved as DEC_$dec_filename.";

        rm $dec_filename;
        echo "Encrypted file ( $dec_filename ) has been deleted.";
        break;
    else
        echo "File does not exist."
    fi
done