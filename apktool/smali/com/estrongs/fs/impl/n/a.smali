.class public Lcom/estrongs/fs/impl/n/a;
.super Lcom/estrongs/fs/a;


# instance fields
.field public a:I

.field private b:Lcom/estrongs/fs/h;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/fs/h;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/estrongs/fs/a;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/impl/n/a;->b:Lcom/estrongs/fs/h;

    invoke-static {p1}, Lcom/estrongs/android/util/am;->aX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p1, p0, Lcom/estrongs/fs/impl/n/a;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/estrongs/fs/impl/n/a;->d:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/estrongs/fs/impl/n/a;->path:Ljava/lang/String;

    invoke-interface {p3}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/impl/n/a;->absolutePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/fs/impl/n/a;->b:Lcom/estrongs/fs/h;

    invoke-interface {p3}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/impl/n/a;->name:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p3}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p3}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/estrongs/fs/h;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/n/a;->b:Lcom/estrongs/fs/h;

    return-object v0
.end method

.method protected doGetFileType()Lcom/estrongs/fs/m;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/n/a;->b:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/fs/m;->a:Lcom/estrongs/fs/m;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/estrongs/fs/m;->b:Lcom/estrongs/fs/m;

    goto :goto_0
.end method

.method public exists()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/n/a;->b:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->exists()Z

    move-result v0

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/fs/impl/n/a;->path:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/n/a;->b:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/impl/n/a;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/fs/impl/n/a;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "/"

    const-string v2, "#"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/impl/n/a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/fs/impl/n/a;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/fs/impl/n/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/estrongs/fs/impl/n/a;->path:Ljava/lang/String;

    :cond_0
    invoke-super {p0}, Lcom/estrongs/fs/a;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/fs/impl/n/a;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/am;->aY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->bE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/fs/impl/n/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public lastModified()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/n/a;->b:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public length()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/n/a;->b:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/n/a;->path:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/n/a;->getPath()Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/n/a;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/fs/impl/n/a;->path:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-super {p0, p1}, Lcom/estrongs/fs/a;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/fs/impl/n/a;->b:Lcom/estrongs/fs/h;

    invoke-interface {v0, p1}, Lcom/estrongs/fs/h;->setName(Ljava/lang/String;)V

    return-void
.end method
