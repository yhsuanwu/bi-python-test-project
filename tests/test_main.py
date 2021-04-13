import project


class TestMain:
    def test_say_hi(self):
        assert project.say_hi('Shanny') == 'Hi, Shanny!'
