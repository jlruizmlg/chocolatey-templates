chocolatey-templates
====================

* Templates for creating Chocolatey (http://www.chocolatey.org/) packages

## Create or Update a Package
### Path and Environment Variables
* You need to be able to find *cpack* and certain scripts depend on the *ChocolateyInstall* variable.
```bash
set PATH=%PATH%;C:\Chocolatey\bin
set ChocolateyInstall=C:\Chocolatey
```

### Run the Chocolatey Packager
* In the directory where the nuspec is:
```bash
cpack
```

## Test a Package
* In the same directory as the .nupkg file

### Test Local Package only
```bash
cinst packageName -source %cd%
```

### Force Re-install of a package
```bash
cinst packageName -source %cd% -force
```

### Enable Debug logging/output for an installation
```bash
cinst packageName -source %cd% -debug
```

## Push a Package
### From the Commandline
* Retrieve API Key from https://chocolatey.org/account
```bash
choco push packageName.nupkg --source https://push.chocolatey.org
```

### From Website
* http://chocolatey.org/
