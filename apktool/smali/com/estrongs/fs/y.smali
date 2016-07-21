.class public abstract Lcom/estrongs/fs/y;
.super Lcom/estrongs/fs/a;


# instance fields
.field private a:Lcom/estrongs/fs/h;


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/h;)V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/fs/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/fs/y;->a:Lcom/estrongs/fs/h;

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/y;->absolutePath:Ljava/lang/String;

    iput-object p1, p0, Lcom/estrongs/fs/y;->a:Lcom/estrongs/fs/h;

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/y;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    new-instance v0, Lcom/estrongs/fs/impl/local/f;

    invoke-direct {v0, p1}, Lcom/estrongs/fs/impl/local/f;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lcom/estrongs/fs/y;-><init>(Lcom/estrongs/fs/h;)V

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method protected doGetFileType()Lcom/estrongs/fs/w;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/y;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/w;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/fs/w;->a:Lcom/estrongs/fs/w;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/estrongs/fs/w;->b:Lcom/estrongs/fs/w;

    goto :goto_0
.end method

.method public exists()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/y;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->exists()Z

    move-result v0

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/estrongs/fs/y;->path:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/fs/y;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/y;->a:Lcom/estrongs/fs/h;

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/estrongs/fs/y;->a:Lcom/estrongs/fs/h;

    invoke-interface {v3}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/y;->path:Ljava/lang/String;

    :cond_0
    invoke-super {p0}, Lcom/estrongs/fs/a;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public lastModified()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/y;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public length()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/y;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/y;->path:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/fs/y;->getPath()Ljava/lang/String;

    :cond_0
    invoke-super {p0, p1}, Lcom/estrongs/fs/a;->setName(Ljava/lang/String;)V

    return-void
.end method
