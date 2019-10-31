from app import format_response


def test_app():
    assert True is True


def test_format_response():
    assert "World" == format_response(None)


def test_hello(client):
    response = client.get('/')

    assert response.status_code == 200
    assert response.data == b'Hello, World!'
