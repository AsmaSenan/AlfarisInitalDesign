import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Qt.labs.qmlmodels 1.0



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
                placeholderText: "\n \n \n This fills the whole cell \n \n \n"
                Layout.columnSpan: 5
                wrapMode: TextArea.Wrap
                Layout.fillHeight: true
                Layout.fillWidth: true
                verticalAlignment : Qt.AlignVCenter
                font.pointSize: 10
                background: Rectangle {
                    radius: 2
                    border.color: "#9c9c9c"
                    border.width: 1
                }

            }

            //4th col
            Label { text: "Id" }
            InputField {
                placeholderText: "Id"
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.minimumHeight: implicitHeight
            }
            Label {
                text: "End Date"
                Layout.fillHeight: true
                Layout.fillWidth: true
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
            }
            Label {
                text: "الكمية المتوفرة"
                Layout.fillHeight: true
                Layout.fillWidth: true
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
            }
            Label {
                text: "كمية الطلب"
                Layout.fillHeight: true
                Layout.fillWidth: true
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
            }
            Label {
                text: "أقل كمية"
                Layout.fillHeight: true
                Layout.fillWidth: true
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter

            }

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

    GroupBox{
        id: units
        title: "Units"
        Layout.fillWidth: true
        Layout.fillHeight: true

        TableTemplate {
            id: unitsTable

            anchors.fill: parent
            tableContent: TableModel {
                id:tableData


                TableModelColumn {
                    display: "id"
                }
                TableModelColumn { display: "num" }
                TableModelColumn { display: "name" }
                TableModelColumn { display: "edit" }
                TableModelColumn { display: "delete" }

                // Each row is one type of fruit that can be ordered


                rows: [
                    {
                        id: "ID",
                        num: "Number",
                        name: "Name",
                        edit: "/",
                        delete: "/"
                    },
                    {
                        // Each property is one cell/column.
                        id: 1111,
                        num: 1010,
                        name: "AAA",
                        edit: "/",
                        delete: "/"
                    },
                    {
                        // Each property is one cell/column.
                        id: 1111,
                        num: 1010,
                        name: "BBB",
                        edit: "/",
                        delete: "/"
                    },
                    {
                        id: 2222,
                        num: 2020,
                        name: "CCC",
                        edit: "/",
                        delete: "/"
                    }
                ]



            }

            visibleEdit: false

            editBtn: 4
            delBtn: 3

        }
    }

    GroupBox {
        id: buttons
        title: "Button layout"
        Layout.fillWidth: true

        RowLayout {
            id: rowBtnLayout
            anchors.fill: parent

            Item{
                Layout.fillWidth: true
            }

            ButtonStyle {
                txt: "Button"
                btnColor: "#337ab7"
                txtColor: hovered? "blak": "white"

            }
            ButtonStyle {
                txt: "close"
                btnColor: "#d9534f"
                txtColor: hovered? "blak": "white"

                onClicked: close()
            }
            Item{
                Layout.fillWidth: true
            }

        }
    }

}
