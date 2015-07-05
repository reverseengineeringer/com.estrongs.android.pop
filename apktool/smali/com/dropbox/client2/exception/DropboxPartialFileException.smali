.class public Lcom/dropbox/client2/exception/DropboxPartialFileException;
.super Lcom/dropbox/client2/exception/DropboxException;


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field public final bytesTransferred:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Lcom/dropbox/client2/exception/DropboxException;-><init>()V

    iput-wide p1, p0, Lcom/dropbox/client2/exception/DropboxPartialFileException;->bytesTransferred:J

    return-void
.end method
