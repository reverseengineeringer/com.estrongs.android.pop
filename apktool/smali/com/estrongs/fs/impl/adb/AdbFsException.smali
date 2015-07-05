.class public Lcom/estrongs/fs/impl/adb/AdbFsException;
.super Lcom/estrongs/fs/FileSystemException;


# instance fields
.field public errorCode:Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/fs/FileSystemException;-><init>()V

    sget-object v0, Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;->ADB_ERROR_NONE:Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;

    iput-object v0, p0, Lcom/estrongs/fs/impl/adb/AdbFsException;->errorCode:Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;->ADB_ERROR_NONE:Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;

    iput-object v0, p0, Lcom/estrongs/fs/impl/adb/AdbFsException;->errorCode:Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;

    iput-object p2, p0, Lcom/estrongs/fs/impl/adb/AdbFsException;->errorCode:Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;->ADB_ERROR_NONE:Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;

    iput-object v0, p0, Lcom/estrongs/fs/impl/adb/AdbFsException;->errorCode:Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    sget-object v0, Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;->ADB_ERROR_NONE:Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;

    iput-object v0, p0, Lcom/estrongs/fs/impl/adb/AdbFsException;->errorCode:Lcom/estrongs/fs/impl/adb/AdbFsException$ERROR_CODE;

    return-void
.end method
