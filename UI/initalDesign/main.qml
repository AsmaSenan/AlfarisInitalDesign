import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls
import QtQuick.Layouts

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

                    RowLayout{
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Item{
                            width: 20
                        }

                        TextField {
                            Layout.fillWidth: true
                            implicitHeight: 40
                            verticalAlignment : TextInput.AlignVCenter
                            font.pointSize: 12
                            placeholderText: "Search"

                        }
                        Label{
                            text: "in"
                            font.pointSize: 12
                            Layout.leftMargin: 8
                            Layout.rightMargin: 8
                        }

                        ComboBox {
                            implicitHeight: 40
                            implicitWidth: 100
                            editable: true
                            model: ListModel {
                                id: model
                                ListElement { text: "All fields" }
                                ListElement { text: "Number" }
                                ListElement { text: "Name" }
                                ListElement { text: "Foreign Name" }
                            }
                            onAccepted: {
                                if (find(editText) === -1)
                                    model.append({text: editText})
                            }
                        }

                        ButtonStyle {
                            txt: "Search"
                            //                            btnColor: "gray"
                            txtColor: "black"

                        }


                        ButtonStyle {
                            onClicked: mainTable.insertNewRow()
                            txt: "Add Item"
                            btnColor: "#309afc"
                            txtColor: hovered? "blak": "white"

                        }
                        Item{
                            width: 20
                        }
                    }



                        EntitysTable {
                            id: mainTable
                            Layout.fillWidth: true
                            Layout.fillHeight: true
                            leftMargin: 24
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

