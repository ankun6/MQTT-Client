#-------------------------------------------------
#
# Project created by QtCreator 2019-11-04T12:53:29
#
#-------------------------------------------------

QT       += core gui network

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = MQTT-Client
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += \
        main.cpp \
        widget.cpp

HEADERS += \
        widget.h

FORMS += \
        widget.ui

CONFIG += mobility
MOBILITY = 


win32:CONFIG(release, debug|release): LIBS += -LF:/Software/QT/libmqtt/lib/ -lQt5Qmqtt
else:win32:CONFIG(debug, debug|release): LIBS += -LF:/Software/QT/libmqtt/lib/ -lQt5Qmqttd

INCLUDEPATH += F:/Software/QT/libmqtt/include
DEPENDPATH += F:/Software/QT/libmqtt/include

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += F:/Software/QT/libmqtt/lib/libQt5Qmqtt.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += F:/Software/QT/libmqtt/lib/libQt5Qmqttd.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += F:/Software/QT/libmqtt/lib/Qt5Qmqtt.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += F:/Software/QT/libmqtt/lib/Qt5Qmqttd.lib

RESOURCES += \
    resource.qrc

RC_ICONS = icon.ico
