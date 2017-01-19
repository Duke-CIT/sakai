# Compiling skins
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
  3. Refresh. **the gh-pages branch must have the updated code for this to work**

# Useful git commands
## Delete branch
`git push origin --delete <branch_name>`
`git branch -d <branch_name>`

## Merge working branch changes into gh-pages
`git checkout gh-pages`
`git merge <working_branch_name>` These changes must have already been pushed to origin
`git push origin gh-pages`