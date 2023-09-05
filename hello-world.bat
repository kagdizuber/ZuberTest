@(
    Echo On
    Title CMD Window with SVN enabled
    Set "PATH=%PATH%;D:\ummy\directory"
)
svn --version --quiet
@(
    Rem All other none echoed commands here
    Pause
    Echo Off
    Exit /B
)