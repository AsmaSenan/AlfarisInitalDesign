import QtQuick 2.6
import QtQuick.Controls


Drawer{
    y: overlayHeader.height
    width: parent.width * 0.15
    height: window.height - overlayHeader.height

    modal: inPortrait
    interactive: inPortrait
    position: inPortrait ? 0 : 1
    visible: !inPortrait

    ListView {
        id: listView
        anchors.fill: parent

        headerPositioning: ListView.OverlayHeader
        header: Pane {
            id: header
            z: 2
            width: parent.width

            contentHeight: logo.height

            Image {
                id: logo
                width: parent.width
                source: "images/qt-logo.png"
                fillMode: implicitWidth > width ? Image.PreserveAspectFit : Image.Pad
            }

            MenuSeparator {
                parent: header
                width: parent.width
                anchors.verticalCenter: parent.bottom
                visible: !listView.atYBeginning
            }
        }

//            footer: ItemDelegate {
//                id: footer
//                text: qsTr("Footer")
//                width: parent.width

//                MenuSeparator {
//                    parent: footer
//                    width: parent.width
//                    anchors.verticalCenter: parent.top
//                }
//            }
//        interactive: stackView.depth === 1


        model: ListModel {
            ListElement { title: "Clints"; source: "qrc:/" }
            ListElement { title: "Invoices"; source: "qrc:/Invoices.qml" }
            ListElement { title: "Payments"; source: "qrc:/" }
            ListElement { title: "Entitys"; source: "qrc:/main.qml" }
//                ListElement { title: "DelayButton"; source: "qrc:/pages/DelayButtonPage.qml" }
//                ListElement { title: "Dial"; source: "qrc:/pages/DialPage.qml" }
        }
//        delegate: ItemDelegate {
//            text: model.title
//                width: parent.width
//        }
        delegate: ItemDelegate {
            width: listView.width
            text: model.title
            highlighted: ListView.isCurrentItem
            onClicked: {
                listView.currentIndex = index
                stackView.push(model.source)
            }
        }

        ScrollIndicator.vertical: ScrollIndicator { }
    }

}



