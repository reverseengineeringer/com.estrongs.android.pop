.class public Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/ReadOnlyFileSystemException;
.super Ljava/io/IOException;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "The file system is flagged as read-only. No modifications allowed."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/ReadOnlyFileSystemException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p0, p1}, Lcom/estrongs/fs/impl/usb/fs/ntfs/utils/ReadOnlyFileSystemException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method
