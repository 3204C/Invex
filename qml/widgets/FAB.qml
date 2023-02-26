import QtQuick
import QtQuick.Controls
import Qt5Compat.GraphicalEffects
import "qrc:qml/res/palette.js" as Palette

Item {
    id: root
    height: 56
    width: 56

    signal clicked()

    property string text: "Button"

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
        color: Palette.color70
        radius: 12
    }

    DropShadow {
        anchors.fill: background
        horizontalOffset: 0
        verticalOffset: 3
        radius: 5
        samples: 9
        color: "#edd0cb"
        source: background
        cached: true
    }

    Image {
        id: icon
        height: 32
        width: 32
        anchors.centerIn: parent
        source: "qrc:qml/res/shoppingCart.svg"
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            root.clicked()
        }
    }
}