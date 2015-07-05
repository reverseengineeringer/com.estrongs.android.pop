.class public Lcom/estrongs/fs/impl/usb/b;
.super Ljava/io/InputStream;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/estrongs/fs/impl/usb/fs/c;

.field private c:J

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/fs/impl/usb/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/fs/impl/usb/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/fs/impl/usb/fs/c;J)V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/b;->b:Lcom/estrongs/fs/impl/usb/fs/c;

    iput-wide v2, p0, Lcom/estrongs/fs/impl/usb/b;->c:J

    iput-wide v2, p0, Lcom/estrongs/fs/impl/usb/b;->d:J

    iput-object p1, p0, Lcom/estrongs/fs/impl/usb/b;->b:Lcom/estrongs/fs/impl/usb/fs/c;

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/b;->b:Lcom/estrongs/fs/impl/usb/fs/c;

    invoke-interface {v0}, Lcom/estrongs/fs/impl/usb/fs/c;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/fs/impl/usb/b;->c:J

    iput-wide p2, p0, Lcom/estrongs/fs/impl/usb/b;->d:J

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public read()I
    .locals 2

    const/4 v0, 0x1

    new-array v1, v0, [B

    invoke-virtual {p0, v1}, Lcom/estrongs/fs/impl/usb/b;->read([B)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-byte v0, v1, v0

    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/estrongs/fs/impl/usb/b;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 6

    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-wide v0, p0, Lcom/estrongs/fs/impl/usb/b;->d:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/estrongs/fs/impl/usb/b;->c:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/estrongs/fs/impl/usb/b;->c:J

    iget-wide v2, p0, Lcom/estrongs/fs/impl/usb/b;->d:J

    sub-long/2addr v0, v2

    :goto_1
    long-to-int v0, v0

    if-gtz v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    int-to-long v0, p3

    goto :goto_1

    :cond_2
    invoke-static {p1, p2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/b;->b:Lcom/estrongs/fs/impl/usb/fs/c;

    iget-wide v4, p0, Lcom/estrongs/fs/impl/usb/b;->d:J

    invoke-interface {v2, v4, v5, v1}, Lcom/estrongs/fs/impl/usb/fs/c;->a(JLjava/nio/ByteBuffer;)V

    iget-wide v2, p0, Lcom/estrongs/fs/impl/usb/b;->d:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/fs/impl/usb/b;->d:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method
