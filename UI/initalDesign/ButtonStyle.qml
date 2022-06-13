import QtQuick 2.0
import QtQuick.Controls


Button {
    id: button
    property alias btnColor :  rec.color
    property alias txtColor : buttonText.color
    property alias txt : buttonText.text

    contentItem: Text {
        id: buttonText
        text: txt
        color: txtColor
        font: control.font
        opacity: enabled ? 1.0 : 0.3
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideRight

    }

    background: Rectangle {
        id: rec
        implicitWidth: 100
        implicitHeight: 40
        color: btnColor
        border.color: "#26282a"
        border.width: 1
        radius: 4
    }
}

