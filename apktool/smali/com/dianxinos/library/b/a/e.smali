.class Lcom/dianxinos/library/b/a/e;
.super Ljava/io/FilterInputStream;


# instance fields
.field final a:Ljava/util/zip/CRC32;

.field b:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/library/b/a/e;->a:Ljava/util/zip/CRC32;

    const/4 v0, 0x0

    iput v0, p0, Lcom/dianxinos/library/b/a/e;->b:I

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-object v0, p0, Lcom/dianxinos/library/b/a/e;->a:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public b()J
    .locals 2

    iget v0, p0, Lcom/dianxinos/library/b/a/e;->b:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 2

    iget-object v0, p0, Lcom/dianxinos/library/b/a/e;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iget-object v1, p0, Lcom/dianxinos/library/b/a/e;->a:Ljava/util/zip/CRC32;

    invoke-virtual {v1, v0}, Ljava/util/zip/CRC32;->update(I)V

    iget v1, p0, Lcom/dianxinos/library/b/a/e;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/dianxinos/library/b/a/e;->b:I

    return v0
.end method

.method public read([BII)I
    .locals 2

    iget-object v0, p0, Lcom/dianxinos/library/b/a/e;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/dianxinos/library/b/a/e;->a:Ljava/util/zip/CRC32;

    invoke-virtual {v1, p1, p2, v0}, Ljava/util/zip/CRC32;->update([BII)V

    iget v1, p0, Lcom/dianxinos/library/b/a/e;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/dianxinos/library/b/a/e;->b:I

    :cond_0
    return v0
.end method

.method public declared-synchronized reset()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public skip(J)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method
