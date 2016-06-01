My .zshrc, .vimrc and .tmux.conf file configurations

## Useful fixes

When using virtualenv, matplotlib might produce the following error:

` **RuntimeError**: Python is not installed as a framework. The Mac OS X backend will not be able to function correctly if Python is not installed as a framework. See the Python documentation for more information on installing Python as a framework on Mac OS X. Please either reinstall Python as a framework, or try one of the other backends `

To resolve it:
 - create a file in the root ` ~/.matplotlib/matplotlibrc `
 - add the following code:  `$ backend: TkAgg `
