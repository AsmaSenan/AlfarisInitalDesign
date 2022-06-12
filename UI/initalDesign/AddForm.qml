import QtQuick
import QtQuick.Controls
import QtQuick.Layouts



ColumnLayout {


    GroupBox {
        id: gridBox
        title: "Grid layout"
        Layout.fillWidth: true
        Layout.minimumWidth: gridLayout.Layout.minimumWidth + 30

        GridLayout {
            id: gridLayout
            columns: 7
            rows: 8
            flow: GridLayout.TopToBottom
            anchors.fill: parent

            Item {
                Label{
                    text: "image"
                }

                Layout.rowSpan: 8
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.minimumHeight: implicitHeight
                Layout.minimumWidth: 100     // guesstimate, should be size of largest word
            }

            //2end col
            Label { text: "Number" }
            Label { text: "Name" }
            Label { text: "Forign Name" }
            Label { text: "Start Date" }
            Label { text: "رقم المخزون" }
            Label { text: "الكمية القصوى" }
            Label { text: "السعر" }
            Label { text: "ملاحظات" }

            //3th col
            TextField {
              placeholderText: "Number"
            }
            TextField {
                placeholderText: "Nmae"
                Layout.columnSpan: 5
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.minimumHeight: implicitHeight

            }
            TextField {
                placeholderText: "F Nmae"
                Layout.columnSpan: 5
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.minimumHeight: implicitHeight

            }
            TextField {
                placeholderText: "Start date"
                Layout.columnSpan: 2
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.minimumHeight: implicitHeight

            }
            TextField {
                placeholderText: "رقم المخزون"
                Layout.columnSpan: 2
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.minimumHeight: implicitHeight

            }
            TextField {
                placeholderText: "الكمية القصوى"
                Layout.columnSpan: 2
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.minimumHeight: implicitHeight
            }
            TextField {
                placeholderText: "السعر"
                Layout.columnSpan: 2
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.minimumHeight: implicitHeight

            }
            TextArea {
                id: notes
                placeholderText: "This fills the whole cell"
                Layout.columnSpan: 5

                Layout.minimumHeight: implicitHeight
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            //4th col
            Label { text: "Id" }
            TextField {
                placeholderText: "Id"
            }
            Label { text: "End Date" }
            Label { text: "الكمية المتوفرة" }
            Label { text: "كمية الطلب" }
            Label { text: "أقل كمية" }

            //5th column
Label { text: "Type" }
            TextField {
                placeholderText: "end date"
                Layout.columnSpan: 2
            }

            TextField {
                placeholderText: "الكمية المتوفرة"
                Layout.columnSpan: 2
            }
            TextField {
                placeholderText: "كمية الطلب"
                Layout.columnSpan: 2
            }
            TextField {
                placeholderText: "أقل كمية"
                Layout.columnSpan: 2
            }
            TextField {
                placeholderText: "Type"
            }



        }
    }
    TextArea {
        id: t3
        text: "This fills the whole cell"
        Layout.minimumHeight: 30
        Layout.fillHeight: true
        Layout.fillWidth: true
    }
    GroupBox {
        id: stackBox
        title: "Stack layout"
        implicitWidth: 200
        implicitHeight: 60
        Layout.minimumHeight: 60
        Layout.fillWidth: true
        Layout.fillHeight: true
        StackLayout {
            id: stackLayout
            anchors.fill: parent

            function advance() { currentIndex = (currentIndex + 1) % count }

            Repeater {
                id: stackRepeater
                model: 5
                Rectangle {
                    required property int index
                    color: Qt.hsla((0.5 + index) / stackRepeater.count, 0.3, 0.7, 1)
                    Button {
                        anchors.centerIn: parent
                        text: "Page " + (parent.index + 1)
                        onClicked: { stackLayout.advance() }
                    }
                }
            }
        }
    }
    GroupBox {
        id: buttons
        title: "Button layout"
        Layout.fillWidth: true
        Layout.minimumWidth: rowLayout.Layout.minimumWidth + 30

        RowLayout {
            id: rowBtnLayout
            anchors.fill: parent

            Item{
                Layout.fillWidth: true
            }

            ButtonStyle {
                text: "Button"

            }
            ButtonStyle {
                text: "close"
                onClicked: close()
            }
            Item{
                Layout.fillWidth: true
            }

        }
    }

}
