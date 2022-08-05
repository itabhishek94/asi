#!/bin/bash

echo "Give me the old username"
read name
echo "Give me the new username"
read new
killall -u username
usermod -l "$new" "$name"
#groupmod -n new_groupname old_groupname
usermod -m -d /home/$new -m $new
#usermod -c "New Name" new_username

#chown $new:new_groupname .Xauthority
we're changing the login name
You have to change the home folder manually to reflect the new username.
we are updating the home directory to reflect the new username.
The -d option sets The user's new login directory. With the -m option,
usermod command in Ubuntu will Move the content of the old home directory to the new location.
