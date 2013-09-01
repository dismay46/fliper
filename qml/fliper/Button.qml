// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Item {
    property alias img: image.source
    property alias text: label.text
    property alias font: label.font
    signal clicked

    Image {
        id: image

        anchors.fill: parent
        visible: source == "" ? false : true
    }

    Text {
        id: label
        visible: text == "" ? false : true
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            parent.clicked();
            //clicked()
        }
    }

}
