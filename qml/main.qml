import QtQuick 2.8
import QtQuick.Window 2.2

Window {
    visible: true
    title: "WeatherQML"

    Item {
        id: wait
        anchors.fill: parent

        Text {
            text: qsTr("Загрузка данных...")
            anchors.centerIn: parent
            font.pointSize: 18
        }
    }

    Item {
        id: main
        anchors.fill: parent
        //visible: false

        Column {
            id: column
            x: 5
            y: 5
            spacing: 5
            anchors.rightMargin: 5
            anchors.leftMargin: 5
            anchors.bottomMargin: 5
            anchors.topMargin: 5
            anchors.fill: parent

            Row{
                id: city
                spacing: 5
                anchors.right: parent.right
                anchors.left: parent.left
                anchors.leftMargin: 0

                Text {
                    id: cityName
                    text: qsTr("Махачкала")
                    font.pixelSize: 30
                }

                Image {
                    id: setting
                    width: 36
                    height: 36
                    source: "../resources/icons/gear.png"
                }

            }

            Row {
                id: selectedDate
                spacing: 5
                anchors.right: parent.right
                anchors.left: parent.left
                anchors.leftMargin: 0

                Text {
                    id: time
                    text: qsTr("11:00")
                    font.pixelSize: 30
                }

                Text {
                    id: date
                    text: qsTr("06.02.18")
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 20
                }

                Text {
                    id: week
                    text: qsTr("Вторник")
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 20
                }
            }

            Row {
                id: currentWeather
                anchors.right: parent.right
                anchors.rightMargin: 191
                anchors.left: parent.left
                anchors.leftMargin: 0
                spacing: 5

                Text {
                    id: temterature
                    text: qsTr("-14")
                    font.pixelSize: 50
                }

                Text {
                    id: celsius
                    text: qsTr("С°")
                    font.pixelSize: 30
                }

                Image {
                    id: weatherIcon
                    width: 120
                    height: 120
                    source: "../resources/icons/weather-snow.png"
                }

                Column {
                    id: details
                    spacing: 5

                    Text {
                        id: weather
                        text: qsTr("Снег")
                        font.pixelSize: 30
                    }

                    Row {
                        id: row
                        spacing: 5
                        width: 200

                        Text {
                            id: windText
                            text: qsTr("Ветер:")
                            font.pixelSize: 30
                        }

                        Text {
                            id: windValue
                            text: qsTr("3")
                            font.pixelSize: 30
                        }

                        Text {
                            id: accuracy
                            text: qsTr("м/с")
                            font.pixelSize: 30
                        }
                    }
                }
            }

            Row {
                id: viewHours
                spacing: 5
                height: 120
                anchors.right: parent.right
                anchors.left: parent.left
                anchors.leftMargin: 0

                Repeater{
                    id: repeaterHourWeather
                    anchors.fill: parent
                    model: 8
                    HourWeather{
                        id: hour
                        width: (viewHours.width - (viewHours.spacing * (repeaterHourWeather.count - 1)) ) / repeaterHourWeather.count
                        height: viewHours.height
                    }
                }
            }

            Row {
                id: viewDays
                spacing: 5
                width: 630
                anchors.right: parent.right
                anchors.left: parent.left
                anchors.leftMargin: 0

                Repeater{
                    id: repeaterDayWeather
                    anchors.fill: parent
                    model: 5
                    DayWeather{
                        id: day
                        width: (viewHours.width - (viewHours.spacing * (repeaterDayWeather.count - 1)) ) / repeaterDayWeather.count
                        height: viewHours.height
                    }
                }
            }
        }
    }
}
