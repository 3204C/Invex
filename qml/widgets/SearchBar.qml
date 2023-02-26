import QtQuick
import QtQuick.Controls
import "qrc:qml/res/palette.js" as Palette

Item {
    id: root

    width: 320
    height: 56

    property alias text: text.text
    property bool keyboardActive: false

    FontLoader {
        id: materialFont;
        source: "qrc:qml/res/materialFont.ttf";
    }

    FontLoader {
        id: robotoRegularFont;
        source: "qrc:qml/res/Roboto-Regular.ttf";
    }

    Rectangle {
        id: background
        anchors.fill: parent
        color: Palette.color90
        radius : 28
    }

    Label {
        id: icon
        anchors.left: parent.left
        anchors.leftMargin: 16
        anchors.verticalCenter: parent.verticalCenter
        font.family: materialFont.name
        font.pixelSize: 24
        color: Palette.color10
        text: "\uE8B6"
    }

    TextField {
        id: text
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.leftMargin: 52
        font.family: robotoRegularFont.name
        font.pixelSize: 16
        color: Palette.color10
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        placeholderText: "Search"
        placeholderTextColor: "#4d4543"
        onAccepted: Qt.inputMethod.hide()
        background: Rectangle {
            color: "transparent"
        }
    }
}