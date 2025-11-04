QT += core gui qml quick quickcontrols2 quicklayouts quickdialogs qmlmodels  # 覆盖所有 import 模块
# Qt.labs.settings：Qt 5.15 支持，但显式添加
QT += labs.settings

CONFIG += c++11
CONFIG += console

SOURCES += main.cpp \
    filemanager.cpp \
    arcmodel.cpp \
    sortfilterproxymodel.cpp \
    DecodeArcMes.cpp \
    mesdecoder.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    filemanager.h \
    arcmodel.h \
    sortfilterproxymodel.h \
    DecodeArcMes.h \
    mesdecoder.h
