// qfile.sip generated by MetaSIP on Thu Jun 26 02:32:17 2014
//
// This file is part of the QtCore Python extension module.
//
// Copyright (c) 2014 Riverbank Computing Limited <info@riverbankcomputing.com>
// 
// This file is part of PyQt5.
// 
// This file may be used under the terms of the GNU General Public License
// version 3.0 as published by the Free Software Foundation and appearing in
// the file LICENSE included in the packaging of this file.  Please review the
// following information to ensure the GNU General Public License version 3.0
// requirements will be met: http://www.gnu.org/copyleft/gpl.html.
// 
// If you do not wish to use this file under the terms of the GPL version 3.0
// then you may purchase a commercial license.  For more information contact
// info@riverbankcomputing.com.
// 
// This file is provided AS IS with NO WARRANTY OF ANY KIND, INCLUDING THE
// WARRANTY OF DESIGN, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.


class QFile : QFileDevice
{
%TypeHeaderCode
#include <qfile.h>
%End

public:
    QFile();
    QFile(const QString &name);
    explicit QFile(QObject *parent /TransferThis/);
    QFile(const QString &name, QObject *parent /TransferThis/);
    virtual ~QFile();
    virtual QString fileName() const;
    void setFileName(const QString &name);
    static QByteArray encodeName(const QString &fileName);
    static QString decodeName(const QByteArray &localFileName);
    static QString decodeName(const char *localFileName /Encoding="ASCII"/);
    bool exists() const;
    static bool exists(const QString &fileName);
    QString symLinkTarget() const;
    static QString symLinkTarget(const QString &fileName);
    bool remove() /ReleaseGIL/;
    static bool remove(const QString &fileName) /ReleaseGIL/;
    bool rename(const QString &newName) /ReleaseGIL/;
    static bool rename(const QString &oldName, const QString &newName) /ReleaseGIL/;
    bool link(const QString &newName) /ReleaseGIL/;
    static bool link(const QString &oldname, const QString &newName) /ReleaseGIL/;
    bool copy(const QString &newName) /ReleaseGIL/;
    static bool copy(const QString &fileName, const QString &newName) /ReleaseGIL/;
    virtual bool open(QFlags<QIODevice::OpenModeFlag> flags) /ReleaseGIL/;
    bool open(int fd, QFlags<QIODevice::OpenModeFlag> ioFlags, QFlags<QFileDevice::FileHandleFlag> handleFlags = QFileDevice::DontCloseHandle);
    virtual qint64 size() const;
    virtual bool resize(qint64 sz);
    static bool resize(const QString &filename, qint64 sz);
    virtual QFlags<QFileDevice::Permission> permissions() const;
    static QFlags<QFileDevice::Permission> permissions(const QString &filename);
    virtual bool setPermissions(QFlags<QFileDevice::Permission> permissionSpec);
    static bool setPermissions(const QString &filename, QFlags<QFileDevice::Permission> permissionSpec);

private:
    QFile(const QFile &);
};
