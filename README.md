# cdim

### Setup
Clone the script and setup the following alias. In order for cd to work in a script, we must source it as to avoid a subshell. If cloned into somewhere in $PATH, you can replace ```path_to_script``` with cdim.

```bash
alias cdim='. path_to_script'
```

### Sample Usage
```
[anthony@bloom Programming]$ cdim tmp -g 
1.  /tmp
2.  /usr/lib/node_modules/create-react-app/node_modules/tmp
3.  /usr/lib/node_modules/create-react-app/node_modules/external-editor/node_modules/tmp
4.  /usr/lib/node_modules/surge/node_modules/tmp
5.  /var/lib/snapd/snap/core/8935/tmp
6.  /var/lib/snapd/snap/core/8935/var/tmp
7.  /var/lib/snapd/snap/core/9066/tmp
8.  /var/lib/snapd/snap/core/9066/var/tmp
9.  /var/tmp
10. /home/anthony/.config/libreoffice/4/user/extensions/tmp
11. /home/anthony/Programming/website/node_modules/tmp
12. /home/anthony/Programming/website/node_modules/.cache/terser-webpack-plugin/tmp
13. /home/anthony/.local/share/Trash/files/NetBeansProjects/hw8/build/tmp
14. /home/anthony/.npm/_cacache/tmp
Enter input: 6
[anthony@bloom tmp]$ pwd
/var/lib/snapd/snap/core/8935/var/tmp
```
## Man Page

#### Name
cdim - **c**hange **d**irectory **im**proved, a lazy programmers shell script for those dissapointed by shopt's ```autocd```

#### Synopsis
```cdim name [-g] [-d depth]```

#### Description
**cdim** is a shell script aimed at being better than cd. By simply typing ```cd Directory```, you will be taken to ```.../Directory``` or if multiple results are found, a list will be populated for you to select from.

The command most often used is simply

```cdim name```

By default, cdim searched from the home directory - ```$HOME```

The script will **not** work properly without a name parameter to search for.

#### Options
The options may be given in any order, before or after name to be searched.

-g

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Global mode. cdim will search from ```/``` instead of its default of ```$HOME```.

-d [num]

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sets depth of search, maxdepth for find, to num, Use to speedup runtime by limiting recursive search.
