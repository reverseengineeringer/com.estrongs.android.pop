.class public Lcom/estrongs/fs/impl/u/d;
.super Ljava/io/OutputStream;


# instance fields
.field private a:Ljcifs/smb/SmbRandomAccessFile;


# direct methods
.method public constructor <init>(Ljcifs/smb/SmbFile;J)V
    .locals 2

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/fs/impl/u/d;->a:Ljcifs/smb/SmbRandomAccessFile;

    new-instance v0, Ljcifs/smb/SmbRandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljcifs/smb/SmbRandomAccessFile;-><init>(Ljcifs/smb/SmbFile;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/fs/impl/u/d;->a:Ljcifs/smb/SmbRandomAccessFile;

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/u/d;->a:Ljcifs/smb/SmbRandomAccessFile;

    invoke-virtual {v0, p2, p3}, Ljcifs/smb/SmbRandomAccessFile;->seek(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/u/d;->a:Ljcifs/smb/SmbRandomAccessFile;

    invoke-virtual {v0}, Ljcifs/smb/SmbRandomAccessFile;->close()V

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public write(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/u/d;->a:Ljcifs/smb/SmbRandomAccessFile;

    invoke-virtual {v0, p1}, Ljcifs/smb/SmbRandomAccessFile;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/u/d;->a:Ljcifs/smb/SmbRandomAccessFile;

    invoke-virtual {v0, p1}, Ljcifs/smb/SmbRandomAccessFile;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/u/d;->a:Ljcifs/smb/SmbRandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    return-void
.end method
