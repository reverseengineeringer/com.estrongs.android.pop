.class public Lcom/estrongs/fs/impl/p/c;
.super Ljava/io/InputStream;


# instance fields
.field private a:Ljcifs/smb/SmbRandomAccessFile;

.field private b:J

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>(Ljcifs/smb/SmbRandomAccessFile;J)V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/fs/impl/p/c;->a:Ljcifs/smb/SmbRandomAccessFile;

    iput-wide v2, p0, Lcom/estrongs/fs/impl/p/c;->b:J

    iput-wide v2, p0, Lcom/estrongs/fs/impl/p/c;->c:J

    iput-wide v2, p0, Lcom/estrongs/fs/impl/p/c;->d:J

    iput-object p1, p0, Lcom/estrongs/fs/impl/p/c;->a:Ljcifs/smb/SmbRandomAccessFile;

    iput-wide p2, p0, Lcom/estrongs/fs/impl/p/c;->c:J

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/p/c;->a:Ljcifs/smb/SmbRandomAccessFile;

    invoke-virtual {v0}, Ljcifs/smb/SmbRandomAccessFile;->close()V

    invoke-super {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public read()I
    .locals 6

    iget-wide v0, p0, Lcom/estrongs/fs/impl/p/c;->c:J

    iget-wide v2, p0, Lcom/estrongs/fs/impl/p/c;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/fs/impl/p/c;->a:Ljcifs/smb/SmbRandomAccessFile;

    invoke-virtual {v0}, Ljcifs/smb/SmbRandomAccessFile;->read()I

    move-result v0

    if-ltz v0, :cond_0

    iget-wide v2, p0, Lcom/estrongs/fs/impl/p/c;->d:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/fs/impl/p/c;->d:J

    goto :goto_0
.end method

.method public read([B)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/estrongs/fs/impl/p/c;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 6

    const-wide/16 v4, 0x0

    iget-wide v0, p0, Lcom/estrongs/fs/impl/p/c;->c:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/fs/impl/p/c;->a:Ljcifs/smb/SmbRandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v0

    if-ltz v0, :cond_0

    iget-wide v2, p0, Lcom/estrongs/fs/impl/p/c;->d:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/fs/impl/p/c;->d:J

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v0, p0, Lcom/estrongs/fs/impl/p/c;->c:J

    iget-wide v2, p0, Lcom/estrongs/fs/impl/p/c;->d:J

    sub-long/2addr v0, v2

    cmp-long v2, v0, v4

    if-nez v2, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    int-to-long v2, p3

    cmp-long v2, v2, v0

    if-gez v2, :cond_3

    iget-object v0, p0, Lcom/estrongs/fs/impl/p/c;->a:Ljcifs/smb/SmbRandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v0

    :goto_1
    if-ltz v0, :cond_0

    iget-wide v2, p0, Lcom/estrongs/fs/impl/p/c;->d:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/fs/impl/p/c;->d:J

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/estrongs/fs/impl/p/c;->a:Ljcifs/smb/SmbRandomAccessFile;

    long-to-int v0, v0

    invoke-virtual {v2, p1, p2, v0}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v0

    goto :goto_1
.end method
