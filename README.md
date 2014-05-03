A simple script to change your wallpaper as the most popular pics on 500px

Installation

Step 1. Place the downlod.sh and change.sh into the desired folder

Step 2. Add crontab entries to run these scripts

On the command line type:
crontab -e

Add the following entries to change the wallpaper every minuite and download the popular wallpapers everyday
*   *    *    *    *   sh /home/amol/Desktop/500px/change.sh
* 12 * * *  sh /home/amol/Desktop/500px/download.sh


Step 3. Run the download.sh once to download a set of wallpapers 

NOTE: Only for GNOME
