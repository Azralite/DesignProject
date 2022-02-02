# Design Project

*By Cateau OONK, Yiwen DANG, Andrian BUCKA and Paul MICHEL DIT FERRER*


##  SETUP

For now, the implementation is on localhost and for desktop. The plan is to make it online and for table tops.

If you want to run the code 
```sh
git clone https://github.com/Azralite/DesignProject
cd DesignProject
```

The -img folder contains images of the flags and maps (wip)
    -includes folder contains the id/pwd for the data base (for now we use mySQL from XAMPP in localhost so they are not confindential (to be removed))
    -styles contains the stylesheets


### To run the code on your computer

- You should download [XAMPP](https://www.apachefriends.org/fr/index.html).

- Then remove evrything in the file  :

`/opt/lammp/htdocs/` for Unix Systems

`C:\xampp\htdocs` for Windows 

`???` for Mac (should be quite the same)

- Then run the XAMPP control panel :

`sudo /opt/lampp/manager-linux-x64.run` for Unix 64 bits
`sudo /opt/lampp/manager-linux.run` for Unix 32 bits

Use the windows button to find it / Same on mac

- Open a browser and go to `localhost/phpmyadmin`
- Then `Import` button and use the SQL file you download from git hub
- Move all the git hub files in the htdocs folder
- You should now be able to view the website on `localhost/DesignProject/index.php`