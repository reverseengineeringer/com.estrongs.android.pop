.class public Lcom/estrongs/fs/impl/adb/g;
.super Lcom/estrongs/fs/a;


# instance fields
.field private a:Lcom/estrongs/old/fs/impl/a/a;


# direct methods
.method public constructor <init>(Lcom/estrongs/old/fs/impl/a/a;)V
    .locals 2

    invoke-static {p1}, Lcom/estrongs/fs/impl/adb/c;->a(Lcom/estrongs/old/fs/impl/a/a;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/fs/a;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/fs/impl/adb/g;->a:Lcom/estrongs/old/fs/impl/a/a;

    iput-object p1, p0, Lcom/estrongs/fs/impl/adb/g;->a:Lcom/estrongs/old/fs/impl/a/a;

    invoke-virtual {p1}, Lcom/estrongs/old/fs/impl/a/a;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/adb/g;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/fs/impl/adb/g;->a:Lcom/estrongs/old/fs/impl/a/a;

    invoke-virtual {v0}, Lcom/estrongs/old/fs/impl/a/a;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v0

    sget-object v1, Lcom/estrongs/fs/w;->a:Lcom/estrongs/fs/w;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/w;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/fs/w;->O:Lcom/estrongs/fs/w;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/adb/g;->setFileType(Lcom/estrongs/fs/w;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public createdTime()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/adb/g;->a:Lcom/estrongs/old/fs/impl/a/a;

    invoke-virtual {v0}, Lcom/estrongs/old/fs/impl/a/a;->createdTime()J

    move-result-wide v0

    return-wide v0
.end method

.method protected doGetFileType()Lcom/estrongs/fs/w;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/adb/g;->a:Lcom/estrongs/old/fs/impl/a/a;

    invoke-virtual {v0}, Lcom/estrongs/old/fs/impl/a/a;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v0

    return-object v0
.end method

.method public exists()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/adb/g;->a:Lcom/estrongs/old/fs/impl/a/a;

    invoke-virtual {v0}, Lcom/estrongs/old/fs/impl/a/a;->exists()Z

    move-result v0

    return v0
.end method

.method public getFileType()Lcom/estrongs/fs/w;
    .locals 1

    invoke-super {p0}, Lcom/estrongs/fs/a;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v0

    return-object v0
.end method

.method public hasPermission(I)Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/adb/g;->a:Lcom/estrongs/old/fs/impl/a/a;

    invoke-virtual {v0, p1}, Lcom/estrongs/old/fs/impl/a/a;->hasPermission(I)Z

    move-result v0

    return v0
.end method

.method public lastAccessed()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/adb/g;->a:Lcom/estrongs/old/fs/impl/a/a;

    invoke-virtual {v0}, Lcom/estrongs/old/fs/impl/a/a;->lastAccessed()J

    move-result-wide v0

    return-wide v0
.end method

.method public lastModified()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/adb/g;->a:Lcom/estrongs/old/fs/impl/a/a;

    invoke-virtual {v0}, Lcom/estrongs/old/fs/impl/a/a;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public length()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/adb/g;->a:Lcom/estrongs/old/fs/impl/a/a;

    invoke-virtual {v0}, Lcom/estrongs/old/fs/impl/a/a;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/adb/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
