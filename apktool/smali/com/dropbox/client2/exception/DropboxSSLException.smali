.class public Lcom/dropbox/client2/exception/DropboxSSLException;
.super Lcom/dropbox/client2/exception/DropboxIOException;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLException;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dropbox/client2/exception/DropboxIOException;-><init>(Ljava/io/IOException;)V

    return-void
.end method
