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
            InputField {
                placeholderText: "Number"
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.minimumHeight: implicitHeight
            }
            InputField {
                placeholderText: "Nmae"
                Layout.columnSpan: 5
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.minimumHeight: implicitHeight
            }
            InputField {
                placeholderText: "F Nmae"
                Layout.columnSpan: 5
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.minimumHeight: implicitHeight
            }
            InputField {
                placeholderText: "Start date"
                Layout.columnSpan: 2
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.minimumHeight: implicitHeight
            }
            InputField {
                placeholderText: "رقم المخزون"
                Layout.columnSpan: 2
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.minimumHeight: implicitHeight
            }
            InputField {
                placeholderText: "الكمية القصوى"
                Layout.columnSpan: 2
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.minimumHeight: implicitHeight
            }
            InputField {
                placeholderText: "السعر"
                Layout.columnSpan: 2
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.minimumHeight: implicitHeight
            }
            TextArea {
                id: notes
                placeholderText: "This fills the whole cell \n \n \n \n"
                Layout.columnSpan: 5
                wrapMode: TextArea.Wrap
                Layout.fillHeight: true
                Layout.fillWidth: true
                implicitHeight: 40
                verticalAlignment : TextInput.AlignVCenter
                font.pointSize: 8

            }

            //4th col
            Label { text: "Id" }
            InputField {
                placeholderText: "Id"
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.minimumHeight: implicitHeight
            }
            Label { text: "End Date" }
            Label { text: "الكمية المتوفرة" }
            Label { text: "كمية الطلب" }
            Label { text: "أقل كمية" }

            //5th column
            Label { text: "Type" }
            InputField {
                placeholderText: "end date"
                Layout.columnSpan: 2
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.minimumHeight: implicitHeight
            }
            InputField {
                placeholderText: "الكمية المتوفرة"
                Layout.columnSpan: 2
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.minimumHeight: implicitHeight
            }
            InputField {
                placeholderText: "كمية الطلب"
                Layout.columnSpan: 2
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.minimumHeight: implicitHeight
            }
            InputField {
                placeholderText: "أقل كمية"
                Layout.columnSpan: 2
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.minimumHeight: implicitHeight
            }
            InputField {
                placeholderText: "Type"
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.minimumHeight: implicitHeight
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
