# Minecraft Server Template

> This repository contains all of the files needed to start a minecraft server including scripts to make the setup process easier as well as some optional libraries and mods.

## Getting Started

Clone the repo and run the batch file `start_server.bat` inside the `/scripts` directory. This will generate the initial world files and any other necessary data. It might take a few minutes initially to generate the world. Once the spawn area is finished loading, you should be able to connect to the server by entering `localhost` as the server address in the Minecraft client.

## Changing Server Properties

Server properties can be changed by opening the file `server.properties` located in the `/server` directory and modifying the properties with a text editor. At the very least, you will probably want to give your server a name. Some properties can also be changed by running [server commands](https://minecraft.gamepedia.com/Commands).

## Connecting Players

To play with friends you must open a network connection to the server via your IP address, which your friends will use to connect. You will also need to set up port forwarding inside your router settings. Detailed instructions on how to do this can be found on the [Minecraft Wiki](https://minecraft.gamepedia.com/Tutorials/Setting_up_a_server).

## Generating a World Map

Included in the template is the popular [Minecraft Overviewer](https://overviewer.org/) library. First unzip the `overviewer.zip` file in `/lib`, then simply run the batch file `generate_map.bat` inside the `/scripts` directory. By default, it is set up to generate a simple day/night map. The output will be placed inside the `/map` directory.

You can generate a full map (overworld, nether, the end, etc) by modifying the batch file and changing `simplemap.config` to `fullmap.config`. If you'd like, you can even customize the map configs or create new ones.

## Regenerating the World

If you do not like your world seed and want to regenerate the world, you can run the batch file `regenerate_world.bat` inside the `/scripts` directory. **Caution: This will permanently delete all of your current world data. If you do not want to lose your world, back it up before running the script.** Make sure to also stop the server before running the script to ensure it does not cause any problems.
