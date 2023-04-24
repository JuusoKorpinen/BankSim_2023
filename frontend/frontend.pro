QT += core gui
QT += network
QT += serialport
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    main.cpp \
    mainwindow.cpp

HEADERS += \
    mainwindow.h

FORMS += \
    mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

win32: LIBS += -L$$PWD/pinuiDLL/build/debug/ -lpinuiDLL

INCLUDEPATH += $$PWD/pinuiDLL
DEPENDPATH += $$PWD/pinuiDLL

win32: LIBS += -L$$PWD/RESTAPIDLL/build/debug/ -lRESTAPIDLL

INCLUDEPATH += $$PWD/RESTAPIDLL
DEPENDPATH += $$PWD/RESTAPIDLL

win32: LIBS += -L$$PWD/rfidDLL/build/debug/ -lrfidInterface

INCLUDEPATH += $$PWD/rfidDLL
DEPENDPATH += $$PWD/rfidDLL
