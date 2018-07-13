# Instructions

---

## You will need

 - AutoIt 
 - FlashBack Batch Export
 - Box Client
 - The script "challange.au3"
 
 
 AutoIt can be download [here](https://www.autoitscript.com/site/autoit/downloads/).  Scroll down an click on the full installation.  It should give you wizard, and just click through it.  FlashBack Batch Export should already be installed since it comes with FlashBack Recorder.  For Box, make sure you have a Box folder, as the program just moves your exported video to that folder.  You can download by clicking the green button and clicking download zip, or you can just copy and paste the contents of "challange.au3" into notepad and saving it. 
 
 
 ## Usage
 
 
If you've installed Autoit correctly, you should be able to right click on "challenge.au3" and click "Run Script (x64)".  **Note** Nothing should happen right now.  This is expected.  Use FlashBack Recorder as normal to record, and when you are finished, the script should take effect once you stop recording.  

**Another Note**
When FlashBack Export is booting up, there is a progress bar indicating the loading.  Since the loading takes a variable amount of time, I've told the script to wait for 30 seconds.  If FlashBack Export has loaded, but nothing has happend, try waiting for 30 seconds.  

## Troubleshooting



Sometimes, there may be some unexpected behavior such as creating a dialogue box.    If this happens, the script will pause.  Simply exiting the dialogue box should make the script continue as normal.  If it doesn't continue, try to continue exporting manually.  The script should be able to then resume at some point.  


Other errors may be because of an incorrect path to the folders.  If you have a different directory for your export folders or your box, try looking near the top the script, and modify the variables `$exports_directory` and `$box_directory`.

