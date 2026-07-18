# MyBinder-ready repository

This repository is configured to launch with [MyBinder](https://mybinder.org/).

## Upload and launch

1. Upload these files and your notebooks (`.ipynb`) or Python scripts to a GitHub repository.
2. Open [mybinder.org](https://mybinder.org/), paste the GitHub repository URL, and select the branch or tag to launch.
3. Click **Launch**. Binder installs the packages listed in `requirements.txt` and starts JupyterLab.

## Add project packages

Add any Python libraries your notebooks need to `requirements.txt`, one package per line. For example:

```text
pandas
matplotlib
scikit-learn
```

`runtime.txt` selects Python 3.11 for the Binder environment.
