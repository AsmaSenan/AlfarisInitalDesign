
import QtQuick 2.12
import QtQuick.Controls



RadioButton  {

    property alias txt : control.text
    property bool visibleRadio
    property bool isCheck

    id: control
    text: txt
    checked: isCheck
    enabled: visibleRadio

    indicator: Rectangle {
        implicitWidth: 26
        implicitHeight: 26
        x: parent.width / 2 - width / 2
        y: parent.height / 2 - height / 2
        border.color: control.down ? "#309afc" : "#309afc"
        visible: visibleRadio

        Rectangle {
            width: 14
            height: 14
            x: 6
            y: 6
            color: control.down ? "#309afc" : "#309afc"
            visible: control.checked

        }
    }

    contentItem: Text {
        text: control.text
        font: control.font
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        leftPadding: (visibleRadio)? control.indicator.width + control.spacing : 0;
    }
}
