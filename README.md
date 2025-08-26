# [Project Name]

> A brief, one-sentence description of what this project does.

## Overview

A more detailed description of the project, its purpose, and its features. Explain what problem it solves.

---

## Getting Started

Follow these instructions to get a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

* [Python](https://www.python.org/downloads/) 3.9+
* [Poetry](https://python-poetry.org/docs/#installation) for dependency management

### Installation

1.  **Clone the repository:**
    ```bash
    git clone [https://github.com/your-username/your-repo-name.git](https://github.com/your-username/your-repo-name.git)
    cd your-repo-name
    ```

2.  **Run the setup script (for first-time setup only):**
    This template uses a generic name (`my_project`). Run the interactive setup script to rename it.
    ```bash
    ./setup.sh
    ```

3.  **Install dependencies:**
    Poetry will create a virtual environment and install all necessary packages.
    ```bash
    poetry install
    ```

## Usage

All common commands are available via the `Makefile`.

### Running Tests

To run the full test suite with coverage report:
```bash
make test
```

### Code Quality

To check for linting errors and formatting issues:
```bash
make lint
```

To automatically fix formatting and linting issues:
```bash
make format
```

### Running the Application

(Provide instructions on how to run your main application)
```bash
poetry run python src/package_name/main.py
```

### Working with Notebooks

To start a Jupyter Lab session for prototyping:
```bash
make notebook
```

### Viewing Documentation

To serve the documentation locally (updates on save):
```bash
make docs-serve
```
The site will be available at `http://127.0.0.1:8000`.

## Versioning and Changelog

This project uses **[Commitizen](https://commitizen-tools.github.io/commitizen/)** to manage versioning and changelogs based on the [Conventional Commits](https://www.conventionalcommits.org/) specification.

**To bump the version and generate a new changelog entry:**

1.  Stage your changes (`git add .`).
2.  Instead of `git commit`, use `git cz commit` to create a conventional commit message.
3.  Run the make command to bump the version and update the changelog:
    ```bash
    make version
    ```
    This automatically increases the version number in `pyproject.toml` and `src/package_name/__init__.py`, and updates `CHANGELOG.md`.

## Contributing

Please read `CONTRIBUTING.md` for details on our code of conduct and the process for submitting pull requests.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.