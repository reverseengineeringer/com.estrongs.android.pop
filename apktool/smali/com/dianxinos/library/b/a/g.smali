.class Lcom/dianxinos/library/b/a/g;
.super Ljava/io/FilterInputStream;


# instance fields
.field a:J

.field b:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-wide v0, p0, Lcom/dianxinos/library/b/a/g;->a:J

    iput-wide v0, p0, Lcom/dianxinos/library/b/a/g;->b:J

    iput-wide p2, p0, Lcom/dianxinos/library/b/a/g;->a:J

    iput-wide v0, p0, Lcom/dianxinos/library/b/a/g;->b:J

    return-void
.end method


# virtual methods
.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 4

    iget-wide v0, p0, Lcom/dianxinos/library/b/a/g;->a:J

    iget-wide v2, p0, Lcom/dianxinos/library/b/a/g;->b:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/dianxinos/library/b/a/g;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dianxinos/library/b/a/g;->b:J

    iget-object v0, p0, Lcom/dianxinos/library/b/a/g;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 6

    iget-wide v0, p0, Lcom/dianxinos/library/b/a/g;->a:J

    iget-wide v2, p0, Lcom/dianxinos/library/b/a/g;->b:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    int-to-long v0, p3

    iget-wide v2, p0, Lcom/dianxinos/library/b/a/g;->a:J

    iget-wide v4, p0, Lcom/dianxinos/library/b/a/g;->b:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    :try_start_0
    iget-object v1, p0, Lcom/dianxinos/library/b/a/g;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    iget-wide v2, p0, Lcom/dianxinos/library/b/a/g;->b:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/dianxinos/library/b/a/g;->b:J

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0
.end method
