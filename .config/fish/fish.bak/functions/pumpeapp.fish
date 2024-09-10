# Function for creating a backup file
# ex: backup file.txt
# result: copies file as file.txt.bak
function pumpeapp
    rm ~/Library/MobileDevice/Provisioning\ Profiles/*.mobileprovision
    echo "Provisioning profiles cleared!"
end

