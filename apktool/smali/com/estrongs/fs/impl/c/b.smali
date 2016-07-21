.class public Lcom/estrongs/fs/impl/c/b;
.super Lcom/estrongs/fs/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/fs/a;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/fs/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/c/b;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/fs/impl/c/b;->lastModified:J

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/estrongs/fs/impl/c/b;->size:J

    sget-object v0, Lcom/estrongs/fs/w;->a:Lcom/estrongs/fs/w;

    iput-object v0, p0, Lcom/estrongs/fs/impl/c/b;->type:Lcom/estrongs/fs/w;

    const-string v0, "child_count"

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/c/b;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/fs/impl/c/c;

    invoke-direct {v0, p0}, Lcom/estrongs/fs/impl/c/c;-><init>(Lcom/estrongs/fs/impl/c/b;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "child_count"

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/fs/impl/c/b;->putExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/fs/impl/c/b;->size:J

    sget-object v0, Lcom/estrongs/fs/w;->b:Lcom/estrongs/fs/w;

    iput-object v0, p0, Lcom/estrongs/fs/impl/c/b;->type:Lcom/estrongs/fs/w;

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/impl/c/b;->path:Ljava/lang/String;

    return-void
.end method

.method public exists()Z
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/c/b;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method
