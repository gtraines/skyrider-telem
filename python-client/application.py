from app.settings import GlobalSettings

class Application:
    
    def __init__(self):
        context = { "key1": "value1" }
        self._instance_settings = GlobalSettings(context)

if __name__ == "__main__":
    application = Application()