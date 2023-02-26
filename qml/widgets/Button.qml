import QtQuick
import QtQuick.Controls
import "qrc:qml/res/palette.js" as Palette

Item {
    id: root
    property string text: "Button"

    signal clicked

    height: 40
    width: 188

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
        color: Palette.color60
        radius: 20
    }

    Text {
        id: text
        anchors.centerIn: parent
        text: root.text
        color: Palette.color100
        font.family: robotoRegularFont.name
        font.pixelSize: 14
        font.weight: Font.DemiBold
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            root.clicked()
        }
    }
}