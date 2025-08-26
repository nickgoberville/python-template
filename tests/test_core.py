# tests/test_core.py


from my_project import __version__


def test_version():
    """Tests that the version is a string."""
    assert isinstance(__version__, str)


def test_always_passes():
    """A simple placeholder test that always passes."""
    assert True
