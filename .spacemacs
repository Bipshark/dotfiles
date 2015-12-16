;; -*- mode: dotspacemacs -*-

(defun dotspacemacs/layers ()
  (setq dotspacemacs-configuration-layers `(
    (osx :variables osx-use-option-as-meta nil)
    themes-megapack
    haskell
    git
    spotify)))

(defun dotspacemacs/user-config ()
  "This is were you can ultimately override default Spacemacs configuration.
This function is called at the very end of Spacemacs initialization."
  (setq powerline-default-separator nil)
  (global-linum-mode))

(defun dotspacemacs/init ()
  (add-to-list 'exec-path "~/.cabal/bin/"))

(setq-default
  dotspacemacs-editing-style 'vim
  dotspacemacs-themes '(gruvbox)
  dotspacemacs-smooth-scrolling nil
  mouse-wheel-progressive-speed nil)

