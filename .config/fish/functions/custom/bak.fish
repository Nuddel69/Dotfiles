# Function for creating a backup file
# ex: backup file.txt
# result: copies file as file.txt.bak
function bak --argument filename
    cp $filename $filename.bak
end
