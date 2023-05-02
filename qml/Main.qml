import QtQuick
import QtQuick.Controls

ApplicationWindow {
    id: root

    width: 640
    height: 480
    visible: true
    title: qsTr("Aplicação de suporte do Modulocker")

    //property alias stackView: stackView

    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: mainView
    }

//    header: ToolBar {

//    }

    Component {
        id: mainView

        Row {
            spacing: 20

            Button {
                id: btnChangeBoard
                text: qsTr("Trocar placa")

                onClicked: {
                    stackView.push(mainView)
                }
            }

            Button {
                id: btnPop
                text: qsTr("Pop")
                enabled: stackView.depth > 1

                onClicked: {
                    stackView.pop()
                }
            }

            Text {
                text: stackView.depth
            }
        }
    }

//    Drawer {
//        id: drawer

//        width: root.width * 0.66
//        height: root.height

//        Column {
//            anchors.fill: parent

//            ItemDelegate {
//                text: qsTr("Trocar placa")
//                width: parent.width

//                onClicked: {
//                    stackView.push(changeBoard)
//                    drawer.close()
//                }
//            }
//        }
//    }
}
