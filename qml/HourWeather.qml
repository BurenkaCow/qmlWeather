import QtQuick 2.8

Item {
    id: hourWeather
    property int temperatureValue: 0
    property date timeHour: new Date

    Text {
        id: temperature
        text: Number(hourWeather.temperatureValue).toLocaleString() + "C°"
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 20
    }

    Text {
        id: time
        text: {
            var hour = timeHour.getHours()
            var minutes = timeHour.getMinutes()
            return hour + ":" + minutes
        }
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        font.pixelSize: 20
    }

    Image {
        id: image
        anchors.top: temperature.bottom
        anchors.right: parent.right
        anchors.bottom: time.top
        anchors.left: parent.left
        fillMode: Image.PreserveAspectFit
        z: -1
        source: "../resources/icons/weather-snow.png"
    }

}
