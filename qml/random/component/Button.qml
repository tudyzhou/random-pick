import QtQuick 1.1

Rectangle {
    property alias text: textItem.text
    property string operator: ""
    width: 86
    height: 62
    color: "lightblue"

    Text {
        id: textItem
        font.pixelSize: 38
        wrapMode: Text.WordWrap
        color: "#fff"
//        anchors.horizontalCenter: parent.horizontalCenter
//        anchors.verticalCenter: parent.verticalCenter
        anchors.centerIn: parent
    }

    MouseArea {
        id: mouse
        anchors.fill: parent
        anchors.margins: -5
        onClicked: {
            console.log("input:", parent.text)
            if (parent.operator === "del") {
                window.digitRemove();
            } else if (parent.operator === "ok") {
                window.randomPick();
            } else {
                window.digitPressed(parent.text);
            }
        }
    }
}
