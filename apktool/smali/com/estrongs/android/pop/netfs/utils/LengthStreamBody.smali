.class public Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;
.super Lorg/apache/http/entity/mime/content/AbstractContentBody;


# instance fields
.field private final filename:Ljava/lang/String;

.field private final in:Ljava/io/InputStream;

.field private left_data:J

.field private final length:J

.field private send_length:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;J)V
    .locals 7

    const-string v2, "application/octet-stream"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;JJ)V
    .locals 7

    const-string v2, "application/octet-stream"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;J)V

    iput-wide p5, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->send_length:J

    iput-wide p3, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->left_data:J

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0, p2}, Lorg/apache/http/entity/mime/content/AbstractContentBody;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->send_length:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->left_data:J

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->in:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->filename:Ljava/lang/String;

    iput-wide p4, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->length:J

    return-void
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 4

    iget-wide v0, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->send_length:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->length:J

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->left_data:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->send_length:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->send_length:J

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->left_data:J

    goto :goto_0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .locals 1

    const-string v0, "binary"

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 8

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->send_length:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->writeTo2(Ljava/io/OutputStream;)V

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v0, 0x4000

    :try_start_0
    new-array v4, v0, [B

    const-wide/16 v2, 0x0

    move v0, v1

    :cond_2
    :goto_1
    iget-wide v6, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->length:J

    cmp-long v5, v2, v6

    if-gez v5, :cond_3

    iget-object v5, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->in:Ljava/io/InputStream;

    rsub-int v6, v0, 0x4000

    invoke-virtual {v5, v4, v0, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    :cond_3
    if-eqz v0, :cond_4

    const-string v1, "LengthStream"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "last send:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {p1, v4, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    :cond_4
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :cond_5
    add-int v6, v5, v0

    const/16 v7, 0x400

    if-le v6, v7, :cond_6

    const/4 v6, 0x0

    add-int/2addr v0, v5

    :try_start_1
    invoke-virtual {p1, v4, v6, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    :goto_2
    int-to-long v6, v5

    add-long/2addr v2, v6

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    const-wide/16 v6, 0x14

    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_1

    :cond_6
    add-int/2addr v0, v5

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_3
    const-string v1, "LengthStream"

    const-string v2, "occur exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method public writeTo(Ljava/io/OutputStream;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method

.method public writeTo2(Ljava/io/OutputStream;)V
    .locals 11

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->left_data:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->send_length:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    iget-wide v0, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->send_length:J

    :goto_0
    const/16 v2, 0x4000

    :try_start_0
    new-array v7, v2, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    move v6, v4

    move-wide v2, v0

    :goto_1
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_5

    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_8

    :try_start_1
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catch_0
    move-exception v0

    :goto_2
    :try_start_2
    const-string v1, "LengthStream"

    const-string v4, "occur exception"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-wide v0, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->left_data:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_3
    :goto_3
    return-void

    :cond_4
    iget-wide v0, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->left_data:J

    goto :goto_0

    :cond_5
    rsub-int v4, v6, 0x4000

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-lez v4, :cond_6

    move-wide v4, v2

    :goto_4
    :try_start_3
    iget-object v8, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->in:Ljava/io/InputStream;

    long-to-int v4, v4

    invoke-virtual {v8, v7, v6, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v4, -0x1

    if-eq v5, v4, :cond_1

    add-int v4, v5, v6

    const/16 v8, 0x400

    if-le v4, v8, :cond_7

    const/4 v4, 0x0

    add-int/2addr v6, v5

    invoke-virtual {p1, v7, v4, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v4, 0x0

    :goto_5
    int-to-long v8, v5

    sub-long/2addr v2, v8

    const/4 v6, 0x1

    if-ne v5, v6, :cond_d

    const-wide/16 v8, 0x14

    :try_start_4
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v6, v4

    goto :goto_1

    :cond_6
    rsub-int v4, v6, 0x4000

    int-to-long v4, v4

    goto :goto_4

    :cond_7
    add-int v4, v6, v5

    goto :goto_5

    :catch_1
    move-exception v5

    move v6, v4

    goto :goto_1

    :cond_8
    if-eqz v6, :cond_9

    const/4 v4, 0x0

    :try_start_5
    invoke-virtual {p1, v7, v4, v6}, Ljava/io/OutputStream;->write([BII)V

    :cond_9
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    iget-wide v4, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->left_data:J

    sub-long v0, v4, v0

    iput-wide v0, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->left_data:J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    iget-wide v0, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->left_data:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_a

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_3

    :cond_a
    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_3

    :catchall_0
    move-exception v2

    move-object v10, v2

    move-wide v2, v0

    move-object v0, v10

    :goto_6
    iget-wide v4, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->left_data:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_b

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_c

    :cond_b
    iget-object v1, p0, Lcom/estrongs/android/pop/netfs/utils/LengthStreamBody;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_c
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v2

    move-object v10, v2

    move-wide v2, v0

    move-object v0, v10

    goto/16 :goto_2

    :cond_d
    move v6, v4

    goto/16 :goto_1
.end method
