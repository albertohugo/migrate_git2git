#!/usr/bin/ksh

echo "Please input repo to be migrated: "
read repo_origin
git clone $repo_origin

ls -la
echo "Please input repo folder: "
read repo_folder
cd $repo_folder

git remote rm origin
echo "Please input repo destination: "
read repo_dest
git remote add origin $repo_dest
git push origin --all -f
git push --tags -f
cd ..
