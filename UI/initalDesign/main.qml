import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls
import QtQuick.Layouts
import Qt.labs.qmlmodels 1.0

ApplicationWindow {
    id: window
    width: 1550
    height: 950
    visible: true
    title: qsTr("Side Panel")
    color: "#F1F1F1"
    property bool inPortrait: false
    property int margin: 11


    header: ToolBar {
        id: overlayHeader

        width: parent.width
        parent: window.overlay

        Label {
            id: label
            anchors.centerIn: parent
            text: "Qt Quick Controls 2"
        }
        Button{
            id: sideBtn
            text: "click"
            onClicked: {inPortrait = !inPortrait}
        }
    }




    DrawerList{
        id: drawer
    }

    Page{
        width: !inPortrait ? window.width - drawer.width : window.width
        anchors.right: parent.right

        anchors.leftMargin: !inPortrait ? drawer.width : undefined


        SwipeView {
            id: swipeView
            currentIndex: tabBar.currentIndex
            anchors.fill: parent


            Item {
                id: page1
                width: swipeView.width
                height: swipeView.height


                ColumnLayout {
                    spacing: 20
                    width: parent.width
                    height: window.height


                    Label {
                        id: txt1
                        width: parent.width
                        wrapMode: Label.Wrap
                        font.pointSize: 20
                        text: "Items"
                        Layout.alignment: Qt.AlignHCenter
                        horizontalAlignment: Qt.AlignHCenter
                        topPadding: 30
                    }

                    OperationsMenu{
                        Layout.fillWidth: true
                        Layout.fillHeight: true



                        addAction:  function(){
                            var newRow = {
                                id: "",
                                num: "",
                                name: "",
                                type: "",
                                amount: 0,
                                price: 0.0,
                                edit: "/",
                                del: "/"
                            }
                            mainTable.insertNewRow(newRow)
                        }


                    }



                    EntitysTable {
                        id: mainTable
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        leftMargin: 24

                        tableContent: TableModel {
                            id:tableData
                            TableModelColumn { display: "id" }
                            TableModelColumn { display: "num" }
                            TableModelColumn { display: "name" }
                            TableModelColumn { display: "type" }
                            TableModelColumn { display: "amount" }
                            TableModelColumn { display: "price" }
                            TableModelColumn { display: "edit" }
                            TableModelColumn { display: "del" }

                            // Each row is one type of fruit that can be ordered
                            rows: [
                                {
                                    id: "ID",
                                    num: "Number",
                                    name: "Name",
                                    type: "Type",
                                    amount: "Amount",
                                    price: "Price",
                                    edit: "/",
                                    del: "/"
                                },
                                {
                                    // Each property is one cell/column.
                                    id: 1111,
                                    num: 1010,
                                    name: "AAA",
                                    type: "A",
                                    amount: 500,
                                    price: 1.50,
                                    edit: "/",
                                    del: "/"

                                },
                                {
                                    // Each property is one cell/column.
                                    id: 1111,
                                    num: 1010,
                                    name: "BBB",
                                    type: "B",
                                    amount: 500,
                                    price: 1.50,
                                    edit: "/",
                                    del: "/"

                                },
                                {
                                    id: 2222,
                                    num: 2020,
                                    name: "CCC",
                                    type: "C",
                                    amount: 1500,
                                    price: 0.50,
                                    edit: "/",
                                    del: "/"

                                }
                            ]

                        }


                        visibleEdit: true

                        editBtn: 6
                        delBtn: 7

                    }

                }

            }


            Item {
                id: page2
                width: swipeView.width
                height: swipeView.height
                Text {
                    text: "second"

                }
            }
            Item {
                id: page3
                width: swipeView.width
                height: swipeView.height
                Text {
                    text: "3th"
                }
            }

        }


        header: TabBar {
            id: tabBar
            currentIndex: swipeView.currentIndex
            width: !inPortrait ? window.width - drawer.width : window.width
            anchors.right: parent.right
            font.pixelSize: 16
            anchors.leftMargin: !inPortrait ? drawer.width : undefined
            TabButton {
                padding: 10
                text: "Entitys"
            }
            TabButton {
                padding: 10
                text: "Entity Types"
            }
            TabButton {
                padding: 10
                text: "Units"
            }
        }


        ScrollIndicator.vertical: ScrollIndicator { }
    }
}

