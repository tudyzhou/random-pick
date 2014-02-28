import QtQuick 1.1

Rectangle {
    id: display
    width: parent.width
    height: 62
    color: "lightblue"

    property int maxNum: 5

    function appendDigit(digit) {
        var idx = listView.count - 1;
        var oldDigit = listView.model.get(idx).number;
        if (oldDigit.length === 0 && digit === "0") {
            return
        } else if (oldDigit.length < maxNum) {
            listView.model.get(idx).number = oldDigit + digit;
        } else { }
    }

    function removeDigit() {
        var idx = listView.count - 1;
        var oldDigit = listView.model.get(idx).number;
        if (oldDigit.length > 0) {
            listView.model.get(idx).number = "";
        } else { }
    }

    function getNum(){
        var ret = 0
        var idx = listView.count - 1;
        if (idx > -1) {
            ret = Number(listView.model.get(idx).number.valueOf())
        }
        return ret
    }

    ListView {
        id: listView
        x: 0; y: 0
        width: display.width
        height: display.height

        delegate: Item {
            height: display.height
            width: parent.width
            Text {
                id: number
                color: "#fff"
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 38
                anchors.right: parent.right
                text: model.number
            }
        }
        model: ListModel {
            ListElement {
                category: ""
                number: ""
            }
        }
    }
}
