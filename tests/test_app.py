from app import format_response


def test_app():
    assert True is True


def test_format_response():
    assert "World" == format_response(None)
