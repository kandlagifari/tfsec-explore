# For Windows PowerShell User Only
ifeq ($(OS),Windows_NT)
    SHELL := pwsh.exe
else
   SHELL := pwsh
endif
.SHELLFLAGS := -NoProfile -Command 

# Make Command
tfl:
	@pwd
	@terraform fmt -recursive

tfi:
	@cd ./terraform/ && pwd
	@cd ./terraform/ && terraform init
