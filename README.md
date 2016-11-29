# Year 2 semester 1 Object Oriented Programming Assignemnt
Mohamad Zabad DT228/2

  My project is based on BioWare Studios' video game Mass Effect. It inspired me with the loadout selection screens that you had to go through.
The whole idea of the project is to remember the loadout selection made by the user.

Some notable ideas that I managed to implement in this project are:
  - No limitation on the number of users that can access this project
  - Having a smooth transition between the screens all filled with animations
  - Everything is modular and the positions of certain elements can be changed just by changing a single value of a variable
  - All the elements are devided across their corresponding class
  - Having many clickable buttons for the user to interact with
  - Everything running smooth without any problems (this used to be an issue)
  
  From here I'll start explaning everything I've done in the project.

From the first moment the user opens the project he is greeted by a welcome message and a box that expects him to enter his name in. I created the whole input process myself. The user can choose a name with the max length of 12.
The program checks if the profile already exists. If it doesn't then it creates the file.
The input box doesn't take empty profiles (If the box is left blank).

Right after choosing the name of the user we get to see a 3 second loading animation which animates the transitioning from one screen to the other. 

The next thing we see is the weapon choosing menu where many elements get displayed.

Here we get to see:
  - On the right side the area allocated for the widgets. Here we have the animated clock at the bottom and three regular logos that I drew.
  - On the bottom of the screen we get to see the navigation menu that takes us from one page to the other. Hovering over a button changes its colour and the selected screen will always have its button coloured to indicate that you're on that screen. Here you can find the 4 buttons that take you to each of these pages (weapons, armor, map and records)
  - On the upper left side we get to see two boxes which contain weapons. They are the primary and respectively the secondary weapons. Underneath the boxes you can see the description of each weapon.
  - Next to the boxes you can see arrows that let you switch between the weapons and the according details will be displayed instantly.
  - Just above the line with the menu navigator we can see a box that displays the current loadout settings (what we have selected so far) and a button which lets you save the record
  - On the top side of the screen right next to the widget area we get to see the profile name we chose being displayed. The little bar that is underneath the the name grows in length according to the length of the name. This was done with the use of the map function.

Some functionality on this page:
  - Clicking the arrows change the weapon displayed (be it the arrow for the primary or secondary weapon)
  - Clicking on either of the navigation buttons will take  you to another screen after a slight animation is played
  - Clicking on the save button will save the record into a text file with the name of the profile you enetered and you're prompted with a little pop-up which won't let you save again until you close it
  - Hovering any of the buttons on this page changes the colour of the buttons
  
The Armor and Map screens have the same contents and functionality except this slight difference which is that they only have one box where the image gets displayed.

The last but not least page, the record one has the following elements:
 - On the bottom side we have the navigation bar
 - Every other element that we had on the rest of the pages is missing here
 - We get to see a table with all the loudouts that we have stored for that profile (with a limit of 14)
 - Above the navigation bar we have the "Delete all" button which erases all the records that are in the text file and empties the arraylist containing them. Doing that gets you a little pop-up just like in the save function.
