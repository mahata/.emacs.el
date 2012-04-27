import os

os.system("mkdir %s/.emacs.d" % (os.environ['HOME']))
os.system("ln -s %s/.emacs.el %s/.emacs.el" % (os.path.abspath(os.path.dirname(__file__)), os.environ['HOME']))
os.system("ln -s %s/init-loader %s/.emacs.d/init-loader" % (os.path.abspath(os.path.dirname(__file__)), os.environ['HOME']))
os.system("ln -s %s/inits %s/.emacs.d/inits" % (os.path.abspath(os.path.dirname(__file__)), os.environ['HOME']))
os.system("ln -s %s/lisp %s/.emacs.d/lisp" % (os.path.abspath(os.path.dirname(__file__)), os.environ['HOME']))
