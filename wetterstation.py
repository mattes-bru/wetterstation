from PySide2.QtWidgets import QApplication
from PySide2.QtQml import QQmlApplicationEngine 
from PySide2.QtCore import QUrl, Signal, QObject, Property



class InternetWeather(QObject):
    def __init__(self):
        QObject.__init__(self)  
        self._temperature = 30.0
        self._humidity = 50.0
        self._currentStateIconUrl = ""

    def begin(apiKey, location):
        pass

    def getHumidity(self):
        return _humidity

    def getTemperature(self):
        return _temperature

    def getCurrentStateIconUrl(self):
        return _currentStateIconUrl

    @Signal
    def temperatureChanged(self):
        pass    
    
    @Signal
    def humidityChanged(self):
        pass
    
    @Signal
    def currentStateIconUrlChanged(self):
        pass


    temperature = Property(float, getTemperature, notify=temperatureChanged)
    humidity = Property(float, getHumidity, notify=humidityChanged)
    currentStateIconUrl = Property(QUrl, getCurrentStateIconUrl, notify=currentStateIconUrlChanged)


app = QApplication([])
engine = QQmlApplicationEngine()
engine.load(QUrl("ui/main.qml"))


app.exec_()