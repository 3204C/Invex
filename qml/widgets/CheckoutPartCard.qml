import QtQuick
import QtQuick.Controls
import Qt5Compat.GraphicalEffects
import "qrc:qml/res/palette.js" as Palette

Item {
    id: root

    property string text: "Part Name"
    property string image: "qrc:qml/res/C-Channels.png"
    property int count: 0

    width: 310
    height: 60

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
        width: root.width
        height: root.height
        color: Palette.color90
        radius: 16
    }

    Image {
        id: image
        source: root.image
        width: parent.height
        height: parent.height
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
        layer.enabled: true
        layer.effect: OpacityMask {
            maskSource: mask
        }
    }

    Rectangle {
        id: mask
        width: image.width
        height: image.height
        radius: 16
        visible: false
    }

    Label {
        id: label
        text: root.text
        anchors.left: image.right
        anchors.leftMargin: 16
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 14
        font.family: robotoRegularFont.name
        color: Palette.color10
    }

    Rectangle {
        id: countBackground
        width: 108
        height: 36
        radius: 12
        color: Palette.color95
        anchors.right: parent.right
        anchors.rightMargin: 12
        anchors.verticalCenter: parent.verticalCenter
        border.color: Palette.outline

        Rectangle {
            id: countBackgroundDivider1
            width: 1
            height: parent.height
            color: Palette.outline
            anchors.right: parent.right
            anchors.rightMargin: 36
            anchors.verticalCenter: parent.verticalCenter
        }
        Rectangle {
            id: countBackgroundDivider2
            width: 1
            height: parent.height
            color: Palette.outline
            anchors.left: parent.left
            anchors.leftMargin: 36
            anchors.verticalCenter: parent.verticalCenter
        }

        Label {
            id: countLabel
            text: root.count
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 14
            font.family: robotoRegularFont.name
            color: Palette.color10
        }

        MouseArea {
            id: countReduceMouseArea
            width: 36
            height: 36
            anchors.left: parent.left
            onClicked:
                if (root.count > 0) {
                        root.count -= 1
                }
        }

        MouseArea {
            id: countIncreaseMouseArea
            width: 36
            height: 36
            anchors.right: parent.right
            onClicked: root.count += 1
        }

        Label {
            id: countReduceLabel
            text: "\ue15b"
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 12
            font.pixelSize: 14
            font.family: materialFont.name
            color: Palette.color10
        }

        Label {
            id: countIncreaseLabel
            text: "\ue145"
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.rightMargin: 12
            font.pixelSize: 14
            font.family: materialFont.name
            color: Palette.color10
        }
    }
}