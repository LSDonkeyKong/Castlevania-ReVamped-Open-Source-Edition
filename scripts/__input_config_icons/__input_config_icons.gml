// Feather disable all

/// This script contains mappings from binding labels - a combination of keyboard key names, mouse button
/// names, and abstract gamepad names - to more friendly terms that you can show a player. Typically you'd
/// set up this function to return sprites such that you can draw gamepad icons as visual icons.
/// 
/// Default values in this script reflect the particular, and sometimes unexpected, buttons that each gamepad
/// binding maps to on the actual physical hardware. There are a handful of special cases at the top of the
/// script that are used to handle errors or misconfigurations.



//Special case: When a non-binding value is being evaluated
//              This should only happen if Input is given an invalid input argument
input_icon_not_a_binding("[[Not a binding]");

//Special case: When an empty binding is being evaluated
input_icon_empty("[[Empty]");

//Special case: When a touch binding (virtual button) is being evaluated
input_icon_touch("[[Virtual button]");



//Optional remapping for keyboard and mouse
//This is useful for turning keyboard keys into sprite icons to match other assets, or for returning formatted strings (e.g. for use with Scribble)
//Any keyboard key label not in this struct will simply fall through and return the key name
input_icons_keyboard_and_mouse()
//Put extra .add() commands here to add icons to keyboard and mouse
.add("mouse button left",         "[[Mouse L]")
.add("mouse button middle",       "[[Mouse M]")
.add("mouse button right",        "[[Mouse R]")

#region Gamepads

//Xbox One and Series S|X controllers
input_icons_gamepad(INPUT_GAMEPAD_TYPE_XBOX_ONE)
.add("gamepad face south",         "[sprControls_Xbox,0]")
.add("gamepad face east",          "[sprControls_Xbox,1]")
.add("gamepad face west",          "[sprControls_Xbox,2]")
.add("gamepad face north",         "[sprControls_Xbox,3]")
.add("gamepad shoulder l",         "[sprControls_Xbox,8]")
.add("gamepad shoulder r",         "[sprControls_Xbox,9]")
.add("gamepad trigger l",          "[sprControls_Xbox,10]")
.add("gamepad trigger r",          "[sprControls_Xbox,11]")
.add("gamepad select",             "[sprControls_Xbox,14]")
.add("gamepad start",              "[sprControls_Xbox,15]")
.add("gamepad dpad left",          "[sprControls_Xbox,6]")
.add("gamepad dpad right",         "[sprControls_Xbox,7]")
.add("gamepad dpad up",            "[sprControls_Xbox,4]")
.add("gamepad dpad down",          "[sprControls_Xbox,5]")

.add("gamepad thumbstick l left",  "[sprControls_Xbox,6]")
.add("gamepad thumbstick l right", "[sprControls_Xbox,7]")
.add("gamepad thumbstick l up",    "[sprControls_Xbox,4]")
.add("gamepad thumbstick l down",  "[sprControls_Xbox,5]")
.add("gamepad thumbstick l click", "[sprControls_Xbox,12]")

.add("gamepad thumbstick r left",  "[sprControls_Xbox,20]")
.add("gamepad thumbstick r right", "[sprControls_Xbox,21]")
.add("gamepad thumbstick r up",    "[sprControls_Xbox,18]")
.add("gamepad thumbstick r down",  "[sprControls_Xbox,19]")
.add("gamepad thumbstick r click", "[sprControls_Xbox,13]")

//Series S|X only
.add("gamepad misc 1",             "[sprControls_Xbox,16]")

//Elite and third party controllers
.add("gamepad paddle 1",           "[[P1]")
.add("gamepad paddle 2",           "[[P2]")
.add("gamepad paddle 3",           "[[P3]")
.add("gamepad paddle 4",           "[[P4]")

