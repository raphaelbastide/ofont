# ofont

<p align="center"><img width="200" height="90" alt="ofont logo" src="https://rawgithub.com/raphaelbastide/ofont/master/templates/styles/images/ofont.svg"></p>

Ofont is a CMS for typeface collections. You can visit an up to date copy of ofont in use on: [http://usemodify.com](http://usemodify.com/)

## Features

- Tags, authors, licenses, related fonts field and more.
- Extendable fields for your custom classification (text, image, PDF…)
- Upload webfont archive from [Fontsquirrel generator](http://www.fontsquirrel.com/tools/webfont-generator)
- Live text preview
- URL param for text preview: [demo](http://usemodify.com/?t=Look%20at%20the%20URL!)
- Font size slider
- Light / dark mode toggle
- Large / grid view for text preview
- Fullscreen preview mode
- Search form

## Install

Ofont is based on ProcessWire, those information will help you te install it.

1. Download the latest version of [ProcessWire](http://processwire.com/) to another location (whether another site or another directory on this server). If you downloaded it as an archive, then unzip it too.

2. Before running the installer for the new version of ProcessWire you just downloaded, you will want to replace the site profile that the new version comes with. To do that, replace these directories on the new installation with the same directories (located under /site/) from your current (this) installation:

        /site-default/install/
        /site-default/templates/
        /site-default/modules/

3. If you will be installing on the same server you are on now, create a new MySQL database for the new installation. You don't want to use the same database that the current site is using.

4. Replace the database configuration in `config-example.php` with your own configuration, then rename the file to `config.php`

5. After you've completed the steps above, run the installer for the new site by loading it in your browser and installing as you would any other new copy of ProcessWire. It will install with the site profile you created rather than the one that it comes with.

## When Finished

It's not good to leave your exported profile lying around as it may be consuming quite a bit of disk space. As a result, I recommend that you remove the profile when done with all of the above steps.

## Customise

Ofont uses [Stylus](http://learnboost.github.io/stylus/) for CSS compiling, and [Fontello](http://fontello.com/) to generate icon font.

## License

This website profile is under [MIT License](http://raphael.mit-license.org/).
