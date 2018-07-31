import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

ApplicationWindow {
    id: root
    visible: true
    width: 640
    height: 480
    title: qsTr("Tabs")


    ColumnLayout {
        anchors.fill: parent

        Rectangle {
            height: root.height * 0.75
            Layout.fillWidth: true
            color: "red"


        }

        Item {
            Layout.fillHeight: true
            Layout.fillWidth: true

            SwipeView {
                id: swipeView

                anchors.fill: parent

                Page1Form {
                }

                Page2Form {
                }
            }
            PageIndicator {
                id: indicator

                count: swipeView.count
                currentIndex: swipeView.currentIndex

                anchors.bottom: swipeView.bottom
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Timer {
                interval: 2000
                repeat: true
                running: true
                onTriggered: {
                    if(swipeView.currentIndex < swipeView.count-1 ) {
                        swipeView.incrementCurrentIndex();
                    } else {
                        swipeView.currentIndex = 0;
                    }


                }
            }

        }
    }



    //    footer: TabBar {
    //        id: tabBar
    //        currentIndex: swipeView.currentIndex

    //        TabButton {
    //            text: qsTr("Page 1")
    //        }
    //        TabButton {
    //            text: qsTr("Page 2")
    //        }
    //    }
}
