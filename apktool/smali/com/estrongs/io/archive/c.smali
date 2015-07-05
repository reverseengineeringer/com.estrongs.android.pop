.class public Lcom/estrongs/io/archive/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lorg/apache/commons/compress/archivers/zip/ZipLong;

.field public static final b:Lorg/apache/commons/compress/archivers/zip/ZipLong;

.field static final c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    const-wide/32 v2, 0x2014b50    # 1.6619997E-316

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>(J)V

    sput-object v0, Lcom/estrongs/io/archive/c;->a:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    const-wide/32 v2, 0x4034b50

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>(J)V

    sput-object v0, Lcom/estrongs/io/archive/c;->b:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    const-wide/32 v0, 0x6054b50

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    sput-object v0, Lcom/estrongs/io/archive/c;->c:[B

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)Lcom/estrongs/io/archive/e;
    .locals 3

    sget-object v0, Lcom/estrongs/io/archive/f;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/io/archive/b/a;

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/h;->f(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1, p2}, Lcom/estrongs/io/archive/b/a;-><init>(Ljava/io/OutputStream;I)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/estrongs/io/archive/f;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/estrongs/io/archive/f;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lcom/estrongs/io/archive/a/b;

    invoke-direct {v0, p0}, Lcom/estrongs/io/archive/a/b;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)Lcom/estrongs/io/archive/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/estrongs/io/archive/e;"
        }
    .end annotation

    const-string v0, "archive_type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "compress_level"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/estrongs/io/archive/c;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/estrongs/io/archive/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/estrongs/io/archive/h;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/estrongs/io/archive/c;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/estrongs/io/archive/h;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/estrongs/io/archive/h;
    .locals 4

    const/4 v1, 0x0

    const-string v0, "file://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    :cond_0
    if-nez p2, :cond_2

    invoke-static {p0}, Lcom/estrongs/io/archive/a;->a(Ljava/lang/String;)Lcom/estrongs/io/archive/h;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    move-object v0, v1

    :cond_3
    if-eqz p3, :cond_4

    sget-object v2, Lcom/estrongs/io/archive/f;->d:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v0, Lcom/estrongs/io/archive/sevenzip/r;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/io/archive/sevenzip/r;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/estrongs/android/util/bc;->M(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {p0}, Lcom/estrongs/io/archive/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Lcom/estrongs/io/archive/c;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/estrongs/io/archive/aeszip/h;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/io/archive/aeszip/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad zip file."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".gz"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v0, Lcom/estrongs/io/archive/a/a;

    invoke-direct {v0, p0}, Lcom/estrongs/io/archive/a/a;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".rar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v0, Lcom/estrongs/io/archive/sevenzip/c;

    const-string v2, "AUTO"

    invoke-direct {v0, p0, v2, v1}, Lcom/estrongs/io/archive/sevenzip/c;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/io/archive/sevenzip/e;)V

    invoke-virtual {v0}, Lcom/estrongs/io/archive/sevenzip/c;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/estrongs/io/archive/sevenzip/r;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/io/archive/sevenzip/r;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    new-instance v0, Lcom/estrongs/io/archive/rar/a;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/io/archive/rar/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    invoke-static {p0}, Lcom/estrongs/android/util/bc;->o(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/estrongs/io/archive/sevenzip/r;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/io/archive/sevenzip/r;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/estrongs/io/archive/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/estrongs/io/archive/h;"
        }
    .end annotation

    const-string v1, "true"

    const-string v0, "reload"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v0, "charset_name"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0, v1, p2}, Lcom/estrongs/io/archive/c;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/estrongs/io/archive/h;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_0
    return-object v0
.end method

.method static a(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0xc

    new-array v0, v0, [B

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_0
    invoke-static {v0, v2}, Lcom/estrongs/io/archive/c;->a([BI)Z

    move-result v0

    return v0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public static a([BI)Z
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/estrongs/io/archive/c;->b:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-ge p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/estrongs/io/archive/c;->b:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object v1

    invoke-static {p0, v1}, Lcom/estrongs/io/archive/c;->a([B[B)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/estrongs/io/archive/c;->c:[B

    invoke-static {p0, v1}, Lcom/estrongs/io/archive/c;->a([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a([B[B)Z
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    if-eq v2, v3, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;Ljava/util/Map;)Lcom/estrongs/io/archive/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/estrongs/io/archive/h;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/estrongs/io/archive/c;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/estrongs/io/archive/h;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    const-wide v4, 0x80000000L

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_2
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Invalid General Purpose Bit Flag"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_0

    :try_start_5
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :cond_2
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    :try_start_7
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_3
    :goto_1
    throw v0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v1

    goto :goto_1
.end method
