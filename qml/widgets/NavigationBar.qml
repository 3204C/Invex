import QtQuick 2.15
import QtQuick.Controls 2.15
import Qt5Compat.GraphicalEffects
import "qrc:/qml/res/palette.js" as Palette

Item {
    id: root
    width: parent.width - 20
    height: 80
    anchors.bottomMargin: 10

    property int selectedIndex: 0

    DropShadow {
        anchors.fill: container
        horizontalOffset: 0
        verticalOffset: 4
        radius: 4
        samples: 9
        color: "#bfbfbf"
        source: container
        cached: true
    }

    Rectangle {
        id: container
        anchors.fill: parent
        color: Palette.color90
        radius: 40

        Rectangle {
            id: indicator
            width: 72
            height: 38
            radius: 19
            color: Palette.color80
            anchors.top: parent.top
            anchors.topMargin: 10
            x: dashboard.x + 38

            Behavior on x {
                NumberAnimation {
                    duration: 200
                    easing.type: Easing.InOutQuad
                }
            }
        }

        Row {
            spacing: 32

            height: parent.height
            anchors.horizontalCenter: parent.horizontalCenter

            NavigationBarItem {
                id: dashboard
                icon: "\ue66b"
                label: "Dashboard"
                onClicked: {
                    indicator.x = dashboard.x + 38
                    root.selectedIndex = 0
                }
            }
            NavigationBarItem {
                id: busTracker
                icon: "\ue55b"
                label: "Bus Tracker"
                onClicked: {
                    indicator.x = busTracker.x + 38
                    root.selectedIndex = 1
                }
            }
            NavigationBarItem {
                id: journeyPlanner
                icon: "\uf184"
                label: "Journey Planner"
                onClicked: {
                    indicator.x = journeyPlanner.x + 38
                    root.selectedIndex = 2
                }
            }
        }
    }
}