import QtQuick
import QtQuick.Controls

Page {

    title: qsTr("Opções para suporte:")

    Button {
        id: btnChangeBoard
        anchors.centerIn: parent
        text: qsTr("Trocar placa")

        onClicked: {
            root.stackView.push(cmpChangeBoard)
        }
    }

    Component {
        id: cmpChangeBoard

        ChangeBoard {}
    }
}
