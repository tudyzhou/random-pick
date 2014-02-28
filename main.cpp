#include <QApplication>
#include "qmlapplicationviewer.h"

Q_DECL_EXPORT int main(int argc, char *argv[])
{
    QScopedPointer<QApplication> app(createApplication(argc, argv));

    QmlApplicationViewer viewer;
    viewer.addImportPath(QLatin1String("modules"));
    viewer.setOrientation(QmlApplicationViewer::ScreenOrientationAuto);
//    viewer.setMainQmlFile(QLatin1String("qml/random/main.qml"));
    viewer.setSource(QUrl("qrc:qml/random/main.qml"));
    viewer.showExpanded();
    viewer.setWindowTitle(QString("Random Pick"));
//    viewer.setResizeMode(QDeclarativeView::SizeRootObjectToView);
    viewer.setMinimumSize(QSize(320, 480));

    return app->exec();
}
