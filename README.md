James Kruth's Emacs Config
==========================

I created this project after I realized two things:

* I had half a dozen disparate Emacs configs hanging around.
* Configuring your editor is a lot like creating your own lightsaber
  in the Star Wars movies - a rite of passage.
  
So here's my attempt to make a sane, maintainable Emacs config for use
across all my various systems.  This should work in most modern
versions of Emacs, but I'm only testing with Emacs 23.4 at the moment.

Installing
----------

* Clone this repo to ~/.emacs.d
* Execute: cd ~/.emacs.d && git submodule init && git submodule update

To Do
-----

* Decide on some licensing
* Add some stuff to this list - or use github issues.
* Maybe combine my emacs cheatsheet?
* Integrate ELPA/Marmalade (or upgrade to Emacs 24)
* Get some decent git integration - probably magit
 * Magit is installed, but not the info files - decide how to deal
   with this.
 * Consider enabling rebase-mode for magit.
* Some modes I should consider:
 * YASnippet
 * ido-mode
 * pymacs/ropemacs?
 * org-mode
 * tramp
 * http://www.emacswiki.org/emacs/RevertBuffer - auto-revert-mode
 * css-mode?
* Some functions that might need keybindings:
 * delete-trailing-whitespace
 * goto-line
 
