.class public Lcom/estrongs/io/archive/j;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Ljava/lang/String;

.field protected d:Lcom/estrongs/io/a/d;

.field protected e:J


# direct methods
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/io/archive/j;->e:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/io/archive/j;->a:Ljava/util/Map;

    iput-object p1, p0, Lcom/estrongs/io/archive/j;->c:Ljava/lang/String;

    if-nez p2, :cond_1

    sget-object v0, Lcom/estrongs/io/a/d;->b:Lcom/estrongs/io/a/d;

    iput-object v0, p0, Lcom/estrongs/io/archive/j;->d:Lcom/estrongs/io/a/d;

    :goto_0
    if-eqz p3, :cond_0

    iput-object p3, p0, Lcom/estrongs/io/archive/j;->a:Ljava/util/Map;

    :cond_0
    return-void

    :cond_1
    iput-object p2, p0, Lcom/estrongs/io/archive/j;->d:Lcom/estrongs/io/a/d;

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/io/archive/j;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected a(Ljava/io/File;Ljava/lang/String;Lcom/estrongs/io/archive/f;)V
    .locals 7

    const/high16 v6, 0x100000

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/io/archive/j;->d:Lcom/estrongs/io/a/d;

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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/estrongs/io/archive/f;->a(Ljava/lang/String;)V

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

    new-instance v3, Ljava/io/File;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v1, p3}, Lcom/estrongs/io/archive/j;->a(Ljava/io/File;Ljava/lang/String;Lcom/estrongs/io/archive/f;)V

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
    iget-object v0, p0, Lcom/estrongs/io/archive/j;->d:Lcom/estrongs/io/a/d;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/fs/impl/local/i;->e(Ljava/lang/String;)J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Lcom/estrongs/io/a/d;->a(Ljava/lang/String;J)V

    invoke-interface {p3, v1}, Lcom/estrongs/io/archive/f;->a(Ljava/lang/String;)V

    new-array v0, v6, [B

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/estrongs/fs/impl/local/i;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    new-instance v1, Ljava/io/BufferedInputStream;

    const/high16 v4, 0x100000

    invoke-direct {v1, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_3
    const/4 v2, 0x0

    const/high16 v3, 0x100000

    :try_start_1
    invoke-virtual {v1, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    iget-object v3, p0, Lcom/estrongs/io/archive/j;->d:Lcom/estrongs/io/a/d;

    invoke-interface {v3}, Lcom/estrongs/io/a/d;->b()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_7

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_6
    invoke-interface {p3}, Lcom/estrongs/io/archive/f;->a()V

    goto/16 :goto_0

    :cond_7
    const/4 v3, 0x0

    :try_start_2
    invoke-interface {p3, v0, v3, v2}, Lcom/estrongs/io/archive/f;->a([BII)V

    iget-wide v4, p0, Lcom/estrongs/io/archive/j;->e:J

    int-to-long v2, v2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/io/archive/j;->e:J

    iget-object v2, p0, Lcom/estrongs/io/archive/j;->d:Lcom/estrongs/io/a/d;

    iget-wide v4, p0, Lcom/estrongs/io/archive/j;->e:J

    invoke-interface {v2, v4, v5}, Lcom/estrongs/io/a/d;->a(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_8
    invoke-interface {p3}, Lcom/estrongs/io/archive/f;->a()V

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

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

    iput-wide v0, p0, Lcom/estrongs/io/archive/j;->e:J

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/estrongs/io/archive/j;->a()Ljava/lang/String;

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

    iget-object v0, p0, Lcom/estrongs/io/archive/j;->d:Lcom/estrongs/io/a/d;

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
    iget-object v0, p0, Lcom/estrongs/io/archive/j;->d:Lcom/estrongs/io/a/d;

    invoke-interface {v0}, Lcom/estrongs/io/a/d;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    :goto_2
    return-void

    :cond_4
    iget-object v0, p0, Lcom/estrongs/io/archive/j;->d:Lcom/estrongs/io/a/d;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/estrongs/io/archive/j;->c:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/estrongs/io/archive/j;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/io/archive/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/io/archive/j;->a:Ljava/util/Map;

    const-string v2, "archive_type"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/io/archive/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/io/archive/j;->a:Ljava/util/Map;

    invoke-static {v1, v0}, Lcom/estrongs/io/archive/d;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/estrongs/io/archive/f;

    move-result-object v2

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p0, v4, v0, v2}, Lcom/estrongs/io/archive/j;->a(Ljava/io/File;Ljava/lang/String;Lcom/estrongs/io/archive/f;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    instance-of v3, v0, Ljava/io/IOException;

    if-eqz v3, :cond_9

    check-cast v0, Ljava/io/IOException;

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Lcom/estrongs/io/archive/f;->b()V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/io/archive/j;->d:Lcom/estrongs/io/a/d;

    invoke-interface {v1}, Lcom/estrongs/io/a/d;->b()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_5
    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/estrongs/a/b/s;->b:Lcom/estrongs/a/b/s;

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Lcom/estrongs/a/b/s;)Z

    throw v0

    :cond_6
    invoke-interface {v2}, Lcom/estrongs/io/archive/f;->b()V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/io/archive/j;->d:Lcom/estrongs/io/a/d;

    invoke-interface {v1}, Lcom/estrongs/io/a/d;->b()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/estrongs/io/archive/j;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/fs/impl/local/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/io/archive/j;->c:Ljava/lang/String;

    sget-object v3, Lcom/estrongs/a/b/s;->b:Lcom/estrongs/a/b/s;

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Lcom/estrongs/a/b/s;)Z

    :cond_7
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v1

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/io/archive/j;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/h;Ljava/lang/String;)Z

    goto/16 :goto_2

    :cond_8
    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/estrongs/a/b/s;->b:Lcom/estrongs/a/b/s;

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Lcom/estrongs/a/b/s;)Z

    goto/16 :goto_2

    :cond_9
    :try_start_2
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
