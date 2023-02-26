import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Universal
import "qrc:qml/widgets"
import "qrc:qml/res/palette.js" as Palette

Item {
    id: root
    anchors.fill: parent
    //Material.accent: Material.Grey
    Universal.accent: Palette.color10

    states: [
        State {
            name: "checkout"
            when: root.visible
            PropertyChanges {
                target: overlayShim
                opacity: 0.25
            }
            PropertyChanges {
                target: overlayCheckout
                visible: true
            }
            PropertyChanges {
                target: overlaySuccess
                visible: false
            }
            PropertyChanges {
                target: shimMouseArea
                enabled: true
            }
        },
        State {
            name: "finished"
            PropertyChanges {
                target: overlayShim
                opacity: 0.25
            }
            PropertyChanges {
                target: overlayCheckout
                visible: true
            }
            PropertyChanges {
                target: overlaySuccess
                visible: true
            }
            PropertyChanges {
                target: shimMouseArea
                enabled: true
            }
        },
        State {
            name: "hidden"
            when: !root.visible
            PropertyChanges {
                target: overlayShim
                opacity: 0.1
            }
            PropertyChanges {
                target: overlayCheckout
                visible: false
            }
            PropertyChanges {
                target: overlaySuccess
                visible: false
            }
            PropertyChanges {
                target: shimMouseArea
                enabled: false
            }
        }
    ]

    FontLoader {
        id: materialFont;
        source: "qrc:qml/res/materialFont.ttf";
    }

    FontLoader {
        id: robotoRegularFont;
        source: "qrc:qml/res/Roboto-Regular.ttf";
    }

    Rectangle {
        id: overlayShim
        anchors.fill: parent
        color: "black"
        opacity: 0.25

        MouseArea {
            id: shimMouseArea
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            height: parent.height - overlayCheckout.height + 28
            propagateComposedEvents: true
            onClicked: {
                root.visible = false
            }
        }
    }

    Rectangle {
        id: overlayCheckout
        anchors.bottom: parent.bottom
        anchors.bottomMargin: -28
        anchors.left: parent.left
        anchors.right: parent.right
        height: 328
        radius: 28
        color: Palette.color95

        Label {
            id: title
            anchors.top: parent.top
            anchors.topMargin: 24
            anchors.left: parent.left
            anchors.leftMargin: 24
            anchors.right: parent.right
            anchors.rightMargin: 300
            font.pixelSize: 20
            font.family: robotoRegularFont.name
            font.weight: Font.Bold
            text: "You are about to checkout the following parts: "
        }

        Flickable {
            id: flickable
            anchors.top: parent.top
            anchors.topMargin: 86
            anchors.left: parent.left
            anchors.leftMargin: 24
            anchors.right: parent.right
            anchors.rightMargin: 300
            anchors.bottom: parent.bottom
            contentWidth: grid.width
            contentHeight: grid.height + 24
            clip: true

            Grid {
                id: grid
                columns: 2
                spacing: 16

                CheckoutPartCard {}
                CheckoutPartCard {}
                CheckoutPartCard {}
                CheckoutPartCard {}

            }
        }

        Rectangle {
            id: divider
            width: 1
            height: parent.height - 76
            anchors.right: parent.right
            anchors.rightMargin: 276
            anchors.top: parent.top
            anchors.topMargin: 24
            color: Palette.outline
        }

        Button {
            id: checkoutButton
            anchors.right: parent.right
            anchors.rightMargin: 24
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 52
            width: 228
            text: "Checkout"

            onClicked: {
                root.state = "finished"
            }
        }

        Flickable {
            id: teamSelectFlickable
            anchors.top: parent.top
            anchors.topMargin: 24
            anchors.right: parent.right
            anchors.rightMargin: 24
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 136
            anchors.left: divider.right
            anchors.leftMargin: 24
            contentWidth: teamSelectColumn.width
            contentHeight: teamSelectColumn.height
            clip: true
            flickableDirection: Flickable.VerticalFlick

            Column {
                id: teamSelectColumn
                spacing: 16

                RadioButton {
                    id: team1
                    text: "3204A"
                    checked: true
                }
                RadioButton {
                    id: team2
                    text: "3204B"
                }
                RadioButton {
                    id: team3
                    text: "3204C"
                }
            }
        }
    }

    Rectangle {
        id: overlaySuccess
        anchors.bottom: parent.bottom
        anchors.bottomMargin: -28
        anchors.left: parent.left
        anchors.right: parent.right
        height: 328
        radius: 28
        color: Palette.color95

        Label {
            id: successLabel
            height: 64
            width: 460
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 104
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 36
            font.family: robotoRegularFont.name
            font.weight: Font.Bold
            text: "Success"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            color: "#17A300"
        }
        Label {
            id: successIcon
            height: 84
            width: 84
            anchors.bottom: successLabel.top
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 84
            font.family: materialFont.name
            text: "\uE5CA"
            color: "#17A300"
        }
    }
}