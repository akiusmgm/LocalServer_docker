:@docker-compose up -d --force-recreate --build
:@echo "Access to http://localhost."
:@echo "Continue to quit."
:pause
:@docker-compose down
:exit

cd /d %~dp0
@docker-compose up -d --force-recreate --build
rmdir .\localhost\htdocs
xcopy /B .\symlink\htdocs .\localhost\htdocs\
@echo "Access to http://localhost."
@echo "Continue to quit."
pause
@docker-compose down
rmdir .\localhost\htdocs
exit