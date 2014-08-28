# ofont

<p align="center"><img width="200" height="90" alt="ofont logo" src="https://rawgithub.com/raphaelbastide/ofont/master/templates/styles/images/ofont.svg"></p>

Ofont is a free and open source tool for font collections. It runs in the browser and is easy to install on your server. You can try a copy of ofont at: [http://usemodify.com](http://usemodify.com/)

## Possible usages

- Foundry, microfoundry
- Font portfolio
- Online or offline font managment
- To share your favorites fonts!


## Features

- Tags, authors, licenses, related fonts field and more
- Extendable fields for your custom classification (text, image, PDF…)
- Upload webfont archive from [Fontsquirrel generator](http://www.fontsquirrel.com/tools/webfont-generator)
- Live text preview
- URL param for text preview: [demo](http://usemodify.com/?t=Look%20at%20the%20URL!)
- Font size slider
- Light / dark mode toggle
- Large / grid view for text preview
- List and browse taxonomies
- Fullscreen preview mode
- Search form

## Install

Ofont is based on ProcessWire, those information will help you to install it.

1. Download the dev version of [ProcessWire](https://github.com/ryancramerdesign/ProcessWire/archive/dev.zip) then unzip it to another location.

2. Before installing ProcessWire, rename the folder `/site-default/` to `/site/` then copy and paste these files from ofont directory to ProcessWire directory:

        /site/install/
        /site/templates/
        /site/modules/
	`/config-example.php`
	`/LICENSE`

3. Create a new dedicated SQL database using [PhpMyAdmin](http://www.phpmyadmin.net/home_page/index.php).

4. Rename the file `config-example.php` to `config.php`.

5. After you've completed the steps above, run the installer for the new site by loading it in your browser and follow the instructions.

## When Finished

It's not good to leave the exported profile lying around as it may be consuming quite a bit of disk space. As a result, I recommend that you remove the profile when done with all of the above steps (`/site/install/install.sql`).

## Customise

Ofont uses [Stylus](http://learnboost.github.io/stylus/) for CSS compiling, and [Fontello](http://fontello.com/) to generate icon font.

## Update to the latest ofont version

Ofont is still in development, so it may regularly come new features. To update your ofont to the latest available version follow those steps :

1. First of all, for safety it is recommended to backup your database.

2. Copy and paste these files from the latest ofont directory to your current directory:

        /site/templates/
        /site/modules/

3. In your ProcessWire admin, go to `Admin->Modules` then click * Check for New Modules*. If new modules are found, install it.

4. Copy the content of `/updateFiles/fields.txt` from the latest ofont directory and paste it to `Admin->Setup->Fields->Import` in your ProcessWire admin. Click *Preview* then agree to every changes.

5. Copy the content of `/updateFiles/templates.txt` from the latest ofont directory and paste it to `Admin->Setup->Templates->Import` in your ProcessWire admin. Click *Preview* then agree to every changes.

6. Enjoy!

## License

This website profile is under [GNU/GPLv3 License](https://www.gnu.org/licenses/gpl-3.0.en.html).
