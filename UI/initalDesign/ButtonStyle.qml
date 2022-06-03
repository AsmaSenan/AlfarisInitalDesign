import QtQuick 2.0
import QtQuick.Controls

Button {
    font.pixelSize: 20


    contentItem: Text {
        text: controlBt.text
        font: controlBt.font
        opacity: enabled ? 1.0 : 0.3
        color: controlBt.down ? "#17a81a" : "#21be2b"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideRight
        padding: 5

    }

}
