#include <QGuiApplication>
#include <QtQml>

int main(int argc, char ** argv)
{
    qputenv("QT_IM_MODULE", QByteArray("qtvirtualkeyboard"));
    qputenv("QT_SCALE_FACTOR", QByteArray("1.33"));

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl("qrc:qml/main.qml"));

    return app.exec();
}