import QtQuick 1.1

Grid {
    columns: 3
//    columnSpacing: 32
//    rowSpacing: 16
    spacing: 16

    Button { text: "7" }
    Button { text: "8" }
    Button { text: "9" }
    Button { text: "4" }
    Button { text: "5" }
    Button { text: "6" }
    Button { text: "1" }
    Button { text: "2" }
    Button { text: "3" }
    Button { text: "Del"; operator: "del" }
    Button { text: "0" }
    Button { text: "OK";
//        color: "#6da43d";
        operator: "ok"}
}
