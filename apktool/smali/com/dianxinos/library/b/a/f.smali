.class public Lcom/dianxinos/library/b/a/f;
.super Ljava/io/FilterOutputStream;


# instance fields
.field final a:Ljava/util/zip/CRC32;

.field b:I


# virtual methods
.method public a()V
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public b()J
    .locals 2

    iget-object v0, p0, Lcom/dianxinos/library/b/a/f;->a:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public c()J
    .locals 2

    iget v0, p0, Lcom/dianxinos/library/b/a/f;->b:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public write(I)V
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/library/b/a/f;->a:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1}, Ljava/util/zip/CRC32;->update(I)V

    iget v0, p0, Lcom/dianxinos/library/b/a/f;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dianxinos/library/b/a/f;->b:I

    iget-object v0, p0, Lcom/dianxinos/library/b/a/f;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    if-lez p3, :cond_0

    iget-object v0, p0, Lcom/dianxinos/library/b/a/f;->a:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    iget v0, p0, Lcom/dianxinos/library/b/a/f;->b:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/dianxinos/library/b/a/f;->b:I

    iget-object v0, p0, Lcom/dianxinos/library/b/a/f;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :cond_0
    return-void
.end method
