
import QtQuick 2.12
import QtQuick.Controls 2.5
import Qt.labs.qmlmodels 1.0


TableView {
    function insertNewRow(){

        tableModel.insertRow(1, {
                                 id:  "",
                                 num:  "",
                                 name: "",
                                 type: "",
                                 amount: 0,
                                 price: 0,
                                 edit: "",
                                 delete: ""

                             })
    }
    columnSpacing: 1
    rowSpacing: 1
    boundsBehavior: Flickable.StopAtBounds

    model: TableModel {
        id:tableModel
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



    delegate: DelegateChooser {

        DelegateChoice {
            column: 6
            delegate: Button {
                implicitHeight: 30
                text: (row != 0)? "" : "Edit";
                hoverEnabled: (row != 0)? true : false;
                icon.name: "Edit"
                icon.source: (row != 0)? "/images/icons/images/icons/edit.png" : "/";
                onClicked: (row != 0)? winld.active = true : "" ;
                Loader {
                    id: winld
                    active: false
                    sourceComponent: Window {
                        id: appWindow
                        title: "Basic layouts"
                        property int margin: 11
                        flags: Qt.WindowStaysOnTopHint


                        Component.onCompleted: {
                            width = mainLayout.implicitWidth + 40 * margin
                            height = mainLayout.implicitHeight + 10 * margin
                        }

                        minimumWidth: mainLayout.Layout.minimumWidth + 40 * margin
                        minimumHeight: mainLayout.Layout.minimumHeight + 10 * margin

                        //                                    color: 'green'
                        visible: true
                        onClosing: winld.active = false

                        AddForm {
                            id: mainLayout
                            anchors.fill: parent
                            anchors.margins: appWindow.margin
                        }

                    }
                }


                background: Rectangle {
                    CustomBorder
                    {
                        commonBorder: true
                        commonBorderWidth: 1
                        borderColor: "#9c9c9c"
                    }


                }


            }
        }
        DelegateChoice {
            column: 7
            delegate: Button {
                implicitHeight: 30
                text: (row != 0)? "" : "Delete";
                icon.name: "Delete"
                icon.source: (row != 0)? "/images/icons/images/icons/delete.png" : "/";
                onClicked: (row != 0)? tableModel.removeRow(row) : "" ;
                hoverEnabled: (row != 0)? true : false;
                background: Rectangle {
                    CustomBorder
                    {
                        commonBorder: true
                        commonBorderWidth: 1
                        borderColor: "#9c9c9c"
                    }


                }


            }
        }

        DelegateChoice {
            delegate: TextField {
                text: model.display
                selectByMouse: true
                implicitWidth: 150
                implicitHeight: 30
                onAccepted: model.display = text
                horizontalAlignment: "AlignHCenter"
                verticalAlignment: "AlignVCenter"
                readOnly: (row != 0)? false : true;
                background: Rectangle {
                    CustomBorder
                    {
                        commonBorder: true
                        commonBorderWidth: 1
                        borderColor: "#9c9c9c"
                    }


                }

            }
        }

    }
    //    Rectangle {
    //        color: "white"
    //        anchors.fill: parent
    //        height: 1
    //    }



}
