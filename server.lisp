(in-package :mycroft/install)

(defvar *minecraft-server-uri*
  #p"https://s3.amazonaws.com/Minecraft.Download/versions/1.11.2/minecraft_server.1.11.2.jar")

(defun install (directory)
  (declare (ignore directory))
  (let ((d (ext:make-temp-directory)))
    (uiop/stream:copy-file
     *minecraft-server-uri*
     (merge-pathnames d *minecraft-server-uri*))))
