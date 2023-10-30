
# Set URLs and file paths
repoLink="https://github.com/amna33mcc/mana1.1/raw/master/userpage.zip"

userDir="/var/www/html/example"

# Banner Path
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
wait

echo "userpage created."
