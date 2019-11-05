## Assignment 1: Git & GitHub
---
#### *Here are a few git and GitHub commands we usually use in software development, please explain the meanings and use cases of them.*
  - ``git status``: Show current status of the working tree. It is used to display paths that is either staged (ready to commit), unstaged (modified compared to HEAD commit), or untracked (new files).
  - ``git add``: Add modified files to the staging area to be ready for commit.
  - ``git commit``: Record the changes to the branch
  - ``git log``: Show a list of the most recent commit.
  - ``git push [ Repo_name ]  [ Branch_name ]``: Push commits made on your local branch to a remote repository.
  - ``git remote -v``: Show a list of tracked repositories verbosely with a remote name followed by its url.
  - ``git branch``: List, create, or delete branches

  - ``fork``: Make a full copy of someone's repo into oneself's own repo on GitHub. One can do so to modify and work on an existing repo but having no authority to directly push to it. After completing the changes, a **pull request** can be submitted to ask for merging into the base repo.
---
#### *Please describe how to establish a github repo and how to upload the local projects to github. Try to explain it as detail as possible.*
###### Establish a GitHub repo
1. Go to GitHub webpage and log in to your account.
2. Click on the add button at the top-right corner next to your avatar icon, and click "New repository" button to get to the next page.
3. Fill in the name and description of the repo. Settings for adding .gitignore, README and LICENSE files are optional. 
4. Click "Create repository" button to establish a GitHub repo. 
###### Upload local projects to GitHub
1. Add the remote url as origin to git
```
> git remote add origin [git-url]
```
2. Use ``git remote -v`` to check if adding repo url properly, which may look like the following
```
> git remote -v
origin	git@github.com:charleshs/AS2019winter-remote-learning-assignments.git (fetch)
origin	git@github.com:charleshs/AS2019winter-remote-learning-assignments.git (push)
```
3. Use ``git add [file_paths]`` to stage files to be committed
(**``git add .``** to add all changes to the staging area)
Use ``git commit`` to commit staged files.
(**``git commit -m "description"``** for a commit without opening text editor.)


4. Push local branch to remote, namely uploading local files to GitHub server, by
``git push [repo_name] [branch_name]``

```
> git push origin master
```

