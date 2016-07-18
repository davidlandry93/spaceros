
(spacemacs/declare-prefix "aR" "ros")
(spacemacs/set-leader-keys "aRf" 'find-ros-file)
(spacemacs/set-leader-keys "aRs" 'find-ros-service)
(spacemacs/set-leader-keys "aRa" 'find-ros-action)
(spacemacs/set-leader-keys "aRm" 'find-ros-message)

(spacemacs/set-leader-keys "aRc" 'ros-core)
(spacemacs/set-leader-keys "aRl" 'ros-launch)

(spacemacs/declare-prefix "aRt" "topic")
(spacemacs/set-leader-keys "aRte" 'echo-ros-topic)
(spacemacs/set-leader-keys "aRti" 'ros-topic-info)
