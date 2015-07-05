.class public Lcom/estrongs/fs/impl/local/f;
.super Lcom/estrongs/fs/a;


# direct methods
.method public constructor <init>(Landroid/net/LocalSocket;Ljava/io/File;Z)V
    .locals 2

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/fs/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/local/f;->setName(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/fs/impl/local/f;->size:J

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/fs/impl/local/f;->lastModified:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/fs/impl/local/f;->isLink:Z

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/estrongs/android/nativetool/c;->a(Landroid/net/LocalSocket;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/fs/impl/local/f;->isLink:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/estrongs/fs/m;->a:Lcom/estrongs/fs/m;

    iput-object v0, p0, Lcom/estrongs/fs/impl/local/f;->type:Lcom/estrongs/fs/m;

    const-string v0, "child_count"

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/local/f;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "child_count"

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/fs/impl/local/f;->putExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    return-void

    :cond_2
    sget-object v0, Lcom/estrongs/fs/m;->b:Lcom/estrongs/fs/m;

    iput-object v0, p0, Lcom/estrongs/fs/impl/local/f;->type:Lcom/estrongs/fs/m;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/estrongs/fs/impl/local/f;-><init>(Landroid/net/LocalSocket;Ljava/io/File;Z)V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/estrongs/fs/impl/local/f;->lastModified:J

    return-void
.end method

.method public exists()Z
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/local/f;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method
