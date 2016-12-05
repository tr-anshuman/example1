import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2

Item {
    id: page
    width: 640
    height: 480
    property alias bottomLeftRect: bottomLeftRect
    property alias mouseArea3: mouseArea3
    property alias mouseArea2: mouseArea2
    property alias middleRightRect: middleRightRect
    property alias mouseArea1: mouseArea1
    property alias topleftRect: topleftRect
    property alias icon: icon

    Image {
        id: icon
        x: 10
        y: 20
        width: 98
        height: 99
        source: "016046e.jpg"
    }

    Rectangle {
        id: topleftRect
        width: 98
        height: 99
        color: "#00000000"
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.top: parent.top
        anchors.topMargin: 20
        border.color: "#808080"

        MouseArea {
            id: mouseArea1
            anchors.fill: parent
        }
    }

    Rectangle {
        id: middleRightRect
        x: 0
        y: 20
        width: 98
        height: 99
        color: "#00000000"
        anchors.horizontalCenterOffset: 263
        anchors.horizontalCenter: parent.horizontalCenter
        MouseArea {
            id: mouseArea2
            anchors.fill: parent
        }
        border.color: "#808080"
    }

    Rectangle {
        id: bottomLeftRect
        x: -8
        y: -7
        width: 98
        height: 99
        color: "#00000000"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
        anchors.left: parent.left
        MouseArea {
            id: mouseArea3
            anchors.fill: parent
        }
        anchors.leftMargin: 10
        border.color: "#808080"
    }

}
