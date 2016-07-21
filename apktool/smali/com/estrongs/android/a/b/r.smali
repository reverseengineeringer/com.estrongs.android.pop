.class public Lcom/estrongs/android/a/b/r;
.super Lcom/estrongs/android/a/b/k;


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Lcom/estrongs/android/a/b/k;

.field private e:[B


# direct methods
.method public constructor <init>(JLjava/lang/String;JJLjava/lang/String;I)V
    .locals 10

    move-object v2, p0

    move-object v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/estrongs/android/a/b/k;-><init>(Ljava/lang/String;JJ)V

    iput-wide p1, p0, Lcom/estrongs/android/a/b/r;->a:J

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/estrongs/android/a/b/r;->b:Ljava/lang/String;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/estrongs/android/a/b/r;->c:Z

    move-object v3, p0

    move/from16 v4, p9

    move-object v5, p3

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v3 .. v9}, Lcom/estrongs/android/a/b/r;->a(ILjava/lang/String;JJ)Lcom/estrongs/android/a/b/k;

    move-result-object v2

    iput-object v2, p0, Lcom/estrongs/android/a/b/r;->d:Lcom/estrongs/android/a/b/k;

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/android/a/b/k;)V
    .locals 6

    invoke-virtual {p1}, Lcom/estrongs/android/a/b/k;->e_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/estrongs/android/a/b/k;->d()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/estrongs/android/a/b/k;->f()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/a/b/k;-><init>(Ljava/lang/String;JJ)V

    iput-object p1, p0, Lcom/estrongs/android/a/b/r;->d:Lcom/estrongs/android/a/b/k;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/a/b/r;->a:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/a/b/r;->b:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/a/b/r;->c:Z

    return-void
.end method

