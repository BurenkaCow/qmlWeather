#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQml>
#include "appModel.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    qmlRegisterType<AppModel>("ModelInfo", 1, 0, "AppModel");

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/qml/main.qml")));

    return app.exec();
}
