# Some Useful Linux Shell scripts

### Shell scripts for changing wallpaper, custom notifications and change brightness (Ubuntu) 

Okay, so I have been using ubuntu for more than 2 years now and it is really a nice experience. However there 
are some issues like  changing brightness via settings in Ubuntu doesn't work. 
Also it would be cool to have features like periodically changing wallpapers, using our own custom notifications etc.
So I searched web and found commands to accomplish above tasks. I created script files for these commands and 
used crontab to achieve desired behaviour. 

##### Do not forget to add executable permission to these scripts. 

#### Change brightness in Ubuntu
As mentioned earlier, changing brightness via settings doesn't work so you can use brightness.sh. 
Open a terminal and move to this repository. Run `sh brightness.sh`

#### Periodically change wallpaper
You can use change-wallpaper.sh combined with crontab to change desktop wallpapers periodically.
Just replace directory path in change-wallpaper.sh file (DIR variable) to your own directory path containing 
wallpepers and edit crontab to add this task. 
1. Open a terminal
2. Move to this repository folder
3. Add execute permission to change-wallpaper.sh `sudo chmod 755 change-wallpaper.sh`
4. edit crontab file. use `crontab -e` and add `0 */1 * * * sh /home/varun/Desktop/scripts/change-wallpaper.sh`
5. You can check your entry using `crontab -l`
6. change-wallpaper.sh will be executed per hour. You can modify params to suit your needs.
![Crontab entry] (./screenshots/crontab.png) 

#### Use notification to display quotes and emoji periodically
I maintained a quote.txt file containing some quotes and used greeting.sh combined with crontab to periodically 
display quotes. Just add following entry in crontab file to display quote per half an hour.
`*/30 * * * * bash /home/varun/Desktop/scripts/greeting.sh`
![Displaying quote] (./screenshots/notification.png)