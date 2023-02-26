import QtQuick
import QtQuick.Controls
import QtQuick.VirtualKeyboard
import "qrc:qml/widgets"
import "qrc:qml/res/palette.js" as Palette

ApplicationWindow {
    visible: true
    width: 960
    height: 600
    title: "Invex"

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
        color: Palette.color95
    }

    SearchBar {
        id: searchBar
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: 24
        anchors.leftMargin: 24
    }

    Flickable {
        id: flickable
        anchors.top: searchBar.bottom
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.topMargin: 16
        anchors.leftMargin: 24
        width: grid.columns * grid.children[0].width + grid.spacing
        contentWidth: grid.columns * grid.children[0].width + grid.spacing
        contentHeight: grid.height + 24
        clip: true

        Grid {
            id: grid
            columns: 2
            spacing: 16
            anchors.left: parent.left

            PartCard {
                name: "C-Channels"
                image: "qrc:img/C-Channels.jpg"
                visible: name.toLowerCase().includes(searchBar.text.toLowerCase()) || searchBar.text === ""
            }
            PartCard {
                name: "U-Channels"
                image: "qrc:img/U-Channels.jpg"
                visible: name.toLowerCase().includes(searchBar.text.toLowerCase()) || searchBar.text === ""
            }
            PartCard {
                name: "Angles"
                image: "qrc:img/Angles.jpg"
                visible: name.toLowerCase().includes(searchBar.text.toLowerCase()) || searchBar.text === ""
            }
            PartCard {
                name: "Bars"
                image: "qrc:img/Bars.jpg"
                visible: name.toLowerCase().includes(searchBar.text.toLowerCase()) || searchBar.text === ""
            }
            PartCard {
                name: "Plates"
                image: "qrc:img/Plates.jpg"
                visible: name.toLowerCase().includes(searchBar.text.toLowerCase()) || searchBar.text === ""
            }
            PartCard {
                name: "Gussets"
                image: "qrc:img/Gussets.jpg"
                visible: name.toLowerCase().includes(searchBar.text.toLowerCase()) || searchBar.text === ""
            }
            PartCard {
                name: "Standoffs"
                image: "qrc:img/Standoffs.jpg"
                visible: name.toLowerCase().includes(searchBar.text.toLowerCase()) || searchBar.text === ""
            }
            PartCard {
                name: "Shafts"
                image: "qrc:img/Shafts.jpg"
                visible: name.toLowerCase().includes(searchBar.text.toLowerCase()) || searchBar.text === ""
            }
            PartCard {
                name: "Gearbox Brackets"
                image: "qrc:img/Gearbox Brackets.jpg"
                visible: name.toLowerCase().includes(searchBar.text.toLowerCase()) || searchBar.text === ""
            }
            PartCard {
                name: "Hinges"
                image: "qrc:img/Hinges.jpg"
                visible: name.toLowerCase().includes(searchBar.text.toLowerCase()) || searchBar.text === ""
            }
            PartCard {
                name: "Grub Screws"
                image: "qrc:img/Grub Screws.jpg"
                visible: name.toLowerCase().includes(searchBar.text.toLowerCase()) || searchBar.text === ""
            }
            PartCard {
                name: "Screws"
                image: "qrc:img/Screws.jpg"
                visible: name.toLowerCase().includes(searchBar.text.toLowerCase()) || searchBar.text === ""
            }
            PartCard {
                name: "Nuts"
                image: "qrc:img/Nuts.jpg"
                visible: name.toLowerCase().includes(searchBar.text.toLowerCase()) || searchBar.text === ""
            }
            PartCard {
                name: "Spacers"
                image: "qrc:img/Spacers.jpg"
                visible: name.toLowerCase().includes(searchBar.text.toLowerCase()) || searchBar.text === ""
            }
            PartCard {
                name: "Wheels"
                image: "qrc:img/Wheels.jpg"
                visible: name.toLowerCase().includes(searchBar.text.toLowerCase()) || searchBar.text === ""
            }
            PartCard {
                name: "Flex Wheels"
                image: "qrc:img/Flex Wheels.jpg"
                visible: name.toLowerCase().includes(searchBar.text.toLowerCase()) || searchBar.text === ""
            }
            PartCard {
                name: "Bearings"
                image: "qrc:img/Bearings.jpg"
                visible: name.toLowerCase().includes(searchBar.text.toLowerCase()) || searchBar.text === ""
            }
            PartCard {
                name: "Ball Bearings"
                image: "qrc:img/Ball Bearings.jpg"
                visible: name.toLowerCase().includes(searchBar.text.toLowerCase()) || searchBar.text === ""
            }
            PartCard {
                name: "6P Sprockets"
                image: "qrc:img/6P Sprockets.jpg"
                visible: name.toLowerCase().includes(searchBar.text.toLowerCase()) || searchBar.text === ""
            }
            PartCard {
                name: "High Strength Sprockets"
                image: "qrc:img/High Strength Sprockets.jpg"
                visible: name.toLowerCase().includes(searchBar.text.toLowerCase()) || searchBar.text === ""
            }
            PartCard {
                name: "Low Strength Sprockets"
                image: "qrc:img/Low Strength Sprockets.jpg"
                visible: name.toLowerCase().includes(searchBar.text.toLowerCase()) || searchBar.text === ""
            }
            PartCard {
                name: "Gears"
                image: "qrc:img/Gears.jpg"
                visible: name.toLowerCase().includes(searchBar.text.toLowerCase()) || searchBar.text === ""
            }
            PartCard {
                name: "Intake Rollers"
                image: "qrc:img/Intake Rollers.jpg"
                visible: name.toLowerCase().includes(searchBar.text.toLowerCase()) || searchBar.text === ""
            }
            PartCard {
                name: "Shaft Collars"
                image: "qrc:img/Shaft Collars.jpg"
                visible: name.toLowerCase().includes(searchBar.text.toLowerCase()) || searchBar.text === ""
            }
            PartCard {
                name: "Motors"
                image: "qrc:img/Motors.jpg"
                visible: name.toLowerCase().includes(searchBar.text.toLowerCase()) || searchBar.text === ""
            }
            PartCard {
                name: "Sensors"
                image: "qrc:img/Sensors.jpg"
                visible: name.toLowerCase().includes(searchBar.text.toLowerCase()) || searchBar.text === ""
            }
            PartCard {
                name: "Battery Cables"
                image: "qrc:img/Battery Cables.jpg"
                visible: name.toLowerCase().includes(searchBar.text.toLowerCase()) || searchBar.text === ""
            }
            PartCard {
                name: "Pneumatics"
                image: "qrc:img/Pneumatics.jpg"
                visible: name.toLowerCase().includes(searchBar.text.toLowerCase()) || searchBar.text === ""
            }
            PartCard {
                name: "Retainer Bars"
                image: "qrc:img/Retainer Bars.jpg"
                visible: name.toLowerCase().includes(searchBar.text.toLowerCase()) || searchBar.text === ""
            }
            PartCard {
                name: "Retainers"
                image: "qrc:img/Retainers.jpg"
                visible: name.toLowerCase().includes(searchBar.text.toLowerCase()) || searchBar.text === ""
            }
            PartCard {
                name: "Rubber Links"
                image: "qrc:img/Rubber Links.jpg"
                visible: name.toLowerCase().includes(searchBar.text.toLowerCase()) || searchBar.text === ""
            }
            PartCard {
                name: "Turntables"
                image: "qrc:img/Turntables.jpg"
                visible: name.toLowerCase().includes(searchBar.text.toLowerCase()) || searchBar.text === ""
            }
            PartCard {
                name: "Universal Joints"
                image: "qrc:img/Universal Joints.jpg"
                visible: name.toLowerCase().includes(searchBar.text.toLowerCase()) || searchBar.text === ""
            }
        }
    }

    Rectangle {
        id: divider
        height: parent.height - 48
        width: 1
        radius: 0.5
        anchors.left: flickable.right
        anchors.verticalCenter: parent.verticalCenter
        anchors.leftMargin: 24
        color: Palette.outline
    }

    Rectangle {
        id: detailsContainer
        anchors.left: divider.right
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 24
        anchors.rightMargin: 24
        anchors.topMargin: 24
        anchors.bottomMargin: 24
        color: Palette.color90
        radius: 28

        FAB {
            id: cart
            anchors.right: parent.right
            anchors.rightMargin: 24
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 16
            onClicked: overlay.visible = true
        }

        Button {
            id: returnButton
            anchors.left: parent.left
            anchors.leftMargin: 24
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 24
            text: "Return"
        }

        Label {
            height: 40
            anchors.left: returnButton.right
            anchors.right: addToCart.left
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 24
            text: "Or"
            font.family: robotoRegularFont.name
            font.pixelSize: 14
            color: Palette.color10
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Button {
            id: addToCart
            anchors.right: cart.left
            anchors.rightMargin: 24
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 24
            text: "Add to cart"
        }
    }

    Overlay {
        id: overlay
    }

    InputPanel {
        id: inputPanel
        anchors.bottom:parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        visible: Qt.inputMethod.visible
    }
}