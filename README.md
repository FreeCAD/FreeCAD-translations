## FreeCAD translations

[![Crowdin](https://d322cqt584bo4o.cloudfront.net/freecad/localized.svg)](https://crowdin.com/project/freecad)

Tracking FreeCAD localization and progress

### Contribute

**Important Note**: in order to maintain accuracy we ask that users install and run the most cutting edge development version of FreeCAD. This can be achieved in 2 ways:

1. Installing the latest pre-built development snapshots at https://github.com/FreeCAD/FreeCAD-Bundle/releases/tag/weekly-builds
2. Compiling FreeCAD yourself

Then create an account on the crowdsourced translation site we utilize on [Crowdin](https://crowdin.com/project/freecad)


#### Missing translations

If you're running the latest development snapshot and have found a missing translation for you language or a section of the UI isn't translated, please double-check [Crowdin](https://crowdin.com/project/freecad) to confirm. If so, then please open a [ticket](https://github.com/FreeCAD/FreeCAD-translations/issues) so we can track the issue.

#### Incorrect translations

Please use Crowdin to create an issue to discuss this with the language team. A proofreader or a manager will be able to change the translation. So please find out who those users are.

#### Translations are not in FreeCAD

Every so often we push new strings thast require translation in to Crowdin and pull translation back in to FreeCAD. Sometimes there is a window of time where we haven't done this. In this case translations won't go 'live' until we do this. Please be patient.

### Testing

Testing the "quality" of translations is a very valuable capability for FreeCAD GUI translators.
Thanks to this possibility you can check on a "living organism" whether the translated string is displayed correctly. You can adjust the form of the words used.
Without this the GUI interface would contain many grammatical and linguistic errors. Even in some cases would not be understandable to the user. And applying corrections to the current translations would be a tedious and very lengthy process.

1. What you will need:
- an active account with minimum translator privileges in Crowdin for FreeCAD,
- a computer running Linux, and the **qttools5-dev-tools** package *(Debian-based OS)* installed,
- a current development version of FreeCAD, available for download from the Git repository
- not required, but helpful **Qt Linguist** for viewing source files *(this is for folks more involved in GUI translation)*,
- and of course a lot of available time.

### Discussion


