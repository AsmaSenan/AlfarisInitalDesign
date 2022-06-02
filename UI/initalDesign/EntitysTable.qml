//import QtQuick 2.15
//import Qt.labs.qmlmodels 1.0

//TableView {
//    columnSpacing: 1
//    rowSpacing: 1
//    clip: true

//    model: TableModel {
//        TableModelColumn { display: "name" }
//        TableModelColumn { display: "color" }

//        rows: [
//            {
//                "name": "cat",
//                "color": "black"
//            },
//            {
//                "name": "dog",
//                "color": "brown"
//            },
//            {
//                "name": "bird",
//                "color": "white"
//            }
//        ]
//    }

//    delegate: Rectangle {
//        implicitWidth: 200
//        implicitHeight: 100
//        border.width: 1

//        Text {
//            text: display
//            anchors.centerIn: parent
//        }
//    }
//}
import QtQuick 2.12
import QtQuick.Controls 2.5
import Qt.labs.qmlmodels 1.0


TableView {
    columnSpacing: 1
    rowSpacing: 1
    boundsBehavior: Flickable.StopAtBounds

    model: TableModel {
        TableModelColumn { display: "id" }
        TableModelColumn { display: "num" }
        TableModelColumn { display: "name" }
        TableModelColumn { display: "type" }
        TableModelColumn { display: "amount" }
        TableModelColumn { display: "price" }

        // Each row is one type of fruit that can be ordered
        rows: [
            {
                id: "ID",
                num: "Number",
                name: "Name",
                type: "Type",
                amount: "Amount",
                price: "Price"
            },
            {
                // Each property is one cell/column.
                id: 1111,
                num: 1010,
                name: "AAA",
                type: "A",
                amount: 500,
                price: 1.50
            },
            {
                // Each property is one cell/column.
                id: 1111,
                num: 1010,
                name: "BBB",
                type: "B",
                amount: 500,
                price: 1.50
            },
            {
                id: 2222,
                num: 2020,
                name: "CCC",
                type: "C",
                amount: 1500,
                price: 0.50
            }
        ]

    }


    delegate: DelegateChooser {

        DelegateChoice {
            column: 0
            delegate: TextField {
                text: model.display
                selectByMouse: true
                implicitWidth: 140
                implicitHeight: 30
                readOnly: true
                onAccepted: model.display = text
                horizontalAlignment: "AlignHCenter"
                verticalAlignment: "AlignVCenter"
            }
        }
//        DelegateChoice {
//            column: 1
//            delegate: SpinBox {
//                value: model.display
//                onValueModified: model.display = value
//            }
//        }
        DelegateChoice {
            delegate: TextField {
                text: model.display
                selectByMouse: true
                implicitWidth: 140
                implicitHeight: 30
                onAccepted: model.display = text
                horizontalAlignment: "AlignHCenter"
                verticalAlignment: "AlignVCenter"


            }
        }
    }
}
