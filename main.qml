import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.2

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Moving Around Like a Pro")



    MainForm {
        anchors.fill: parent
        id: page
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        mouseArea1 {
                             onClicked: stateGroup.state = ' '
                         }

        mouseArea2 {
                         onClicked: stateGroup.state = 'State1'
                     }
        mouseArea3 {
                         onClicked: stateGroup.state = 'State2'
                     }
    }
    StateGroup {
            id: stateGroup
            states: [
                State {
                    name: "State1"

                    PropertyChanges {
                        target: page.icon
                        x: page.middleRightRect.x
                        y: page.middleRightRect.y
                    }
                },
                State {
                    name: "State2"

                    PropertyChanges {
                        target: page.icon
                        x: page.bottomLeftRect.x
                        y: page.bottomLeftRect.y
                    }
                }
            ]

}


}
