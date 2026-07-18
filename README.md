# Ubuntu terminal on MyBinder

This repository builds a plain Ubuntu 24.04 environment for [MyBinder](https://mybinder.org/). It opens directly into a browser terminal instead of a notebook interface.

## Launch

1. Push these files to a GitHub repository.
2. Open `https://mybinder.org/v2/gh/<your-github-user>/<your-repository>/HEAD`.
3. When the build finishes, use the terminal that opens automatically.

The image includes Bash, Python 3, Git, Curl, Nano, Vim, and password-free `sudo` for the temporary `binder` user. MyBinder sessions are temporary and changes are not retained after the session ends.
