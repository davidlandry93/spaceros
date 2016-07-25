;;; packages.el --- spaceros layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: David Landry <davidlandry93@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `spaceros-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `spaceros/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `spaceros/pre-init-PACKAGE' and/or
;;   `spaceros/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst spaceros-packages
  '(
    (rosemacs :location
              (recipe
               :fetcher github
               :repo "davidlandry93/ros_emacs_utils"
               :files ("rosemacs" "rosemacs/*"))
              :disabled t)
    (ros-helm :location local))
  "The list of Lisp packages required by the spaceros layer.")

;; Init rosemacs

(defun spaceros/pre-init-rosemacs ())

(defun spaceros/init-rosemacs ()
  (when (getenv "ROS_DISTRO")
    (use-package rosemacs-config)))

(defun spaceros/post-init-rosemacs ())

;; Init ros-helm

(defun spaceros/pre-init-helm-ros ())

(defun spaceros/init-ros-helm ()
  (when (getenv "ROS_DISTRO")
    (use-package ros-helm
      :commands ros-helm
      :config (evilified-state-evilify-map
                ros-process-mode-map
                :mode ros-process-mode
                :eval-after-load ros-process-mode))))

(defun spaceros/post-init-helm-ros ())


;;; packages.el ends here
