# Git Commands
A list of my commonly used Git commands



### Clone

	git clone ssh://git@github.com/[username]/[repository-name].git

### Push an existing folder

	git init
	git remote add origin git@gitlab.com:PingAK9/scan-code-lite-flutter-app.git
	git add .
	git commit -m "Initial commit"
	git push -u origin master
    
### Remove git
	
    cd your_project
    open .git
    -> Click and remove ".git" folder

### Snapshotting

	git status
	git add [file-name.txt]
	git add -A
	git commit -m "[commit message]"
	git push
	git pull

### Log

    git log
    git log --summary
    git log --oneline
    git log –follow[file]  
    git diff [source branch] [target branch]
    
### Utility

	git reset [file]  
	git clean -f -x -d
    

### Branching & Merging

| Command | Description |
| ------- | ----------- |
| `git branch` | List branches (the asterisk denotes the current branch) |
| `git branch -a` | List all branches (local and remote) |
| `git branch [branch name]` | Create a new branch |
| `git branch -d [branch name]` | Delete a branch |
| `git push origin --delete [branch name]` | Delete a remote branch |
| `git checkout -b [branch name]` | Create a new branch and switch to it |
| `git checkout -b [branch name] origin/[branch name]` | Clone a remote branch and switch to it |
| `git branch -m [old branch name] [new branch name]` | Rename a local branch |
| `git checkout [branch name]` | Switch to a branch |
| `git checkout -` | Switch to the branch last checked out |
| `git checkout -- [file-name.txt]` | Discard changes to a file |
| `git merge [branch name]` | Merge a branch into the active branch |
| `git merge [source branch] [target branch]` | Merge a branch into a target branch |
| `git stash` | Stash changes in a dirty working directory |
| `git stash clear` | Remove all stashed entries |

### TODO
https://www.atlassian.com/git/tutorials/inspecting-a-repository/git-tag
