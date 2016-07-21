.class public Lcom/estrongs/fs/impl/g/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/fs/h;


# instance fields
.field protected a:I

.field protected b:Z

.field private c:Ljava/io/File;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Lcom/estrongs/fs/impl/g/a;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/fs/impl/g/a;->b:Z

    iput-object p1, p0, Lcom/estrongs/fs/impl/g/a;->c:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/estrongs/io/model/ArchiveEntryFile;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/estrongs/io/model/ArchiveEntryFile;

    invoke-virtual {v0}, Lcom/estrongs/io/model/ArchiveEntryFile;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " * "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/impl/g/a;->d:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/impl/g/a;->d:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/g/a;->c:Ljava/io/File;

    return-object v0
.end method

.method public createdTime()J
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/g/a;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public exists()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/g/a;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getESFileType()I
    .locals 1

    iget v0, p0, Lcom/estrongs/fs/impl/g/a;->a:I

    return v0
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFileType()Lcom/estrongs/fs/w;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/g/a;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/fs/w;->a:Lcom/estrongs/fs/w;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/estrongs/fs/w;->b:Lcom/estrongs/fs/w;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/g/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/g/a;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasPermission(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLink()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public lastAccessed()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public lastModified()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/g/a;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public length()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/g/a;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setESFileType(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/fs/impl/g/a;->a:I

    return-void
.end method

.method public setFileType(Lcom/estrongs/fs/w;)V
    .locals 0

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setShouldTryLoadThumbnail(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/fs/impl/g/a;->b:Z

    return-void
.end method

.method public shouldTryLoadThumbnail()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/fs/impl/g/a;->b:Z

    return v0
.end method
