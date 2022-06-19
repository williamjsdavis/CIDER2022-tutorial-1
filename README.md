# CIDER2022-tutorial-1
CIDER 2022: Tutorial 1: Overview and Setup

William Davis, June 20

# Overview

This tutorial will be an introduction and overview of the computing tools that you will use. We will cover:

 - Python
    - Using Google Colab
 - MATLAB

If you have experience with computing, take this time to teach a colleague! 🙂

# Python

We will be using python in Google Colab notebooks.

Requirements:
 - Google account

In the tutorial I will go over:
- Add here...
- Q&A (throughout)

## Getting started

[Basic features overview of Google Colab](https://colab.research.google.com/notebooks/basic_features_overview.ipynb)

To make a new notebook:

Google Drive -> New -> More -> Google Colaboratory

Check the version with `!python --version`

### Loading notebooks

Download `daisyworld.ipynb` from the `python/` directory.

### Python resources

- [Official documentation](https://docs.python.org/3.7/contents.html)
- [Stack Overflow](https://stackoverflow.com/)
- [NumPy for MATLAB users](https://numpy.org/doc/stable/user/numpy-for-matlab-users.html)
- [Python for R users](https://richardson.byu.edu/624/lpython/PythonforRusers.pdf)
- [Markdown in Google Colab](https://colab.research.google.com/notebooks/markdown_guide.ipynb)
- [Plotting in Google Colab](https://colab.research.google.com/notebooks/charts.ipynb)
- [Another python tutorial](https://colab.research.google.com/github/cs231n/cs231n.github.io/blob/master/python-colab.ipynb)
- [Python Data Science Handbook](https://jakevdp.github.io/PythonDataScienceHandbook/)

# MATLAB

## Getting started

Everyone should have downloaded MATLAB with the free 30 day trial

In the tutorial I will go over:
- IDE (interactive development environment)
- Using the command window
- Using the editor
- Navigating folders and path
- Documentation
- Scripts and functions
- Q&A (throughout)

### MATLAB comprehension

Try these yourself, or work with others 🙂
  - Write a function and save it as a `.m` file
      - The function can be anything you like, e.g. sum the first 1000 primes
  - Run that function in the command window
  - Run that function from a `.m` script
  - Write another function that calls the first one. Save that to a file
  - Repeat 2&3 for this new function
  - Write a script that calls another script
      - Why would this be useful? What benefit/difficulty does this have over a function?
  - Write a function and then rename it. See what happens
  - Write a function and put it at the bottom of a script. Call it at the top of the script. What happens?
      - Try writing a function in the middle of a script and see what happens
  - Look into anonymous functions
      - [Anonymous function documentation](https://www.mathworks.com/help/matlab/matlab_prog/anonymous-functions.html)
      - What are the differences between these and regular functions?
      - Why might they be useful?
  - Run the following code snippet
      - `A = [0,0,0];B = A;B(2) = 1;A`
      - Is this what you expected?
      - Try something similar in python and see what happens

### MATLAB resources

 - [Official documentation](https://www.mathworks.com/help/matlab/)
 - [Summary of basic functions](https://www.mathworks.com/content/dam/mathworks/fact-sheet/matlab-basic-functions-reference.pdf)
 - [MATLAB for python users](https://blogs.mathworks.com/student-lounge/2021/02/19/introduction-to-matlab-for-python-users/)
 - [MATLAB for python users cheatsheet](https://www.mathworks.com/content/dam/mathworks/fact-sheet/matlab-for-python-users-cheat-sheet.pdf)
 - [MATLAB for R users](https://cran.r-project.org/doc/contrib/Hiebeler-matlabR.pdf)

# Other resources

- [Scientific computing presentation]([https://docs.python.org/3.7/contents.html](https://posgeo.files.wordpress.com/2021/05/scientific-computing-languages.pdf))
- [MATLAB-Julia-Python cheatsheet](https://cheatsheets.quantecon.org/)

