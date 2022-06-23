
import QtQuick 2.12
import QtQuick.Controls 2.5
import Qt.labs.qmlmodels 1.0


TableView {

    property alias tableCol :  tableData.TableModelColumn
    property alias tableRow :  tableData.row

    property int editBtn
    property int delBtn



    function insertNewRow(){

        tableModel.insertRow(1, {
                                 id:  "",
                                 num:  "",
                                 name: "",
                                 type: "",
                                 amount: 0,
                                 price: 0,
                                 edit: "",
                                 del: ""

                             })
    }

    id: tableUnits
    columnSpacing: 1
    rowSpacing: 1
    boundsBehavior: Flickable.StopAtBounds

    model: TableModel {
        id:tableData
        TableModelColumn: tableCol
//        TableModelColumn {
//            display: "id"
//        }
//        TableModelColumn { display: "num" }
//        TableModelColumn { display: "name" }
//        TableModelColumn { display: "edit" }
//        TableModelColumn { display: "delete" }

        // Each row is one type of fruit that can be ordered
        rows: tableRow
    }



    delegate: DelegateChooser {

        DelegateChoice {
            column: editBtn
            delegate: Button {
                implicitHeight: 30
                text: (row != 0)? "" : "Edit";
                hoverEnabled: (row != 0)? true : false;
                icon.name: "Edit"
                icon.source: (row != 0)? "/images/icons/images/icons/edit.png" : "/";


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
            column: delBtn
            delegate: Button {
                implicitHeight: 30
                text: (row != 0)? "" : "Delete";
                icon.name: "Delete"
                icon.source: (row != 0)? "/images/icons/images/icons/delete.png" : "/";
                onClicked: (row != 0)? tableData.removeRow(row) : "" ;
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
}