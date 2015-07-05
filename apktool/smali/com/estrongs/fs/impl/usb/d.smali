.class public Lcom/estrongs/fs/impl/usb/d;
.super Ljava/io/OutputStream;


# instance fields
.field private a:Lcom/estrongs/fs/impl/usb/fs/c;

.field private b:J

.field private c:J


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/impl/usb/fs/c;J)V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/d;->a:Lcom/estrongs/fs/impl/usb/fs/c;

    iput-wide v2, p0, Lcom/estrongs/fs/impl/usb/d;->b:J

    iput-wide v2, p0, Lcom/estrongs/fs/impl/usb/d;->c:J

    iput-object p1, p0, Lcom/estrongs/fs/impl/usb/d;->a:Lcom/estrongs/fs/impl/usb/fs/c;

    iput-wide p2, p0, Lcom/estrongs/fs/impl/usb/d;->b:J

    iget-wide v0, p0, Lcom/estrongs/fs/impl/usb/d;->b:J

    iput-wide v0, p0, Lcom/estrongs/fs/impl/usb/d;->c:J

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/d;->a:Lcom/estrongs/fs/impl/usb/fs/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/d;->a:Lcom/estrongs/fs/impl/usb/fs/c;

    invoke-interface {v0}, Lcom/estrongs/fs/impl/usb/fs/c;->close()V

    :cond_0
    return-void
.end method

.method public write(I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/estrongs/fs/impl/usb/d;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 4

    :try_start_0
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/d;->a:Lcom/estrongs/fs/impl/usb/fs/c;

    iget-wide v2, p0, Lcom/estrongs/fs/impl/usb/d;->b:J

    invoke-interface {v1, v2, v3, v0}, Lcom/estrongs/fs/impl/usb/fs/c;->b(JLjava/nio/ByteBuffer;)V

    iget-wide v0, p0, Lcom/estrongs/fs/impl/usb/d;->b:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/fs/impl/usb/d;->b:J

    iget-wide v0, p0, Lcom/estrongs/fs/impl/usb/d;->b:J

    iget-wide v2, p0, Lcom/estrongs/fs/impl/usb/d;->c:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x500000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/d;->a:Lcom/estrongs/fs/impl/usb/fs/c;

    invoke-interface {v0}, Lcom/estrongs/fs/impl/usb/fs/c;->g()V

    iget-wide v0, p0, Lcom/estrongs/fs/impl/usb/d;->b:J

    iput-wide v0, p0, Lcom/estrongs/fs/impl/usb/d;->c:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method
