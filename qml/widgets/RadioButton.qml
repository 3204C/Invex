import QtQuick.Controls
import QtQuick
import "qrc:qml/res/palette.js" as Palette

RadioButton {
    id: root

    indicator: Rectangle {
        implicitWidth: 20
        implicitHeight: 20
        x: root.leftPadding
        y: root.height / 2 - height / 2
        radius: 10
        border.color: Palette.color10

        Rectangle {
            width: 12
            height: 12
            x: 4
            y: 4
            radius: 6
            color: Palette.color10
            visible: root.checked
        }
    }

    contentItem: Text {
        text: root.text
        font.family: robotoRegularFont.name
        font.pixelSize: 14
        color: Palette.color10
        verticalAlignment: Text.AlignVCenter
        leftPadding: 36
    }
}