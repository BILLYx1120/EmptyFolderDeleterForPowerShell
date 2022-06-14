Author: Billyx1120

DeleteAllEmptyFoldersWithDirectorySizeZero是一个powershell脚本，它将删除它所在的目录下所有空文件夹或者是directory size为0的文件夹。
一个csv文件会被作为中间产物产生，用完了删了就是

你需要先下载disk usage以使用这个脚本：
https://docs.microsoft.com/en-us/sysinternals/downloads/du

powershell在运行外来的脚本的时候需要先把安全策略改掉：
	在运行本脚本之前请先运行：
	Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process
	这个命令会使powershell在当前进程下保持允许运行外来脚本，并且在关闭进程后将这个命令取消。


DeleteAllEmptyFoldersWithDirectorySizeZero is a powershell script, it will delete all the empty folders/ all the folders with a directory size 0 in the current directory.
A csv file will be created as a byproduct, delete it as you wish.

You need to download the disk usage first to run this script:
https://docs.microsoft.com/en-us/sysinternals/downloads/du

When running script on the PowerShell, you may need to change the Execution Policy:
	Before running the script, you may want to run:
	Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process
	This command will let the PowerShell to allow running scripts from outside within the process and this command will be canceled after the process is terminated.