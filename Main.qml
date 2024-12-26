import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: " ListView"
    color: "gray"

    ListView {
        anchors.fill:parent
        spacing:0
        model:ListModel {
            ListElement { name:"WiFi"}
            ListElement { name:"Bluetooth"}
            ListElement { name:"Screen"}
            ListElement { name:"Microphone"}
        } delegate:Rectangle {
            width: ListView.view.width
            height: 50
            color:"darkgray"
            border.color: "gray"
            Behavior on width {
                NumberAnimation {
                    duration:5000
                    easing.type:Easing.InOutQuint
                }
            }
             Text {
                 text: name
                 anchors.centerIn:parent
                 font.pixelSize: 20
             }
        }
    }
}
