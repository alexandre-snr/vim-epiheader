# EpiHeader for vim

## What is it ?
EpiHeader for vim is a vim plugin that allows you to print (post-2017) epitech headers in file.
It exposes a command `:EpitechHeader` that prints the header as follow:

    /*
    ** EPITECH PROJECT, YEAR
    ** WORKING DIRECTORY   
    ** File description:
    ** FILE NAME WITHOUT EXTENSION       
    */

An example would be:

    /*
    ** EPITECH PROJECT, 2020   
    ** PSU_my_ls_2019   
    ** File description:
    ** main                  
    */

In order for the project's name to work, you have to open vim in the root of your project, i recommand using NERDTree to navigate your project's files afterward.
This plugin is heavily inspired by [https://github.com/x4m3/vim-epitech](https://github.com/x4m3/vim-epitech) which is itself inspired by [https://github.com/Le-Bit/vim-epitech](https://github.com/Le-Bit/vim-epitech).

## Installation
Example using Vundle:

 1. add `Plugin 'alexandre-snr/vim-epiheader'` to your .vimrc
 2. reload the .vimrc file with `:source %`
 3. run `:PluginInstall`

## License
Feel free to do anything with this.