//PlayStation 5
input_icons_gamepad(INPUT_GAMEPAD_TYPE_PS5)
.add("gamepad face south",         "[sprControls_Playstation,0]")
.add("gamepad face east",          "[sprControls_Playstation,1]")
.add("gamepad face west",          "[sprControls_Playstation,2]")
.add("gamepad face north",         "[sprControls_Playstation,3]")
.add("gamepad shoulder l",         "[sprControls_Playstation,8]")
.add("gamepad shoulder r",         "[sprControls_Playstation,9]")
.add("gamepad trigger l",          "[sprControls_Playstation,10]")
.add("gamepad trigger r",          "[sprControls_Playstation,11]")
.add("gamepad select",             "[sprControls_Playstation,15]")
.add("gamepad start",              "[sprControls_Playstation,14]")
.add("gamepad dpad left",          "[sprControls_Playstation,6]")
.add("gamepad dpad right",         "[sprControls_Playstation,7]")
.add("gamepad dpad up",            "[sprControls_Playstation,4]")
.add("gamepad dpad down",          "[sprControls_Playstation,5]")

.add("gamepad thumbstick l left",  "[sprControls_Playstation,6]")
.add("gamepad thumbstick l right", "[sprControls_Playstation,7]")
.add("gamepad thumbstick l up",    "[sprControls_Playstation,4]")
.add("gamepad thumbstick l down",  "[sprControls_Playstation,5]")
.add("gamepad thumbstick l click", "[sprControls_Playstation,12]")

.add("gamepad thumbstick r left",  "[sprControls_Playstation,20]")
.add("gamepad thumbstick r right", "[sprControls_Playstation,21]")
.add("gamepad thumbstick r up",    "[sprControls_Playstation,18]")
.add("gamepad thumbstick r down",  "[sprControls_Playstation,19]")
.add("gamepad thumbstick r click", "[sprControls_Playstation,13]")

.add("gamepad touchpad click",     "[sprControls_Playstation,17]")

//Not available on the PlayStation 5 console itself but available on other platforms
.add("gamepad misc 1",             "[[MIC]")

//DualSense Edge
.add("gamepad paddle 1",           "[[RB]")
.add("gamepad paddle 2",           "[[LB]")

//Switch handheld/dual JoyCon/Pro Controller
input_icons_gamepad(INPUT_GAMEPAD_TYPE_SWITCH)
.add("gamepad face south",         "[sprControls_Nintendo,0]")
.add("gamepad face east",          "[sprControls_Nintendo,1]")
.add("gamepad face west",          "[sprControls_Nintendo,2]")
.add("gamepad face north",         "[sprControls_Nintendo,3]")
.add("gamepad shoulder l",         "[sprControls_Nintendo,8]")
.add("gamepad shoulder r",         "[sprControls_Nintendo,9]")
.add("gamepad trigger l",          "[sprControls_Nintendo,10]")
.add("gamepad trigger r",          "[sprControls_Nintendo,11]")
.add("gamepad select",             "[sprControls_Nintendo,17]")
.add("gamepad start",              "[sprControls_Nintendo,16]")
.add("gamepad dpad left",          "[sprControls_Nintendo,6]")
.add("gamepad dpad right",         "[sprControls_Nintendo,7]")
.add("gamepad dpad up",            "[sprControls_Nintendo,4]")
.add("gamepad dpad down",          "[sprControls_Nintendo,5]")

.add("gamepad thumbstick l left",  "[sprControls_Nintendo,6]")
.add("gamepad thumbstick l right", "[sprControls_Nintendo,7]")
.add("gamepad thumbstick l up",    "[sprControls_Nintendo,4]")
.add("gamepad thumbstick l down",  "[sprControls_Nintendo,5]")
.add("gamepad thumbstick l click", "[sprControls_Nintendo,14]")

.add("gamepad thumbstick r left",  "[sprControls_Nintendo,22]")
.add("gamepad thumbstick r right", "[sprControls_Nintendo,23]")
.add("gamepad thumbstick r up",    "[sprControls_Nintendo,20]")
.add("gamepad thumbstick r down",  "[sprControls_Nintendo,21]")
.add("gamepad thumbstick r click", "[sprControls_Nintendo,15]")
  
