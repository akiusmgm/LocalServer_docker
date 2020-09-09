@docker-compose up -d --force-recreate --build
@echo "Access to http://localhost."
@echo "Continue to quit."
pause
@docker-compose down
exit