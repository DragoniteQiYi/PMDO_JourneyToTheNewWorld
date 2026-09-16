# Tutorial:Getting Started With Git

> 来源：https://wiki.pmdo.pmdcollab.org/wiki/Tutorial:Getting_Started_With_Git

This is a tutorial on how to start using Git, a popular version control and code collaboration software.

## What is Git and why are we dealing with Git in the first place?

Git is a software that tracks changes to your code and other files in a project and lets you save snapshots (called "commits") of the project at a given point in time. This is useful in multiple ways:

- You must save your code in order to run it and test if it works, so committing acts as a sort of "super-save" once you know you have something good.
- If you make a change and it causes your code to no longer work, we can **revert** to a previous commit that we know did work and start again.
- If someone else wants to ask you how you fixed a particular bug, you can look through your history of commits and see exactly what changes you made.
- The history of commits can be uploaded to the Internet as a form of backup. The most popular service for this is Github.
- Once uploaded to the Internet, Git provides an interface for other collaborators to write code based on yours and let you add those changes to your project.

## How do I get started?

On its own, Git is run by typing commands into a command prompt. This is somewhat user-unfriendly, so we'll use a **Git client** that will let us press buttons instead. The author's preferred client is [Git Fork](https://git-fork.com/), but there are other popular options such as [Github Desktop](https://desktop.github.com/) (more straightforward but obfuscates information, mandates you use Github) and [GitKraken](https://www.gitkraken.com/). If you are using Visual Studio Code as your text editor, there is also a Git client built into the program as well.

We start by creating a new **repository** (project. "Repo" for short) in the folder where you will be writing your code. In the case of a PMDO mod or quest, this should be `PMDO/MODS/[your mod]`.

- Fork: File > Create new local repository
- Desktop: "Create a new repository" button or File > New Repository
- Kraken: "Create Repo" button or File > Init Repo
- Command line: `cd [path to your repo] && git init`

## Making a commit

Next, we'll commit everything you've got now as your first commit. We'll add the message "First commit" as well, so we know what this commit contains. (You can also add a longer description, but this is optional)

- Fork: Choose the "Local Changes" view on the top of the left sidebar. Select every unstaged file, then click the Stage button so they show up on the bottom. Add "First Commit" as the commit subject on the bottom text box, then click Commit.
- Desktop: Select everything on the left sidebar, add the title "First commit", then press "Commit to Main" below
- Kraken: Click "Stage all changes" on the right sidebar, add "First commit" as the summary, then click the green button at the bottom.
- Command line: `git add * && git commit -m "First commit"`.
  You can view what you're adding and what's staged with `git status`.

Congrats, you've made your first commit! Every time you make a significant bit of progress and get something working, you'll want to commit it so that it's properly saved.

### Viewing a list of past commits

If you want to view a list of past commits:

- Fork: Select the "All Commits" view from the top of the left sidebar.
- Desktop: Select "History" from the top of the left sidebar.
- Kraken: Should be visible by default.
- Command line: `git log`

## Getting it onto Github

Let's now upload your repository to Github. That should protect us from any random hard drive failures or other similar problems, and it will make it easy to share your code with others if you need to ask for help.

First, head off to Github and make an account. The next steps vary a little depending on what client you're using. Skip any subheaders that don't apply to you.

#### Everyone except Github Desktop: Making an empty remote repository

If you're not using Github Desktop, will need to make an empty repository on Github to contain your code. Click the green New button on your dashboard or select it from the plus button on the top sidebar on the right. Choose a name for the Github copy of your repo, **make sure you DON'T add a read me**, then click Create Repository.

#### Command line only: Making an access token

If you're using the command line we need to create an access token for our local copy of Git to talk to Github. (They used to let you just use your password, but not anymore...)

1. Click your profile picture in the top right, then Settings.
2. On the side bar, click Developer Settings, then Personal Access Tokens > Tokens (classic).
3. Select Generate new token > (classic) from the drop down menu.
4. Set the Note as "Git Fork token" or "Github Desktop token" or "GitKraken token" or "Command line token".
5. Check "Repo", "Workflow", and "write:packages" in the big list of check boxes, then click "Generate Token"
6. Your token will appear in the green box. Copy this and save it immediately to your password manager — you can't ever view it again.

Save that token for later. Write it in your password manager!

#### Everyone: Last steps

Now, we need to add a link your Github repo on Github as a **remote** repository. ("Remote" meaning "far away" here.)

- Fork: Right click the "Remotes" header, then paste your URL in the second field. Leave the first one as "origin". Then, go to the top menu > Accounts. Select Github, log in with your account password, and authorize Fork to push to your repository.
- Desktop: This is done in a single step below. Keep reading.
- Kraken: Hover over the "Remote" header on the left sidebar and click the green + button. Choose Github, then click "Connect to Github" twice. Authorize GitKracken to access your account, then go back and select your repository.
- Command line: `git remote add origin [url of your github repo]`.

(The remote repo being named "origin" isn't a PMDO thing — this is just convention among software developers.)

Then, we will push our changes to the repository on Github:

- Fork: Click the Push button on the top menu bar.
- Desktop: The button on the top right will either say "Publish repository" or "Push origin". Click this — if prompted to name your new Github repository, do so.
- Kraken: Click the Push button.
- Command line: `git push -U origin master`. When prompted for your password, copy-paste in the token you generated earlier instead.

If everything is successful, you should have a copy of your repository stored on Github. It's good to push every now and then to make sure your work is backed up, or if you want someone else to look at your code, or if it's time for a public release.

## Sticking with the program, and good habits to form

The software is only useful if you use it regularly, so you'll want to get into some good habits. Whenever you finish a feature, you should add the files you edited and commit them. Some general principles with commits:

- **Whenever you have a new working feature or fix a bug, make a commit.** The goal is to always have a "last known good" version you can revert back to in case things go awry. The more often you make commits when things are good, the less progress you are at risk of losing should bad things happen.
- **Many small commits are better than one big commit. Try to make a single commit for each feature or bug.** This makes it easier to track when each individual change happens, and it makes it easier to revert only a particular change if needed.
- **Make your commit messages descriptive.** It's easier to pinpoint a buggy edit if you label each commit with exactly what it did. A hundred commits all labeled "more code" might as well not be labeled at all. This will also let you tell what you were doing when you last edited a particular file or line.
- **Don't forget to push your commits.** This is what gives us protection from things like hard drive failures or house fires.
