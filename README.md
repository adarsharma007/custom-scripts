# Project Scripts

This project contains useful shell scripts to manage Node.js versions and Git operations.

## Scripts

### [change_node_version.sh](#file:change_node_version.sh-context)

This script helps to switch between different Node.js versions using `nvm`.

#### Usage

```bash
cnv [-v<version>]
```

If no version is specified, the script will toggle between the default versions 18.16.1 and 16.16.0.

If a version is specified in the format -v<version>, the script will switch to that version.

Example
```bash
cnv -v14.17.0
```

### [git_create_new_branch.sh](#file:git_create_new_branch.sh-context)

This script creates a new Git branch and checks it out.

#### Usage

```bash
gnb
```

The script will prompt you to enter a branch name.

The branch name must comply with the naming conventions: it can only contain letters, numbers, hyphens, dots, and underscores.

Example

```bash
gnb
```

When prompted, enter the branch name:

```bash
Enter the branch name: feature/new-feature
```

### [git_add_commit.sh](#file:git_add_commit.sh-context)

This script stages all changes and commits them with a user-provided commit message.

#### Usage
```bash
gac
```
The script will prompt you to enter a commit message.

You will need to confirm the commit message before the commit is made.

Example

```bash
gac
```

When prompted, enter the commit message:
```bash
Enter your commit message:
```
Then confirm the commit message:
```bash
Type 'y' to confirm, press any other key to decline: `Your commit message`
```

### Requirements

nvm must be installed and configured for cnb to work.

Git must be installed and configured for gcn and gac to work.

## Aliases

Add the following lines to your ~/.zshrc file to use the alias commands instead of the file names:

```bash
alias gac='sh /Users/adarshsharma/custom-scripts/git_add_commit.sh'
alias gnb='sh /Users/adarshsharma/custom-scripts/git_create_new_branch.sh'
alias cnv='sh /Users/adarshsharma/custom-scripts/change_node_version.sh'
```

### License

This project is licensed under the MIT License.