//Not available on the Switch console itself but available on other platforms
.add("gamepad guide",              "[sprControls_Nintendo,19]")
.add("gamepad misc 1",             "[sprControls_Nintendo,18]")

//Left-hand Switch JoyCon
//This setup assums horizontal hold type
input_icons_gamepad(INPUT_GAMEPAD_TYPE_JOYCON_LEFT)
.add("gamepad face south",         "[sprControls_Nintendo,0]")
.add("gamepad face east",          "[sprControls_Nintendo,1]")
.add("gamepad face west",          "[sprControls_Nintendo,2]")
.add("gamepad face north",         "[sprControls_Nintendo,3]")
.add("gamepad shoulder l",         "[sprControls_Nintendo,12]")
.add("gamepad shoulder r",         "[sprControls_Nintendo,13]")
.add("gamepad start",              "[sprControls_Nintendo,17]")

.add("gamepad thumbstick l left",  "[sprControls_Nintendo,6]")
.add("gamepad thumbstick l right", "[sprControls_Nintendo,7]")
.add("gamepad thumbstick l up",    "[sprControls_Nintendo,4]")
.add("gamepad thumbstick l down",  "[sprControls_Nintendo,5]")
.add("gamepad thumbstick l click", "[sprControls_Nintendo,14]")

//Not available on the Switch console itself but available on other platforms
.add("gamepad select",             "[sprControls_Nintendo,18]")

//Right-hand Switch JoyCon
//This setup assums horizontal hold type
input_icons_gamepad(INPUT_GAMEPAD_TYPE_JOYCON_RIGHT)
.add("gamepad face south",         "[sprControls_Nintendo,0]")
.add("gamepad face east",          "[sprControls_Nintendo,1]")
.add("gamepad face west",          "[sprControls_Nintendo,2]")
.add("gamepad face north",         "[sprControls_Nintendo,3]")
.add("gamepad shoulder l",         "[sprControls_Nintendo,12]")
.add("gamepad shoulder r",         "[sprControls_Nintendo,13]")
.add("gamepad start",              "[sprControls_Nintendo,16]")

.add("gamepad thumbstick l left",  "[sprControls_Nintendo,6]")
.add("gamepad thumbstick l right", "[sprControls_Nintendo,7]")
.add("gamepad thumbstick l up",    "[sprControls_Nintendo,4]")
.add("gamepad thumbstick l down",  "[sprControls_Nintendo,5]")
.add("gamepad thumbstick l click", "[sprControls_Nintendo,14]")

//Not available on the Switch console itself but available on other platforms
.add("gamepad select",             "[sprControls_Nintendo,19]")

//Xbox 360
input_icons_gamepad(INPUT_GAMEPAD_TYPE_XBOX_360)
.add("gamepad face south",         "[sprControls_Xbox,0]")
.add("gamepad face east",          "[sprControls_Xbox,1]")
.add("gamepad face west",          "[sprControls_Xbox,2]")
.add("gamepad face north",         "[sprControls_Xbox,3]")
.add("gamepad shoulder l",         "[sprControls_Xbox,8]")
.add("gamepad shoulder r",         "[sprControls_Xbox,9]")
.add("gamepad trigger l",          "[sprControls_Xbox,10]")
.add("gamepad trigger r",          "[sprControls_Xbox,11]")
.add("gamepad select",             "[sprControls_Xbox,14]")
.add("gamepad start",              "[sprControls_Xbox,15]")
.add("gamepad dpad left",          "[sprControls_Xbox,6]")
.add("gamepad dpad right",         "[sprControls_Xbox,7]")
.add("gamepad dpad up",            "[sprControls_Xbox,4]")
.add("gamepad dpad down",          "[sprControls_Xbox,5]")

.add("gamepad thumbstick l left",  "[sprControls_Xbox,6]")
.add("gamepad thumbstick l right", "[sprControls_Xbox,7]")
.add("gamepad thumbstick l up",    "[sprControls_Xbox,4]")
.add("gamepad thumbstick l down",  "[sprControls_Xbox,5]")
.add("gamepad thumbstick l click", "[sprControls_Xbox,12]")

