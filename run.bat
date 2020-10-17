cd /d %~dp0
@docker-compose up -d
rmdir .\localhost\htdocs
xcopy /B .\symlink\htdocs .\localhost\htdocs\
@echo "Access to http://localhost."
@echo "Continue to quit."
pause
@docker-compose down
rmdir .\localhost\htdocs
exit