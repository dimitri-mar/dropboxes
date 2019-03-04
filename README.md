# dropboxes
bash scripts for running multiple Dropbox instances in Linux

The scripts download and copy the last version of Dropbox into a set of directories and then allow to execute them simultaneously.

Scripts are inspired by the [Arch linux wiki](https://wiki.archlinux.org/index.php/Dropbox#Multiple_Dropbox_instances)
and the [Dropbox wiki](http://www.dropboxwiki.com/tips-and-tricks/run-multiple-instances-of-dropbox-simultaneously-on-linux-or-mac-os-x#On_Ubuntu)
and the official [Dropbox official install page](https://www.dropbox.com/en/install).

NOTE: it works only for Linux x86_64 (for different situations change url in `init_dropbox_dir.sh`) 

## Usage
Clone the repository and initialize the directories that one wants to use as Dropbox folders 
```bash
git clone git@github.com:dimitri-mar/dropboxes.git 
cd dropboxes
mkdir first_drop second_drop 
bash init_dropbox_dir.sh
```
now it is possible to execute all the instances at one time
```
bash multiple_dropbox.sh
```
 

