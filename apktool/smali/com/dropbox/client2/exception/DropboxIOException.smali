.class public Lcom/dropbox/client2/exception/DropboxIOException;
.super Lcom/dropbox/client2/exception/DropboxException;


# static fields
.field private static final serialVersionUID:J = 0x2L


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dropbox/client2/exception/DropboxException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dropbox/client2/exception/DropboxException;-><init>(Ljava/lang/String;)V

    return-void
.end method
