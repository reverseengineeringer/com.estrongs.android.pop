.class public Lcom/estrongs/io/archive/aeszip/h;
.super Lcom/estrongs/io/archive/h;


# instance fields
.field h:Lcom/estrongs/io/archive/aeszip/a;

.field i:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/io/archive/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/io/archive/aeszip/h;->h:Lcom/estrongs/io/archive/aeszip/a;

    iput-boolean v1, p0, Lcom/estrongs/io/archive/aeszip/h;->i:Z

    sget-object v0, Lcom/estrongs/android/util/f;->a:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/io/archive/aeszip/h;->i:Z

    invoke-static {}, Lcom/estrongs/android/util/f;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/io/archive/h;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/h;->h:Lcom/estrongs/io/archive/aeszip/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 5

    new-instance v0, Lcom/estrongs/io/archive/aeszip/a;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/estrongs/io/archive/aeszip/h;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/io/archive/aeszip/h;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/estrongs/io/archive/aeszip/h;->i:Z

    new-instance v4, Lcom/estrongs/io/archive/aeszip/i;

    invoke-direct {v4, p0}, Lcom/estrongs/io/archive/aeszip/i;-><init>(Lcom/estrongs/io/archive/aeszip/h;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/estrongs/io/archive/aeszip/a;-><init>(Ljava/io/File;Ljava/lang/String;ZLcom/estrongs/io/archive/aeszip/b;)V

    iput-object v0, p0, Lcom/estrongs/io/archive/aeszip/h;->h:Lcom/estrongs/io/archive/aeszip/a;

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/h;->h:Lcom/estrongs/io/archive/aeszip/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/h;->h:Lcom/estrongs/io/archive/aeszip/a;

    invoke-virtual {v0}, Lcom/estrongs/io/archive/aeszip/a;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/io/archive/aeszip/h;->h:Lcom/estrongs/io/archive/aeszip/a;

    :cond_0
    return-void
.end method

.method public d(Lcom/estrongs/io/model/ArchiveEntryFile;Lcom/estrongs/io/a/b;)Ljava/io/File;
    .locals 11

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/io/archive/aeszip/h;->b(Lcom/estrongs/io/model/ArchiveEntryFile;Lcom/estrongs/io/a/b;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/io/archive/aeszip/h;->c(Lcom/estrongs/io/model/ArchiveEntryFile;Lcom/estrongs/io/a/b;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    check-cast p1, Lcom/estrongs/io/archive/aeszip/AesZipArchiveEntryFile;

    invoke-virtual {p1}, Lcom/estrongs/io/archive/aeszip/AesZipArchiveEntryFile;->getArchiveEntry()Lde/a/a/a/a/i;

    move-result-object v5

    :try_start_0
    iget-object v2, p0, Lcom/estrongs/io/archive/aeszip/h;->h:Lcom/estrongs/io/archive/aeszip/a;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/io/archive/aeszip/h;->b()V

    :cond_1
    if-nez v5, :cond_5

    new-instance v2, Ljava/io/IOException;

    const-string v3, "IllegalArgument - Archive Entry is NULL"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :catch_0
    move-exception v2

    move-object v3, v0

    move-object v10, v0

    move-object v0, v2

    move-object v2, v10

    :goto_1
    if-nez v4, :cond_2

    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_2
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object v10, v2

    move-object v2, v3

    move-object v3, v10

    :goto_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_3
    invoke-interface {p2}, Lcom/estrongs/io/a/b;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_4
    throw v0

    :cond_5
    :try_start_2
    iget-object v2, p0, Lcom/estrongs/io/archive/aeszip/h;->h:Lcom/estrongs/io/archive/aeszip/a;

    invoke-virtual {v5}, Lde/a/a/a/a/i;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/estrongs/io/archive/aeszip/a;->a(Ljava/lang/String;Lcom/estrongs/io/a/b;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    if-eqz v3, :cond_a

    :try_start_3
    invoke-interface {p2}, Lcom/estrongs/io/a/b;->b()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/fs/impl/local/h;->f(Ljava/lang/String;)Ljava/io/OutputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v2

    :try_start_4
    invoke-virtual {v5}, Lde/a/a/a/a/i;->getSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/estrongs/io/archive/aeszip/a;->a(J)I

    move-result v0

    new-array v0, v0, [B

    :goto_3
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_6

    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6, v5}, Ljava/io/OutputStream;->write([BII)V

    invoke-interface {p2}, Lcom/estrongs/io/a/b;->b()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result v6

    if-eqz v6, :cond_9

    :cond_6
    :goto_4
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_7
    invoke-interface {p2}, Lcom/estrongs/io/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz v3, :cond_8

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_8
    move-object v0, v1

    goto :goto_0

    :cond_9
    :try_start_5
    iget-wide v6, p0, Lcom/estrongs/io/archive/aeszip/h;->a:J

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/estrongs/io/archive/aeszip/h;->a:J

    iget-wide v6, p0, Lcom/estrongs/io/archive/aeszip/h;->a:J

    invoke-interface {p2, v6, v7}, Lcom/estrongs/io/a/b;->a(J)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v10, v3

    move-object v3, v2

    move-object v2, v10

    goto :goto_1

    :catchall_1
    move-exception v2

    move-object v3, v0

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    goto :goto_2

    :catchall_2
    move-exception v2

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    goto :goto_2

    :catchall_3
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v2

    move-object v10, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v10

    goto/16 :goto_1

    :cond_a
    move-object v2, v0

    goto :goto_4
.end method

.method protected i()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/estrongs/io/model/ArchiveEntryFile;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/estrongs/io/archive/aeszip/j;

    invoke-direct {v0, p0}, Lcom/estrongs/io/archive/aeszip/j;-><init>(Lcom/estrongs/io/archive/aeszip/h;)V

    return-object v0
.end method
