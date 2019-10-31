import pytest

from app import APP


@pytest.fixture(scope="module")
def client():
    with APP.test_client() as client:
        yield client
