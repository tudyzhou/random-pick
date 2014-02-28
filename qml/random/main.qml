import QtQuick 1.1
import "component"

Rectangle {
    id: window
    width: 320
    height: 480

    function digitPressed (digit) {
        resultReset()
        display.appendDigit(digit)
    }

    function digitRemove () {
        resultReset()
        display.removeDigit()
    }

    function randomPick () {
        var num = display.getNum()
//        console.log("ok:", num + 1)
        if (num > 0) {
            var res = 0
            while (res === 0){
//                console.log("again or begin:", res)
                res = Math.round(Math.random() * num)
            }
            result.text = res.toString()
        }
    }

    function resultReset() {
        result.text = ""
    }

    // Display
    Display {
        id: display
        maxNum: 10
    }

    // Result
    Text {
        id: result
        y: 80
        color: "#666"
        width: parent.width
        height: 40
        text: qsTr("")
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 38
    }

    // Number input
    NumberPad {
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottomMargin: 16
    }


}