.add("gamepad thumbstick r left",  "[sprControls_Xbox,20]")
.add("gamepad thumbstick r right", "[sprControls_Xbox,21]")
.add("gamepad thumbstick r up",    "[sprControls_Xbox,18]")
.add("gamepad thumbstick r down",  "[sprControls_Xbox,19]")
.add("gamepad thumbstick r click", "[sprControls_Xbox,13]")

//PlayStation 4
input_icons_gamepad(INPUT_GAMEPAD_TYPE_PS4)
.add("gamepad face south",         "[sprControls_Playstation,0]")
.add("gamepad face east",          "[sprControls_Playstation,1]")
.add("gamepad face west",          "[sprControls_Playstation,2]")
.add("gamepad face north",         "[sprControls_Playstation,3]")
.add("gamepad shoulder l",         "[sprControls_Playstation,8]")
.add("gamepad shoulder r",         "[sprControls_Playstation,9]")
.add("gamepad trigger l",          "[sprControls_Playstation,10]")
.add("gamepad trigger r",          "[sprControls_Playstation,11]")
.add("gamepad select",             "[sprControls_Playstation,15]")
.add("gamepad start",              "[sprControls_Playstation,14]")
.add("gamepad dpad left",          "[sprControls_Playstation,6]")
.add("gamepad dpad right",         "[sprControls_Playstation,7]")
.add("gamepad dpad up",            "[sprControls_Playstation,4]")
.add("gamepad dpad down",          "[sprControls_Playstation,5]")

.add("gamepad thumbstick l left",  "[sprControls_Playstation,6]")
.add("gamepad thumbstick l right", "[sprControls_Playstation,7]")
.add("gamepad thumbstick l up",    "[sprControls_Playstation,4]")
.add("gamepad thumbstick l down",  "[sprControls_Playstation,5]")
.add("gamepad thumbstick l click", "[sprControls_Playstation,12]")

.add("gamepad thumbstick r left",  "[sprControls_Playstation,20]")
.add("gamepad thumbstick r right", "[sprControls_Playstation,21]")
.add("gamepad thumbstick r up",    "[sprControls_Playstation,18]")
.add("gamepad thumbstick r down",  "[sprControls_Playstation,19]")
.add("gamepad thumbstick r click", "[sprControls_Playstation,13]")

.add("gamepad touchpad click",     "[sprControls_Playstation,17]")

//PlayStation 1-3
input_icons_gamepad(INPUT_GAMEPAD_TYPE_PSX)
.add("gamepad face south",         "[sprControls_Playstation,0]")
.add("gamepad face east",          "[sprControls_Playstation,1]")
.add("gamepad face west",          "[sprControls_Playstation,2]")
.add("gamepad face north",         "[sprControls_Playstation,3]")
.add("gamepad shoulder l",         "[sprControls_Playstation,8]")
.add("gamepad shoulder r",         "[sprControls_Playstation,9]")
.add("gamepad trigger l",          "[sprControls_Playstation,10]")
.add("gamepad trigger r",          "[sprControls_Playstation,11]")
.add("gamepad select",             "[sprControls_Playstation,15]")
.add("gamepad start",              "[sprControls_Playstation,14]")
.add("gamepad dpad left",          "[sprControls_Playstation,6]")
.add("gamepad dpad right",         "[sprControls_Playstation,7]")
.add("gamepad dpad up",            "[sprControls_Playstation,4]")
.add("gamepad dpad down",          "[sprControls_Playstation,5]")

.add("gamepad thumbstick l left",  "[sprControls_Playstation,6]")
.add("gamepad thumbstick l right", "[sprControls_Playstation,7]")
.add("gamepad thumbstick l up",    "[sprControls_Playstation,4]")
.add("gamepad thumbstick l down",  "[sprControls_Playstation,5]")
.add("gamepad thumbstick l click", "[sprControls_Playstation,12]")

