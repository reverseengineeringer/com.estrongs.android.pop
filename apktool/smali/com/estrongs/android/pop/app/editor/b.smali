.class public Lcom/estrongs/android/pop/app/editor/b;
.super Ljava/io/Reader;


# instance fields
.field private a:Lcom/estrongs/android/pop/app/editor/a;

.field private b:Z

.field private c:Ljava/nio/charset/CharsetDecoder;

.field private final d:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p2}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/editor/b;->b:Z

    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/b;->d:Ljava/nio/ByteBuffer;

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    const-string v0, "r"

    invoke-static {p1, p2, v0}, Lcom/estrongs/android/pop/app/editor/a;->a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Lcom/estrongs/android/pop/app/editor/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/b;->a:Lcom/estrongs/android/pop/app/editor/a;

    invoke-static {p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/b;->c:Ljava/nio/charset/CharsetDecoder;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/b;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p3}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/UnsupportedEncodingException;

    throw v0
.end method

.method private c()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/b;->a:Lcom/estrongs/android/pop/app/editor/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/editor/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/b;->c:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(J)V
    .locals 3

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/b;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/b;->a:Lcom/estrongs/android/pop/app/editor/a;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v2, "InputStreamReader is closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/b;->a:Lcom/estrongs/android/pop/app/editor/a;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/pop/app/editor/a;->a(J)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/b;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/b;->d:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public b()J
    .locals 6

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/b;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/b;->a:Lcom/estrongs/android/pop/app/editor/a;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v2, "InputStreamReader is closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/b;->a:Lcom/estrongs/android/pop/app/editor/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/editor/a;->a()J

    move-result-wide v2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/b;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v4, p0, Lcom/estrongs/android/pop/app/editor/b;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-long v4, v0

    sub-long/2addr v2, v4

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-wide v2
.end method

.method public close()V
    .locals 2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/b;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/b;->c:Ljava/nio/charset/CharsetDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/b;->c:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/b;->c:Ljava/nio/charset/CharsetDecoder;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/b;->a:Lcom/estrongs/android/pop/app/editor/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/b;->a:Lcom/estrongs/android/pop/app/editor/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/editor/a;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/b;->a:Lcom/estrongs/android/pop/app/editor/a;

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public read()I
    .locals 5

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/b;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/editor/b;->c()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v2, "InputStreamReader is closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [C

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/estrongs/android/pop/app/editor/b;->read([CII)I

    move-result v3

    if-eq v3, v0, :cond_1

    const/4 v0, 0x0

    aget-char v0, v2, v0

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0
.end method

.method public read([CII)I
    .locals 10

    const/4 v2, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/estrongs/android/pop/app/editor/b;->lock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/editor/b;->c()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "InputStreamReader is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    if-nez p3, :cond_1

    :try_start_1
    monitor-exit v4

    :goto_0
    return v0

    :cond_1
    invoke-static {p1, p2, p3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v5

    sget-object v3, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    iget-object v6, p0, Lcom/estrongs/android/pop/app/editor/b;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-nez v6, :cond_2

    move v0, v1

    :cond_2
    move v9, v0

    move-object v0, v3

    move v3, v9

    :goto_1
    invoke-virtual {v5}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/estrongs/android/pop/app/editor/b;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    iget-object v6, p0, Lcom/estrongs/android/pop/app/editor/b;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    sub-int/2addr v3, v6

    iget-object v6, p0, Lcom/estrongs/android/pop/app/editor/b;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    iget-object v7, p0, Lcom/estrongs/android/pop/app/editor/b;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/estrongs/android/pop/app/editor/b;->a:Lcom/estrongs/android/pop/app/editor/a;

    iget-object v8, p0, Lcom/estrongs/android/pop/app/editor/b;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {v7, v8, v6, v3}, Lcom/estrongs/android/pop/app/editor/a;->a([BII)I

    move-result v3

    if-ne v3, v2, :cond_7

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/editor/b;->b:Z

    :cond_3
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v0, v1, :cond_4

    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/editor/b;->b:Z

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/b;->c:Ljava/nio/charset/CharsetDecoder;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/b;->d:Ljava/nio/ByteBuffer;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v5, v3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/b;->c:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v1, v5}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/b;->c:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    :cond_4
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    :cond_6
    invoke-virtual {v5}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    sub-int/2addr v0, p2

    if-nez v0, :cond_a

    move v0, v2

    :goto_2
    monitor-exit v4

    goto :goto_0

    :cond_7
    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/b;->d:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lcom/estrongs/android/pop/app/editor/b;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    add-int/2addr v3, v6

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/b;->c:Ljava/nio/charset/CharsetDecoder;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/editor/b;->d:Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v5, v6}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/estrongs/android/pop/app/editor/b;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    iget-object v6, p0, Lcom/estrongs/android/pop/app/editor/b;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    if-ne v3, v6, :cond_9

    iget-object v3, p0, Lcom/estrongs/android/pop/app/editor/b;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/editor/b;->d:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lcom/estrongs/android/pop/app/editor/b;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/editor/b;->d:Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_9
    move v3, v1

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v5}, Ljava/nio/CharBuffer;->position()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    sub-int/2addr v0, p2

    goto :goto_2
.end method

.method public ready()Z
    .locals 1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method
