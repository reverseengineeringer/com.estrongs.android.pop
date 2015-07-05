.class public Lcom/estrongs/fs/impl/usb/c;
.super Lcom/estrongs/fs/a;


# instance fields
.field protected a:Z

.field protected b:Z

.field private c:Lcom/estrongs/fs/impl/usb/fs/c;


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/impl/usb/fs/c;Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x1

    invoke-direct {p0, p2}, Lcom/estrongs/fs/a;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/c;->c:Lcom/estrongs/fs/impl/usb/fs/c;

    iput-boolean v1, p0, Lcom/estrongs/fs/impl/usb/c;->a:Z

    iput-boolean v1, p0, Lcom/estrongs/fs/impl/usb/c;->b:Z

    iput-object p1, p0, Lcom/estrongs/fs/impl/usb/c;->c:Lcom/estrongs/fs/impl/usb/fs/c;

    invoke-interface {p1}, Lcom/estrongs/fs/impl/usb/fs/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/estrongs/fs/impl/usb/fs/c;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-interface {p1}, Lcom/estrongs/fs/impl/usb/fs/c;->f()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/estrongs/fs/impl/usb/c;->size:J

    invoke-interface {p1}, Lcom/estrongs/fs/impl/usb/fs/c;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/estrongs/fs/m;->a:Lcom/estrongs/fs/m;

    iput-object v1, p0, Lcom/estrongs/fs/impl/usb/c;->type:Lcom/estrongs/fs/m;

    :goto_0
    invoke-interface {p1}, Lcom/estrongs/fs/impl/usb/fs/c;->i()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/estrongs/fs/impl/usb/c;->lastModified:J

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/usb/c;->setName(Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v1, Lcom/estrongs/fs/m;->b:Lcom/estrongs/fs/m;

    iput-object v1, p0, Lcom/estrongs/fs/impl/usb/c;->type:Lcom/estrongs/fs/m;

    goto :goto_0
.end method


# virtual methods
.method protected canDelete()Z
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/c;->canWrite()Z

    move-result v0

    return v0
.end method

.method protected canRead()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/fs/impl/usb/c;->b:Z

    return v0
.end method

.method protected canWrite()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/fs/impl/usb/c;->a:Z

    return v0
.end method

.method public exists()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/c;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-super {p0, p1}, Lcom/estrongs/fs/a;->setName(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/c;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/m;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/c;->path:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/c;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/c;->path:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/c;->absolutePath:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/c;->absolutePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/c;->absolutePath:Ljava/lang/String;

    :cond_2
    return-void
.end method
