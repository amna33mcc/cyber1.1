banner.txt
# Set URLs and file paths
repoLink="https://github.com/amna33mcc/mana1.1/raw/master/userpage.zip"

userDir="/var/www/html/example"

# Banner Path
bannerLink="https://github.com/amna33mcc/mana1.1/raw/master/banner.txt"
bannerPath="/var/www/html/panel/banner.txt"


if [ ! -e "$bannerPath" ]; then
    touch "$bannerPath"
    echo "Banner file created: $bannerPath"
else
    echo "Banner file already exists: $bannerPath"
fi


# Download userpage code zip file
sudo wget -O /var/www/html/api.zip $repoLink

# # Extract userpage code
sudo unzip -o /var/www/html/api.zip -d $userDir

# Download userpage code zip file
sudo wget -O /var/www/html/panel/banner.txt $bannerLink
wait

#set address for log
printf "Please enter your address for log: "
    read subTmp

    if [[ -n "${subTmp}" ]]; then
     sub=${subTmp}
    fi
    sed -i "s/name.srv110.at/$sub/g" /var/www/html/panel/banner.txt
    wait

#set address for api    
printf "Please enter your address for api: "
    read apiTmp

    if [[ -n "${apiTmp}" ]]; then
     api=${apiTmp}
    fi
    sed -i "s/servername/$api/g" /var/www/html/example/fetch.php
    wait

#set db username
printf "Please enter your panel username: "
    read userTmp

    if [[ -n "${userTmp}" ]]; then
     user=${userTmp}
    fi
    sed -i "s/srvadmin/$user/g" /var/www/html/example/db.php
    wait

 #set db password
 printf "Please enter your panel password: "
    read passTmp
    if [[ -n "${passTmp}" ]]; then
     pass=${passTmp}
    fi
    sed -i "s/AmNay33550288/$pass/g" /var/www/html/example/db.php
    wait

#set db username 
sed -i 's/#Banner none/Banner \/root\/banner.txt/g' /etc/ssh/sshd_config
    wait

#set banner address to sshd config
sed -i 's/Banner \/root\/banner.txt/Banner \/var\/www\/html\/panel\/banner.txt/g' /etc/ssh/sshd_config
    wait

#restart SSH
systemctl restart ssh.service
    wait
    
echo "User Page Created."
