import QtQuick 2.8

Item
{
    id: weatherDay

    property int leftTemperatureValue: 0
    property int rigthTemperatureValue: 0
    property date dateDay: new Date

    Row {
        id: temperature
        spacing: 20
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 0

        Text {
            id: leftTemperature
            text: Number(weatherDay.leftTemperatureValue).toLocaleString() + "C°"
            font.pixelSize: 14
        }

        Text {
            id: rigthTemperature
            y: 0
            text: Number(weatherDay.rigthTemperatureValue).toLocaleString() + "C°"
            font.pixelSize: 14
        }
    }

    function getParsedDate()
    {
        var day = weatherDay.dateDay.getDate()
        if (day < 10)
            day = "0" + day
        var month = weatherDay.dateDay.getDay()
        if (month < 10)
            month = "0" + month
        return day + "." + month
    }

    Text {
        id: date
        text: getParsedDate()
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        font.pixelSize: 20
    }


    Image {
        id: image
        anchors.topMargin: 0
        anchors.bottom: date.top
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.top: temperature.bottom
        fillMode: Image.PreserveAspectFit
        z: -1
        source: "../resources/icons/weather-snow.png"
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
    }

}

