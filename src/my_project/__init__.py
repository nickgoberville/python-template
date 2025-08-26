# Read version from installed package metadata.
from importlib.metadata import version
__version__ = version("my_project")