.class public Lcom/estrongs/io/archive/aeszip/k;
.super Lcom/estrongs/io/archive/j;


# instance fields
.field protected a:Lde/a/a/a/a/j;

.field private b:Lde/a/a/a/a/d;

.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/estrongs/io/a/d;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/estrongs/io/archive/j;-><init>(Ljava/lang/String;Lcom/estrongs/io/a/d;Ljava/util/Map;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/io/archive/aeszip/k;->b:Lde/a/a/a/a/d;

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/io/archive/aeszip/k;->g:I

    iput-object p3, p0, Lcom/estrongs/io/archive/aeszip/k;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/estrongs/io/a/d;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/estrongs/io/a/d;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "password"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/estrongs/io/archive/aeszip/k;-><init>(Ljava/lang/String;Lcom/estrongs/io/a/d;Ljava/lang/String;)V

    const-string v0, "compress_level"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/estrongs/io/archive/aeszip/k;->g:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/io/archive/aeszip/k;->g:I

    goto :goto_0
.end method

.method private static final a(J)I
    .locals 6

    const-wide/32 v0, 0x10000

    const-wide/16 v2, 0x2000

    cmp-long v4, p0, v0

    if-lez v4, :cond_1

    move-wide p0, v0

    :cond_0
    :goto_0
    long-to-int v0, p0

    return v0

    :cond_1
    cmp-long v0, p0, v2

    if-gez v0, :cond_0

    move-wide p0, v2

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/io/File;Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/k;->d:Lcom/estrongs/io/a/d;

    invoke-interface {v0}, Lcom/estrongs/io/a/d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_3

    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/i;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/k;->a:Lde/a/a/a/a/j;

    new-instance v2, Lde/a/a/a/a/i;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lde/a/a/a/a/i;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lde/a/a/a/a/j;->d(Lde/a/a/a/a/i;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/estrongs/fs/i;->c:Lcom/estrongs/fs/i;

    sget-object v3, Lcom/estrongs/a/b/o;->a:Lcom/estrongs/a/b/o;

    invoke-static {v0, v2, v3}, Lcom/estrongs/fs/impl/local/i;->a(Ljava/lang/String;Lcom/estrongs/fs/i;Lcom/estrongs/a/b/o;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    iget-object v3, p0, Lcom/estrongs/io/archive/aeszip/k;->d:Lcom/estrongs/io/a/d;

    invoke-interface {v3}, Lcom/estrongs/io/a/d;->b()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v1}, Lcom/estrongs/io/archive/aeszip/k;->a(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/k;->d:Lcom/estrongs/io/a/d;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/fs/impl/local/i;->e(Ljava/lang/String;)J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Lcom/estrongs/io/a/d;->a(Ljava/lang/String;J)V

    invoke-virtual {p0, v1, p1}, Lcom/estrongs/io/archive/aeszip/k;->a(Ljava/lang/String;Ljava/io/File;)V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/io/File;)V
    .locals 13

    const-wide/16 v6, 0x0

    const/4 v12, 0x0

    :try_start_0
    new-instance v0, Lde/a/a/a/a/e;

    iget-object v1, p0, Lcom/estrongs/io/archive/aeszip/k;->f:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lde/a/a/a/a/e;-><init>([B)V

    iput-object v0, p0, Lcom/estrongs/io/archive/aeszip/k;->b:Lde/a/a/a/a/d;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v2, Lde/a/a/a/a/i;

    invoke-direct {v2, p1}, Lde/a/a/a/a/i;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/estrongs/io/archive/aeszip/k;->g:I

    if-nez v0, :cond_0

    invoke-virtual {v2, v12}, Lde/a/a/a/a/i;->setMethod(I)V

    :goto_1
    invoke-virtual {v2, v6, v7}, Lde/a/a/a/a/i;->setCrc(J)V

    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/i;->e(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lde/a/a/a/a/i;->setSize(J)V

    invoke-virtual {v2, v6, v7}, Lde/a/a/a/a/i;->setCompressedSize(J)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lde/a/a/a/a/i;->setTime(J)V

    invoke-virtual {v2}, Lde/a/a/a/a/i;->a()V

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/k;->a:Lde/a/a/a/a/j;

    invoke-virtual {v0, v2}, Lde/a/a/a/a/j;->d(Lde/a/a/a/a/i;)V

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/k;->a:Lde/a/a/a/a/j;

    iget-object v1, p0, Lcom/estrongs/io/archive/aeszip/k;->b:Lde/a/a/a/a/d;

    invoke-interface {v1}, Lde/a/a/a/a/d;->a()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/a/a/a/a/j;->write([B)V

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/k;->a:Lde/a/a/a/a/j;

    iget-object v1, p0, Lcom/estrongs/io/archive/aeszip/k;->b:Lde/a/a/a/a/d;

    invoke-interface {v1}, Lde/a/a/a/a/d;->b()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/a/a/a/a/j;->write([B)V

    invoke-static {v4, v5}, Lcom/estrongs/io/archive/aeszip/k;->a(J)I

    move-result v0

    new-array v3, v0, [B

    new-instance v1, Lcom/estrongs/io/archive/aeszip/l;

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/k;->a:Lde/a/a/a/a/j;

    iget-object v6, p0, Lcom/estrongs/io/archive/aeszip/k;->b:Lde/a/a/a/a/d;

    invoke-direct {v1, p0, v0, v6}, Lcom/estrongs/io/archive/aeszip/l;-><init>(Lcom/estrongs/io/archive/aeszip/k;Ljava/io/OutputStream;Lde/a/a/a/a/d;)V

    iget v0, p0, Lcom/estrongs/io/archive/aeszip/k;->g:I

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_2
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v6

    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/estrongs/fs/impl/local/i;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    :goto_3
    invoke-virtual {v6, v3}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_4

    iget-object v8, p0, Lcom/estrongs/io/archive/aeszip/k;->d:Lcom/estrongs/io/a/d;

    invoke-interface {v8}, Lcom/estrongs/io/a/d;->b()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :goto_4
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Lde/a/a/a/a/i;->setMethod(I)V

    goto :goto_1

    :cond_1
    new-instance v6, Ljava/util/zip/Deflater;

    iget v0, p0, Lcom/estrongs/io/archive/aeszip/k;->g:I

    const/4 v7, 0x1

    invoke-direct {v6, v0, v7}, Ljava/util/zip/Deflater;-><init>(IZ)V

    new-instance v0, Ljava/util/zip/DeflaterOutputStream;

    const/16 v7, 0x2000

    invoke-direct {v0, v1, v6, v7}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v3, v12, v7}, Ljava/io/OutputStream;->write([BII)V

    iget-object v8, p0, Lcom/estrongs/io/archive/aeszip/k;->d:Lcom/estrongs/io/a/d;

    invoke-interface {v8}, Lcom/estrongs/io/a/d;->b()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    goto :goto_4

    :cond_3
    iget-wide v8, p0, Lcom/estrongs/io/archive/aeszip/k;->e:J

    int-to-long v10, v7

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/estrongs/io/archive/aeszip/k;->e:J

    iget-object v7, p0, Lcom/estrongs/io/archive/aeszip/k;->d:Lcom/estrongs/io/a/d;

    iget-wide v8, p0, Lcom/estrongs/io/archive/aeszip/k;->e:J

    invoke-interface {v7, v8, v9}, Lcom/estrongs/io/a/d;->a(J)V

    goto :goto_3

    :cond_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v2, v4, v5}, Lde/a/a/a/a/i;->setSize(J)V

    iget-wide v4, v1, Lcom/estrongs/io/archive/aeszip/l;->a:J

    const-wide/16 v6, 0x1c

    add-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lde/a/a/a/a/i;->setCompressedSize(J)V

    invoke-virtual {v1}, Lcom/estrongs/io/archive/aeszip/l;->a()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lde/a/a/a/a/i;->setCrc(J)V

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/k;->a:Lde/a/a/a/a/j;

    iget-object v1, p0, Lcom/estrongs/io/archive/aeszip/k;->b:Lde/a/a/a/a/d;

    invoke-interface {v1}, Lde/a/a/a/a/d;->c()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/a/a/a/a/j;->write([B)V

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/k;->a:Lde/a/a/a/a/j;

    invoke-virtual {v0, v2}, Lde/a/a/a/a/j;->a(Lde/a/a/a/a/i;)V

    goto :goto_4
.end method

.method public a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/io/archive/aeszip/k;->e:J

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/estrongs/io/archive/aeszip/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/fs/impl/local/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/fs/d;->g(Ljava/lang/String;)Z

    :cond_0
    :goto_0
    new-instance v1, Lcom/estrongs/io/archive/h;

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/k;->d:Lcom/estrongs/io/a/d;

    invoke-direct {v1, v0}, Lcom/estrongs/io/archive/h;-><init>(Lcom/estrongs/io/a/d;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/estrongs/io/archive/h;->a(Ljava/io/File;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/i;->g(Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/k;->d:Lcom/estrongs/io/a/d;

    invoke-interface {v0}, Lcom/estrongs/io/a/d;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    :goto_2
    return-void

    :cond_4
    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/k;->d:Lcom/estrongs/io/a/d;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/estrongs/io/archive/aeszip/k;->c:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/estrongs/io/archive/h;->a()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/estrongs/io/archive/h;->b()I

    move-result v3

    invoke-virtual {v1}, Lcom/estrongs/io/archive/h;->c()I

    move-result v1

    add-int/2addr v1, v3

    invoke-interface {v0, v2, v4, v5, v1}, Lcom/estrongs/io/a/d;->a(Ljava/lang/String;JI)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/io/archive/aeszip/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Lde/a/a/a/a/j;

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/i;->f(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    const/high16 v4, 0x100000

    invoke-direct {v3, v0, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v2, v3}, Lde/a/a/a/a/j;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/estrongs/io/archive/aeszip/k;->a:Lde/a/a/a/a/j;

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p0, v3, v0}, Lcom/estrongs/io/archive/aeszip/k;->a(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/estrongs/io/archive/aeszip/k;->a:Lde/a/a/a/a/j;

    invoke-virtual {v2}, Lde/a/a/a/a/j;->a()V

    iget-object v2, p0, Lcom/estrongs/io/archive/aeszip/k;->a:Lde/a/a/a/a/j;

    invoke-virtual {v2}, Lde/a/a/a/a/j;->close()V

    iget-object v2, p0, Lcom/estrongs/io/archive/aeszip/k;->d:Lcom/estrongs/io/a/d;

    invoke-interface {v2}, Lcom/estrongs/io/a/d;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/estrongs/a/b/s;->b:Lcom/estrongs/a/b/s;

    invoke-virtual {v2, v1, v3}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Lcom/estrongs/a/b/s;)Z

    :cond_5
    throw v0

    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/k;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/io/archive/aeszip/k;->c:Ljava/lang/String;

    sget-object v3, Lcom/estrongs/a/b/s;->b:Lcom/estrongs/a/b/s;

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Lcom/estrongs/a/b/s;)Z

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/io/archive/aeszip/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/h;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/k;->a:Lde/a/a/a/a/j;

    invoke-virtual {v0}, Lde/a/a/a/a/j;->a()V

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/k;->a:Lde/a/a/a/a/j;

    invoke-virtual {v0}, Lde/a/a/a/a/j;->close()V

    iget-object v0, p0, Lcom/estrongs/io/archive/aeszip/k;->d:Lcom/estrongs/io/a/d;

    invoke-interface {v0}, Lcom/estrongs/io/a/d;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/estrongs/a/b/s;->b:Lcom/estrongs/a/b/s;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Lcom/estrongs/a/b/s;)Z

    goto/16 :goto_2

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/estrongs/a/b/s;->b:Lcom/estrongs/a/b/s;

    invoke-virtual {v2, v3, v4}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Lcom/estrongs/a/b/s;)Z

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
