drbuild
=======

A fairly simple bash script to assist with Drupal 7 development. This script only works if you're using *drush make*. So it's not one size fits all. When I have more time, more details will fill with readme.

Note: These instructions are incomplete and will stay that way for a while. Sorry :(

Installation
------------
Run install.sh to symlink drbuild and drbuild-completion to their respective folders. It's assumed that you already have a local *fill-in-the-blank*-AMP web server environment ready to go. 

Note: bash-completion may not be set up to read from .bash_completion.d by default. In that case, paste the following into **~/.bash_completion**.  
```. ~/.bash_completion.d/*```

After all that's done, it's time to set up a config file in your drupal project.

1. Navigate to your project root and run ```$ drbuild --generate-config``` to get a clean .drbuild config file template. Then edit the file with your editor of choise and fill in the values.
2. Run ```$ drbuild --config``` to see if all the values are read from your .drbuild correctly. Side-note: make sure you add this file to .gitignore.
3. When your .make files are ready to go, initiate your site with ```$ drbuild site``` and watch the magic happen.