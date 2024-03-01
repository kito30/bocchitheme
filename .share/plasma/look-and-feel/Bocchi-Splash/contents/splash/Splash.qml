import QtQuick 2.9
import QtQuick.Controls 2.15


Image {
 
    AnimatedImage {
        id: wanwan
        source: "images/bocchi-the-rock2.gif"
        anchors.fill: parent
        
    }
    
        SequentialAnimation {
        id: introAnimation3
        running: true
        ParallelAnimation {
            PropertyAnimation {
                property: "opacity"
                target: wanwan
                from: 0
                to: 1
                duration: 500
                easing.type: Easing.InOutBack
            }
        }
    }
}
