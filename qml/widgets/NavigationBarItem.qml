import QtQuick 2.15
import QtQuick.Controls 2.15
import "qrc:/qml/res/palette.js" as Palette

Item {
    id: root
    width: 64
    height: 64
    anchors.verticalCenter: parent.verticalCenter
    state: "unselected"

    signal clicked

    property string icon: "\uefa2"
    property string label: "Item"
    property string color: Palette.color20

    states: [
        State {
            name: "selected"
            PropertyChanges {
                target: root
                color: Palette.color10
            }
            PropertyChanges {
                target: iconLabel
                font.family: robotoBoldFont.name
            }
        },
        State {
            name: "unselected"
            PropertyChanges {
                target: root
                color: Palette.color20
            }
            PropertyChanges {
                target: iconLabel
                font.family: robotoMediumFont.name
            }
        }
    ]

    FontLoader {
        id: materialFont;
        source: "qrc:qml/res/materialFont.ttf";
    }
    FontLoader {
        id: robotoBlackFont;
        source: "qrc:qml/res/Roboto-Black.ttf";
    }
    FontLoader {
        id: robotoBlackItalicFont;
        source: "qrc:qml/res/Roboto-BlackItalic.ttf";
    }
    FontLoader {
        id: robotoBoldFont;
        source: "qrc:qml/res/Roboto-Bold.ttf";
    }
    FontLoader {
        id: robotoBoldItalicFont;
        source: "qrc:qml/res/Roboto-BoldItalic.ttf";
    }
    FontLoader {
        id: robotoItalicFont;
        source: "qrc:qml/res/Roboto-Italic.ttf";
    }
    FontLoader {
        id: robotoLightFont;
        source: "qrc:qml/res/Roboto-Light.ttf";
    }
    FontLoader {
        id: robotoLightItalicFont;
        source: "qrc:qml/res/Roboto-LightItalic.ttf";
    }
    FontLoader {
        id: robotoMediumFont;
        source: "qrc:qml/res/Roboto-Medium.ttf";
    }
    FontLoader {
        id: robotoMediumItalicFont;
        source: "qrc:qml/res/Roboto-MediumItalic.ttf";
    }
    FontLoader {
        id: robotoRegularFont;
        source: "qrc:qml/res/Roboto-Regular.ttf";
    }
    FontLoader {
        id: robotoThinFont;
        source: "qrc:qml/res/Roboto-Thin.ttf";
    }
    FontLoader {
        id: robotoThinItalicFont;
        source: "qrc:qml/res/Roboto-ThinItalic.ttf";
    }

    Rectangle {
        id: container
        width: root.width
        height: root.height - 10
        anchors.verticalCenter: parent.verticalCenter

        color: "transparent"

        MouseArea {
            anchors.fill: parent
            hoverEnabled: true
            onClicked: root.clicked()
        }

        Label {
            id: iconImage

            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top

            font.family: materialFont.name
            text: icon
            font.pixelSize: 26
            color: root.color
        }

        Label {
            id: iconLabel

            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom

            font.family: robotoMediumFont.name
            text: label
            font.pixelSize: 14
            color: root.color
        }
    }
}