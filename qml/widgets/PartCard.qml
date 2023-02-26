import QtQuick
import QtQuick.Controls
import Qt5Compat.GraphicalEffects
import "qrc:qml/res/palette.js" as Palette

Item {
    id: root;
    property string image: "qrc:qml/res/C-Channels.png"
    property string name: "Text"
    signal clicked

    width: 152
    height: 172

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
        radius: 28
    }

    Image {
        id: image
        anchors.top: parent.top
        source: root.image
        width: parent.width
        height: 128
        fillMode: Image.PreserveAspectCrop
        layer.enabled: true
        layer.effect: OpacityMask {
            maskSource: mask
        }
    }

    Rectangle {
        id: mask
        width: image.width
        height: image.height
        radius: 28
        visible: false
    }

    Rectangle {
        id: labelContainer
        anchors.top: image.bottom
        anchors.bottom: parent.bottom
        width: parent.width
        color: "transparent"
        visible: true

        Label {
            id: label
            anchors.centerIn: parent
            text: name
            font.pixelSize: 14
            color: Palette.surface
            font.family: robotoRegularFont.name
        }
    }

    MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        onClicked: {
            root.clicked()
        }
    }
}