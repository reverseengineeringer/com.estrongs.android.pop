.class final Lcom/a/a/f;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:[B


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lcom/a/a/f;
    .locals 7

    const/16 v6, 0x18

    const/4 v1, 0x0

    new-instance v2, Lcom/a/a/f;

    invoke-direct {v2}, Lcom/a/a/f;-><init>()V

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    move v0, v1

    :cond_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    rsub-int/lit8 v5, v0, 0x18

    invoke-virtual {p0, v4, v0, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-gez v4, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/2addr v0, v4

    if-lt v0, v6, :cond_0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, v2, Lcom/a/a/f;->a:I

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, v2, Lcom/a/a/f;->b:I

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, v2, Lcom/a/a/f;->c:I

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, v2, Lcom/a/a/f;->d:I

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, v2, Lcom/a/a/f;->e:I

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, v2, Lcom/a/a/f;->f:I

    iget v0, v2, Lcom/a/a/f;->d:I

    if-eqz v0, :cond_4

    iget v0, v2, Lcom/a/a/f;->d:I

    new-array v0, v0, [B

    iput-object v0, v2, Lcom/a/a/f;->g:[B

    :cond_2
    iget-object v0, v2, Lcom/a/a/f;->g:[B

    iget v3, v2, Lcom/a/a/f;->d:I

    sub-int/2addr v3, v1

    invoke-virtual {p0, v0, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-gez v0, :cond_3

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    add-int/2addr v1, v0

    iget v0, v2, Lcom/a/a/f;->d:I

    if-lt v1, v0, :cond_2

    :cond_4
    return-object v2
.end method
