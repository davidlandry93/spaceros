
(spacemacs/declare-prefix "aR" "ros")
(spacemacs/set-leader-keys "aRf" 'find-ros-file)
(spacemacs/set-leader-keys "aRs" 'find-ros-service)
(spacemacs/set-leader-keys "aRa" 'find-ros-action)
(spacemacs/set-leader-keys "aRm" 'find-ros-message)

(spacemacs/set-leader-keys "aRc" 'helm-ros-roscore)
(spacemacs/set-leader-keys "aRl" 'helm-ros-roslaunch)

(spacemacs/declare-prefix "aRt" "topic")
(spacemacs/set-leader-keys "aRte" 'echo-ros-topic)
(spacemacs/set-leader-keys "aRti" 'ros-topic-info)

(spacemacs/set-leader-keys "aRh" 'helm-ros)
(spacemacs/set-leader-keys "aRI" 'helm-ros-invalidate-cache)
