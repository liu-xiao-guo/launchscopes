import QtQuick 2.0
import Ubuntu.Components 1.1

/*!
    \brief MainView with a Label and Button elements.
*/

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "launchscopes.liu-xiao-guo"

    /*
     This property enables the application to change orientation
     when the device is rotated. The default is false.
    */
    //automaticOrientation: true

    // Removes the old toolbar and enables new features of the new header.
    useDeprecatedToolbar: false

    width: units.gu(60)
    height: units.gu(85)

    Page {
        title: i18n.tr("launchscopes")

        Column {
            anchors.centerIn: parent
            spacing: units.gu(2)

            Button {
                text: "Launch Youtube scope"
                onClicked: {
                    console.log("it is clicked!");
                    Qt.openUrlExternally("scope://com.ubuntu.scopes.youtube_youtube");
                }
            }

            Button {
                text: "Launch store scope"
                onClicked: {
                    console.log("it is clicked!");
                    Qt.openUrlExternally("scope://com.canonical.scopes.clickstore?q=weibo");
                }
            }

            Button {
                text: "Launch weibo scope"
                onClicked: {
                    console.log("it is clicked!");
                    Qt.openUrlExternally("scope://weibo.ubuntu_weibo");
                }
            }
        }
    }
}

