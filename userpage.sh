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

printf "Please enter your sub domain: "
    read subTmp

    if [[ -n "${subTmp}" ]]; then
     sub=${subTmp}
    fi
    sed -i 's/name.srv110.at/${sub}/g' banner.txt

echo "userpage created."
