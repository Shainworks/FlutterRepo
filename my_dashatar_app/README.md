## Adding platforms in terminal
1. If i supposed to have forgotten to click the tick mark then i will have to write this following command in terminal 
2. Suppose i wanna create web platform the commands goes like this
   - flutter config --enable-web
   - flutter create .
3. The same goes for every other platform
4. If i wanna wrap or delete a widget just click on the widget and press alt+enter which will show the pop up menu
5. Now talking about scaffold it is a material widget which acts a skeleton to store multiple widgets inside it such as appbar, backgroundcolor and home
6. When you need to add an asset such as an image into app we will have to write that asset in pubspec.yaml with following syntax....The indentation should be properly specified
   assets:
   - images/
7. There are two modes debug mode and release mode ....in debug mode there are extra tools for monitoring...while in release there aren't any of them...The piece of code to remove the debug banner from the app is written below
   - debugShowCheckedModeBanner: false,