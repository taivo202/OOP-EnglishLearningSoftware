QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11
include(../External/json/json.pri)

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    ../BUS/Connection.cpp \
    ../BUS/Helper.cpp \
    ../BUS/StringTokenizer.cpp \
    ../BUS/UserManagement.cpp \
    ../DTO/Admin.cpp \
    ../DTO/Date.cpp \
    ../DTO/Ranking.cpp \
    ../DTO/Task.cpp \
    ../DTO/Teacher.cpp \
    ../DTO/User.cpp \
    ../External/md5/md5.cpp \
    ChangePasswordUI.cpp \
    ConstantGUI.cpp \
    CoursesAdvertiseWidget.cpp \
    HomeUI.cpp \
    PracticeUI.cpp \
    ReportFormUI.cpp \
    UserInformationPageUI.cpp \
    VerticalScrollArea.cpp \
    main.cpp

HEADERS += \
    ../BUS/Connection.h \
    ../BUS/Helper.h \
    ../BUS/StringTokenizer.h \
    ../BUS/UserManagement.h \
    ../BUS/UserManager.h \
    ../DTO/Admin.h \
    ../DTO/Date.h \
    ../DTO/Ranking.h \
    ../DTO/Task.h \
    ../DTO/Teacher.h \
    ../DTO/User.h \
    ../External/md5/md5.h \
    ChangePasswordUI.h \
    ConstantGUI.h \
    CoursesAdvertiseWidget.h \
    HomeUI.h \
    PracticeUI.h \
    ReportFormUI.h \
    UserInformationPageUI.h \
    VerticalScrollArea.h

FORMS += \
    ChangePasswordUI.ui \
    HomeUI.ui \
    PracticeUI.ui \
    ReportFormUI.ui \
    UserInformationPageUI.ui \
    coursesadvertise.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    ../Data/UserData/AdminTaskList.json \
    ../Data/UserData/UserData.json \
    resources/icon/favicon.png

RESOURCES += \
    resources.qrc