.method private a(ILjava/lang/String;JJ)Lcom/estrongs/android/a/b/k;
    .locals 7

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/estrongs/android/a/b/p;

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/a/b/p;-><init>(Ljava/lang/String;JJ)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    new-instance v0, Lcom/estrongs/android/a/b/o;

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/a/b/o;-><init>(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    new-instance v0, Lcom/estrongs/android/a/b/w;

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/a/b/w;-><init>(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    new-instance v0, Lcom/estrongs/android/a/b/e;

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/a/b/e;-><init>(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    new-instance v0, Lcom/estrongs/android/a/b/b;

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/a/b/b;-><init>(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    new-instance v0, Lcom/estrongs/android/a/b/v;

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/a/b/v;-><init>(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/estrongs/android/a/b/k;

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/a/b/k;-><init>(Ljava/lang/String;JJ)V

    goto :goto_0
.end method

.method private a(Lcom/estrongs/android/a/b/k;)Ljava/lang/String;
    .locals 8

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v1, 0x1800

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Lcom/estrongs/android/a/b/k;->b()Ljava/io/File;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Lcom/estrongs/android/a/b/k;->d()J

    move-result-wide v6

    long-to-int v0, v6

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/a/b/r;->e:[B

    const/16 v5, 0x1800

    const/4 v6, 0x0

    invoke-static {v1, v0, v5, v6}, Ljava/util/Arrays;->fill([BIIB)V

    :goto_0
    move v1, v0

    move v0, v4

    :cond_0
    iget-object v4, p0, Lcom/estrongs/android/a/b/r;->e:[B

    invoke-virtual {v3, v4, v0, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    add-int/2addr v0, v4

    sub-int/2addr v1, v4

    if-nez v1, :cond_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/a/b/r;->e:[B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/android/common/security/MD5Util;->toMd5([BZ)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    invoke-static {v3}, Lcom/estrongs/fs/util/m;->a(Ljava/io/InputStream;)V

    :goto_1
    return-object v0

    :cond_2
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v1}, Lcom/estrongs/fs/util/m;->a(Ljava/io/InputStream;)V

    move-object v0, v2

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v3, v2

    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v3}, Lcom/estrongs/fs/util/m;->a(Ljava/io/InputStream;)V

    move-object v0, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_4
    invoke-static {v3}, Lcom/estrongs/fs/util/m;->a(Ljava/io/InputStream;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v3, v1

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v1, v3

    goto :goto_2
.end method

.method private a(Ljava/io/InputStream;I[BII)[B
    .locals 4

    :goto_0
    if-lez p2, :cond_1

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ": unexpected EOF"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    int-to-long v2, p2

    sub-long v0, v2, v0

    long-to-int p2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    add-int v1, p4, v0

    invoke-virtual {p1, p3, v1, p5}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    add-int/2addr v0, v1

    sub-int/2addr p5, v1

    if-nez p5, :cond_2

    :cond_3
    return-object p3
.end method

.method private b(Lcom/estrongs/android/a/b/k;)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x3

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/estrongs/android/a/b/k;->d()J

    move-result-wide v2

    long-to-int v1, v2

    new-array v8, v9, [I

    aput v0, v8, v0

    shr-int/lit8 v2, v1, 0x1

    add-int/lit16 v2, v2, -0x800

    aput v2, v8, v4

    const/4 v2, 0x2

    add-int/lit16 v1, v1, -0x1000

    aput v1, v8, v2

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Lcom/estrongs/android/a/b/k;->b()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v7, v0

    move-object v0, v6

    :goto_0
    if-ge v7, v9, :cond_0

    :try_start_1
    aget v2, v8, v7

    iget-object v3, p0, Lcom/estrongs/android/a/b/r;->e:[B

    mul-int/lit16 v4, v7, 0x800

    const/16 v5, 0x800

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/a/b/r;->a(Ljava/io/InputStream;I[BII)[B

    move-result-object v2

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    move-object v0, v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/baidu/android/common/security/MD5Util;->toMd5([BZ)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    invoke-static {v1}, Lcom/estrongs/fs/util/m;->a(Ljava/io/InputStream;)V

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v6

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1}, Lcom/estrongs/fs/util/m;->a(Ljava/io/InputStream;)V

    move-object v0, v6

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v6

    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v1}, Lcom/estrongs/fs/util/m;->a(Ljava/io/InputStream;)V

    move-object v0, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_4
    invoke-static {v1}, Lcom/estrongs/fs/util/m;->a(Ljava/io/InputStream;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method public static i()Ljava/lang/ThreadLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/estrongs/android/a/b/t;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/estrongs/android/a/b/s;

    invoke-direct {v0}, Lcom/estrongs/android/a/b/s;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/estrongs/fs/h;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/b/r;->d:Lcom/estrongs/android/a/b/k;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/k;->a()Lcom/estrongs/fs/h;

    move-result-object v0

    return-object v0
.end method

.method public a([B)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/a/b/r;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/a/b/r;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iput-object p1, p0, Lcom/estrongs/android/a/b/r;->e:[B

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/a/b/r;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/a/b/r;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x2000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    invoke-direct {p0, p0}, Lcom/estrongs/android/a/b/r;->a(Lcom/estrongs/android/a/b/k;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/a/b/r;->b:Ljava/lang/String;

    :cond_1
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/a/b/r;->b:Ljava/lang/String;

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-direct {p0, p0}, Lcom/estrongs/android/a/b/r;->b(Lcom/estrongs/android/a/b/k;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/a/b/r;->b:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/estrongs/android/a/b/r;->a:J

    return-void
.end method

.method public final j()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/a/b/r;->a:J

    return-wide v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/b/r;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/a/b/r;->c:Z

    return v0
.end method

.method public final m()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/a/b/r;->c:Z

    return-void
.end method

.method public n()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/b/r;->d:Lcom/estrongs/android/a/b/k;

    instance-of v0, v0, Lcom/estrongs/android/a/b/p;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/a/b/r;->d:Lcom/estrongs/android/a/b/k;

    instance-of v0, v0, Lcom/estrongs/android/a/b/o;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/a/b/r;->d:Lcom/estrongs/android/a/b/k;

    instance-of v0, v0, Lcom/estrongs/android/a/b/w;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/a/b/r;->d:Lcom/estrongs/android/a/b/k;

    instance-of v0, v0, Lcom/estrongs/android/a/b/e;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/a/b/r;->d:Lcom/estrongs/android/a/b/k;

    instance-of v0, v0, Lcom/estrongs/android/a/b/b;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/a/b/r;->d:Lcom/estrongs/android/a/b/k;

    instance-of v0, v0, Lcom/estrongs/android/a/b/v;

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SameFileResultObject [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/estrongs/android/a/b/r;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", md5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/a/b/r;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/a/b/r;->e_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", exist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/estrongs/android/a/b/r;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastModified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/a/b/r;->f()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",filesize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/a/b/r;->d()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