.add("gamepad thumbstick r left",  "[sprControls_Playstation,20]")
.add("gamepad thumbstick r right", "[sprControls_Playstation,21]")
.add("gamepad thumbstick r up",    "[sprControls_Playstation,18]")
.add("gamepad thumbstick r down",  "[sprControls_Playstation,19]")
.add("gamepad thumbstick r click", "[sprControls_Playstation,13]")

//Nintendo Gamecube
input_icons_gamepad(INPUT_GAMEPAD_TYPE_GAMECUBE)
.add("gamepad face south",         "[[A]")
.add("gamepad face east",          "[[X]")
.add("gamepad face west",          "[[B]")
.add("gamepad face north",         "[[Y]")
.add("gamepad shoulder r",         "[[Z]")
.add("gamepad trigger l",          "[[L]")
.add("gamepad trigger r",          "[[R]")
.add("gamepad start",              "[[START]")
.add("gamepad dpad left",          "[[LEFT]")
.add("gamepad dpad right",         "[[RIGHT]")
.add("gamepad dpad up",            "[[UP]")
.add("gamepad dpad down",          "[[DOWN]")

.add("gamepad thumbstick l left",  "[[LEFT]")
.add("gamepad thumbstick l right", "[[RIGHT]")
.add("gamepad thumbstick l up",    "[[UP]")
.add("gamepad thumbstick l down",  "[[DOWN]")

.add("gamepad thumbstick r left",  "[[LEFT2]")
.add("gamepad thumbstick r right", "[[RIGHT2]")
.add("gamepad thumbstick r up",    "[[UP2]")
.add("gamepad thumbstick r down",  "[[DOWN2]")

//The following icons are for Switch GameCube controllers and adapters only
.add("gamepad thumbstick l click", "[[THUMB]")
.add("gamepad thumbstick r click", "[[THUMB2]")
.add("gamepad guide",              "[[HOME]")
.add("gamepad misc 1",             "[[CAPTURE]")

////A couple additional examples for optional gamepad types (see __input_define_gamepad_types)
//
////Nintendo 64
//input_icons(INPUT_GAMEPAD_TYPE_N64)
//.add("gamepad face south",         "[A]")
//.add("gamepad face east",          "[B]")
//.add("gamepad shoulder l",         "[L]")
//.add("gamepad shoulder r",         "[R]")
//.add("gamepad trigger l",          "[Z]")
//.add("gamepad start",              "[start]")
//.add("gamepad dpad up",            "[dpad up]")
//.add("gamepad dpad down",          "[dpad down]")
//.add("gamepad dpad left",          "[dpad left]")
//.add("gamepad dpad right",         "[dpad right]")
//.add("gamepad thumbstick l left",  "[thumbstick left]")
//.add("gamepad thumbstick l right", "[thumbstick right]")
//.add("gamepad thumbstick l up",    "[thumbstick up]")
//.add("gamepad thumbstick l down",  "[thumbstick down]")
//.add("gamepad thumbstick r left",  "[C left]")
//.add("gamepad thumbstick r right", "[C right]")
//.add("gamepad thumbstick r up",    "[C up]")
//.add("gamepad thumbstick r down",  "[C down]")
//
////Sega Saturn
//input_icons(INPUT_GAMEPAD_TYPE_SATURN)
//.add("gamepad face south", "[A]")
//.add("gamepad face east",  "[B]")
//.add("gamepad face west",  "[X]")
//.add("gamepad face north", "[Y]")
//.add("gamepad shoulder l", "[L]")
//.add("gamepad shoulder r", "[Z]")
//.add("gamepad trigger l",  "[R]")
//.add("gamepad trigger r",  "[C]")
//.add("gamepad select",     "[mode]")
//.add("gamepad start",      "[start]")
//.add("gamepad dpad up",    "[dpad up]")
//.add("gamepad dpad down",  "[dpad down]")
//.add("gamepad dpad left",  "[dpad left]")
//.add("gamepad dpad right", "[dpad right]")

#endregion
