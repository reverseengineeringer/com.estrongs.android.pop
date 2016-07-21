.class public Lcom/estrongs/io/archive/sevenzip/x;
.super Lcom/estrongs/io/archive/j;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/estrongs/io/archive/sevenzip/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/estrongs/io/a/d;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/estrongs/io/archive/j;-><init>(Ljava/lang/String;Lcom/estrongs/io/a/d;Ljava/util/Map;)V

    iput-object p3, p0, Lcom/estrongs/io/archive/sevenzip/x;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/io/archive/sevenzip/x;)Lcom/estrongs/io/a/d;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/x;->d:Lcom/estrongs/io/a/d;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/io/archive/sevenzip/x;)Lcom/estrongs/io/a/d;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/x;->d:Lcom/estrongs/io/a/d;

    return-object v0
.end method


# virtual methods
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

    iput-wide v0, p0, Lcom/estrongs/io/archive/sevenzip/x;->e:J

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/estrongs/io/archive/sevenzip/x;->a()Ljava/lang/String;

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

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/x;->d:Lcom/estrongs/io/a/d;

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
    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/x;->d:Lcom/estrongs/io/a/d;

    invoke-interface {v0}, Lcom/estrongs/io/a/d;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    :goto_2
    return-void

    :cond_4
    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/x;->d:Lcom/estrongs/io/a/d;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/estrongs/io/archive/sevenzip/x;->c:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/estrongs/io/archive/h;->a()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/estrongs/io/archive/h;->b()I

    move-result v1

    invoke-interface {v0, v2, v4, v5, v1}, Lcom/estrongs/io/a/d;->a(Ljava/lang/String;JI)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/io/archive/sevenzip/x;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Lcom/estrongs/io/archive/sevenzip/b;

    new-instance v3, Lcom/estrongs/io/archive/sevenzip/y;

    invoke-direct {v3, p0}, Lcom/estrongs/io/archive/sevenzip/y;-><init>(Lcom/estrongs/io/archive/sevenzip/x;)V

    invoke-direct {v2, p1, v3}, Lcom/estrongs/io/archive/sevenzip/b;-><init>(Ljava/util/List;Lcom/estrongs/io/archive/sevenzip/e;)V

    iput-object v2, p0, Lcom/estrongs/io/archive/sevenzip/x;->b:Lcom/estrongs/io/archive/sevenzip/b;

    iget-object v2, p0, Lcom/estrongs/io/archive/sevenzip/x;->b:Lcom/estrongs/io/archive/sevenzip/b;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/io/archive/sevenzip/x;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v4}, Lcom/estrongs/io/archive/sevenzip/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/x;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/io/archive/sevenzip/x;->c:Ljava/lang/String;

    sget-object v3, Lcom/estrongs/a/b/s;->b:Lcom/estrongs/a/b/s;

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Lcom/estrongs/a/b/s;)Z

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/io/archive/sevenzip/x;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/h;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/x;->d:Lcom/estrongs/io/a/d;

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

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v2, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/estrongs/io/archive/sevenzip/x;->d:Lcom/estrongs/io/a/d;

    invoke-interface {v2}, Lcom/estrongs/io/a/d;->b()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/estrongs/a/b/s;->b:Lcom/estrongs/a/b/s;

    invoke-virtual {v2, v1, v3}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Lcom/estrongs/a/b/s;)Z

    :cond_7
    throw v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/x;->b:Lcom/estrongs/io/archive/sevenzip/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/x;->b:Lcom/estrongs/io/archive/sevenzip/b;

    invoke-virtual {v0}, Lcom/estrongs/io/archive/sevenzip/b;->a()V

    :cond_0
    return-void
.end method
