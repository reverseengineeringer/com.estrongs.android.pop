.class Lcom/estrongs/io/archive/aeszip/l;
.super Ljava/io/OutputStream;


# instance fields
.field a:J

.field b:Ljava/util/zip/CRC32;

.field c:Ljava/io/OutputStream;

.field d:Lde/a/a/a/a/d;

.field final synthetic e:Lcom/estrongs/io/archive/aeszip/k;

.field private f:[B


# direct methods
.method constructor <init>(Lcom/estrongs/io/archive/aeszip/k;Ljava/io/OutputStream;Lde/a/a/a/a/d;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/io/archive/aeszip/l;->e:Lcom/estrongs/io/archive/aeszip/k;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/estrongs/io/archive/aeszip/l;->f:[B

    iput-object p2, p0, Lcom/estrongs/io/archive/aeszip/l;->c:Ljava/io/OutputStream;

    iput-object p3, p0, Lcom/estrongs/io/archive/aeszip/l;->d:Lde/a/a/a/a/d;

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/estrongs/io/archive/aeszip/l;->b:Ljava/util/zip/CRC32;

    return-void
.end method

.method private a([BI)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/l;->d:Lde/a/a/a/a/d;

    invoke-interface {v0, p1, p2}, Lde/a/a/a/a/d;->a([BI)V

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/l;->c:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/l;->b:Ljava/util/zip/CRC32;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/l;->b:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, v1, p2}, Ljava/util/zip/CRC32;->update([BII)V

    :cond_0
    iget-wide v0, p0, Lcom/estrongs/io/archive/aeszip/l;->a:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/io/archive/aeszip/l;->a:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/l;->b:Ljava/util/zip/CRC32;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/l;->b:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/l;->f:[B

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/l;->f:[B

    iget-object v1, p0, Lcom/estrongs/io/archive/aeszip/l;->f:[B

    array-length v1, v1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/io/archive/aeszip/l;->a([BI)V

    :cond_0
    return-void
.end method

.method public write(I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    iget-object v1, p0, Lcom/estrongs/io/archive/aeszip/l;->c:Ljava/io/OutputStream;

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/l;->f:[B

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/l;->f:[B

    array-length v0, v0

    add-int/2addr v0, p3

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/estrongs/io/archive/aeszip/l;->f:[B

    iget-object v2, p0, Lcom/estrongs/io/archive/aeszip/l;->f:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/estrongs/io/archive/aeszip/l;->f:[B

    array-length v1, v1

    invoke-static {p1, v3, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v1, v3, [B

    iput-object v1, p0, Lcom/estrongs/io/archive/aeszip/l;->f:[B

    array-length v1, v0

    invoke-virtual {p0, v0, v3, v1}, Lcom/estrongs/io/archive/aeszip/l;->write([BII)V

    :goto_0
    return-void

    :cond_0
    rem-int/lit8 v0, p3, 0x10

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p3}, Lcom/estrongs/io/archive/aeszip/l;->a([BI)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x10

    if-ge p3, v1, :cond_2

    invoke-direct {p0, p1, p3}, Lcom/estrongs/io/archive/aeszip/l;->a([BI)V

    goto :goto_0

    :cond_2
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/estrongs/io/archive/aeszip/l;->f:[B

    sub-int v1, p3, v0

    iget-object v2, p0, Lcom/estrongs/io/archive/aeszip/l;->f:[B

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v0, p3, v0

    invoke-direct {p0, p1, v0}, Lcom/estrongs/io/archive/aeszip/l;->a([BI)V

    goto :goto_0
.end method
