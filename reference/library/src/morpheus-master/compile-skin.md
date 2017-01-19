# Duke specific instructions
1. Merge changes from github
  1. * Update your ***local*** repository frequently to stay up to date:
  `git checkout master` (switch to ***local*** `master` branch)
	**You may want to skip these next two steps if you are designing for a release and not master**
  2. `git pull upstream master` (`pull` in any ***upstream*** changes)
  3. `git push origin master` (`push` the changes up to the ***origin***)
  `git checkout duke-skins` (switch to the duke-skins branch)
2. Add `@import "duke/overrides.scss";` to the end of sass/tool.scss. Merging from master may have overwritten this.
3. Compile
  1. `cd /opt/sakai/reference` (move terminal to reference to only compile that module)
  2. `mvn clean install -Dsakai.skin.target=duke-default -Dsakai.skin.customization.file=src/morpheus-master/duke/duke-default.scss sakai:deploy` (change `duke-default` to reflect the skin you're working on)
4. Test on production
  1. Download the Switcheroo Redirector Chrome plugin `https://chrome.google.com/webstore/detail/switcheroo-redirector/cnmciclhnghalnpfhhleggldniplelbg/related?hl=en`
  2. Add a redirect for `https://sakai.duke.edu/library/skin/duke-default` to `https://duke-cit.github.io/sakai/reference/library/src/webapp/skin/duke-default`

Refresh. **the gh-pages branch must have the updated code for this to work**
# Compile your own skin with Maven

Change anything you want to customize inside morpheus-master folder or even duplicate morpheus-master into another folder to keep source of different skins.
Then type:

`mvn clean install`

If you want to change any configuration in _defaults.scss to easily customize your own skin you just need to point to the file with those changes. It will be copied by maven in the proper place:

`mvn clean install -Dsakai.skin.customization.file=/folder/to/your/file.scss`

For example:

 - To generate without icons: 
 `mvn clean install -Dsakai.skin.customization.file=./src/morpheus-master/sass/examples/_customization_example_withouticons.scss`
 - To generate with another google font: 
 `mvn clean install -Dsakai.skin.customization.file=./src/morpheus-master/sass/examples/_customization_example_typography.scss`

By default source is morpheus-master and target is morpheus-default, but you can change these folders typing:

`mvn clean install -Dsakai.skin.source=<morpheus-source> -Dsakai.skin.target=<morpheus-target>`

We have uploaded a non-icons version compiled by:

`mvn clean install -Dsakai.skin.target=morpheus-default-noicons -Dsakai.skin.customization.file=./src/morpheus-master/sass/examples/_customization_example_withouticons.scss`

Feel free to repeat this commands to generate as many skins as you want.