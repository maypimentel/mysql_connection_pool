PYTEST_CMD=$(shell which py.test)
PYTHON_CMD=$(shell which python3)

welcome:
	@printf "\033[33m   __  ____   _____  ___  _        ___ ___  _  _ _  _ ___ ___ _____ ___ ___  _  _     ___  ___   ___  _    \n"
	@printf "\033[33m  |  \/  \ \ / / __|/ _ \| |  ___ / __/ _ \| \| | \| | __/ __|_   _|_ _/ _ \| \| |___| _ \/ _ \ / _ \| |   \n"
	@printf "\033[33m  | |\/| |\ V /\__ \ (_) | |_|___| (_| (_) | .\` | .\` | _| (__  | |  | | (_) | .\` |___|  _/ (_) | (_) | |__ \n"
	@printf "\033[33m  |_|  |_| |_| |___/\__\_\____|   \___\___/|_|\_|_|\_|___\___| |_| |___\___/|_|\_|   |_|  \___/ \___/|____|\n"
	@printf "\033[m\n"                                                                                                          

start: welcome
	@docker-compose up --build

stop: welcome
	@docker-compose down

start-as-daemon: welcome
	@docker-compose up --build -d

clean:
	@find . \( -name *.py[co] -o -name __pycache__ \) -delete

test: clean# Execute tests
	PYTHONPATH=. reset && ${PYTEST_CMD} tests/* -r a -svv --color=yes --maxfail=10

test-on-docker:
	@docker-compose exec app make test