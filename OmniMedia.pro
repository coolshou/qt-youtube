
QT += core gui  opengl network xml sql
lessThan(QT_MAJOR_VERSION, 5): QT+= declarative
greaterThan(QT_MAJOR_VERSION, 4): QT+= quick

# TODO hardcoded
win32 {
# vlc
INCLUDEPATH += .
INCLUDEPATH += C:\vlc-2.0.1\sdk\include
LIBS += -LC:\vlc-2.0.1\sdk\lib -llibvlc
} else {
#require install libvlc-dev
LIBS += -llibvlc
}

# libMaia
include(3rdparty/libmaia/maia.pri)

# QJson
include(3rdparty/qjson/qjson.pri)

CONFIG -= app_bundle
TARGET = OmniMedia
TEMPLATE = app

OBJECTS_DIR = temp/obj
MOC_DIR = temp/moc
RCC_DIR = temp/rcc
UI_DIR = temp/ui

DEFINES += NOMINMAX

SOURCES += \
    Player.cpp \
    DownloadManager.cpp \
    Download.cpp \
    Media.cpp \
    YouTubeSearch.cpp \
    AbstractDataHandler.cpp \
    YouTubeDataHandler.cpp \
    OpenSubtitlesClient.cpp \
    Application.cpp \
    LibVlcInstance.cpp \
    Logger.cpp \
    LogFileSink.cpp

#    ProgramOptions.cpp \

HEADERS  += \
    Player.h \
    DownloadManager.h \
    Download.h \
    Media.h \
    YouTubeSearch.h \
    AbstractDataHandler.h \
    YouTubeDataHandler.h \
    OpenSubtitlesClient.h \
    Application.h \
    LibVlcInstance.h \
    Logger.h \
    LogFileSink.h

#    ProgramOptions.h \

OTHER_FILES += \
    VideoControl.qml \
    SearchInput.qml \
    Delegate.qml \
    Main.qml \
    ScrollBar.qml
