$username
$exp_output
$exp_filename
$current_hostname

current_hostname=$(hostname)

if [ $current_hostname == "--------" ]; then
    read -p "Please enter your LastPass username: " username

    lpass login --color=always $username

    echo "Logged in. Running export command."
    exp_output=$(lpass export)

    read -p "Enter a filename for the encrypted file w/ filepath: " exp_filename

    echo $exp_output | openssl enc -aes-256-cbc -iter 1000 -out $exp_filename

    echo "LastPass export encrypted and saved." 
        
    yes | lpass logout
    echo "Logged out."
fi