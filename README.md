# RotMG
Realm of the Mad God - MMORPG Flash video game.
<br>
This repository contain source of the game client.
## Requirements
- IntelliJ IDEA or other IDE.
- Flex/Air SDK.
## Setup
1. Clone the repository to your computer.
```
git clone https://github.com/AkuNicza/RotMG.git
```
2. Start IDE and create new project.
![Welcome](docs/images/Welcome%20menu.png)
3. On the left, choose base as Flash.
4. Check the "Pure ActionScript".
4. Choose your SDK.
5. Uncheck "Create sample app" and "Create HTML wrapper template".
![New project](docs/images/New%20project.png)
6. Go to the next window, choose name and location of project.
![New project naming](docs/images/New%20project%20naming.png)
7. Open tab File -> Project Structure. Or use default shortcut Ctrl + Alt + Shift + S.
8. Choose Flex/Air SDK and set language level to 10.
![Structure Project](docs/images/Structure%20Project.png)
9. Open tab Libraries and add project lib's.
![Libraries](docs/images/Library%20selecting.png)
10. Open tab Modules, select project and current module.
11. Select ROTMG as main class.
![Modules](docs/images/Modules.png)
12. Go to the compiler options and uncheck "Copy resource files to output folder", add this to additional compiler options:
```
-default-size 800 600 -default-frame-rate 60 -default-background-color #000000 -swf-version 30
```
![Options](docs/images/Modules%20options.png)