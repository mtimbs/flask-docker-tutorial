import unittest
from app import app

class HelloWorldTestCase(unittest.TestCase):

    def test_that_home_route_returns_a_hello_world_response(self):
        client = app.test_client()
        response = client.get('/')

        assert b'Hello, World!' in response.data
