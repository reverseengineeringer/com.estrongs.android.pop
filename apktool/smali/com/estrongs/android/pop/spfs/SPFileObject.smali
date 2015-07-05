.class public Lcom/estrongs/android/pop/spfs/SPFileObject;
.super Lcom/estrongs/fs/a;


# instance fields
.field public description:Ljava/lang/String;

.field private familyFlag:Z

.field private friendFlag:Z

.field private isDirectory:Z

.field private notes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gmail/yuyang226/flickr/a/a;",
            ">;"
        }
    .end annotation
.end field

.field public ownerId:Ljava/lang/String;

.field public ownerUsername:Ljava/lang/String;

.field private publicFlag:Z


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/spfs/SPFileInfo;)V
    .locals 2

    iget-object v0, p1, Lcom/estrongs/android/pop/spfs/SPFileInfo;->path:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/fs/a;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/estrongs/android/pop/spfs/SPFileInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/spfs/SPFileObject;->setName(Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/estrongs/android/pop/spfs/SPFileInfo;->isDirectory:Z

    iput-boolean v0, p0, Lcom/estrongs/android/pop/spfs/SPFileObject;->isDirectory:Z

    iget-wide v0, p1, Lcom/estrongs/android/pop/spfs/SPFileInfo;->size:J

    iput-wide v0, p0, Lcom/estrongs/android/pop/spfs/SPFileObject;->size:J

    iget-wide v0, p1, Lcom/estrongs/android/pop/spfs/SPFileInfo;->lastModifiedTime:J

    iput-wide v0, p0, Lcom/estrongs/android/pop/spfs/SPFileObject;->lastModified:J

    iget-boolean v0, p1, Lcom/estrongs/android/pop/spfs/SPFileInfo;->publicFlag:Z

    iput-boolean v0, p0, Lcom/estrongs/android/pop/spfs/SPFileObject;->publicFlag:Z

    iget-boolean v0, p1, Lcom/estrongs/android/pop/spfs/SPFileInfo;->friendFlag:Z

    iput-boolean v0, p0, Lcom/estrongs/android/pop/spfs/SPFileObject;->friendFlag:Z

    iget-boolean v0, p1, Lcom/estrongs/android/pop/spfs/SPFileInfo;->familyFlag:Z

    iput-boolean v0, p0, Lcom/estrongs/android/pop/spfs/SPFileObject;->familyFlag:Z

    iget-object v0, p1, Lcom/estrongs/android/pop/spfs/SPFileInfo;->notes:Ljava/util/List;

    iput-object v0, p0, Lcom/estrongs/android/pop/spfs/SPFileObject;->notes:Ljava/util/List;

    iget-object v0, p1, Lcom/estrongs/android/pop/spfs/SPFileInfo;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/spfs/SPFileObject;->description:Ljava/lang/String;

    iget-object v0, p1, Lcom/estrongs/android/pop/spfs/SPFileInfo;->ownerId:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/spfs/SPFileObject;->ownerId:Ljava/lang/String;

    iget-object v0, p1, Lcom/estrongs/android/pop/spfs/SPFileInfo;->ownerUsername:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/spfs/SPFileObject;->ownerUsername:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected doGetFileType()Lcom/estrongs/fs/m;
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/spfs/SPFileObject;->isDirectory:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/fs/m;->a:Lcom/estrongs/fs/m;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/estrongs/fs/m;->b:Lcom/estrongs/fs/m;

    goto :goto_0
.end method

.method public exists()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/SPFileObject;->path:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->exists(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/SPFileObject;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getNotes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/gmail/yuyang226/flickr/a/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/SPFileObject;->notes:Ljava/util/List;

    return-object v0
.end method

.method public getOwnerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/SPFileObject;->ownerId:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerUsername()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/SPFileObject;->ownerUsername:Ljava/lang/String;

    return-object v0
.end method

.method public isFamilyFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/spfs/SPFileObject;->familyFlag:Z

    return v0
.end method

.method public isFriendFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/spfs/SPFileObject;->friendFlag:Z

    return v0
.end method

.method public isPublicFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/spfs/SPFileObject;->publicFlag:Z

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/spfs/SPFileObject;->description:Ljava/lang/String;

    return-void
.end method

.method public setFamilyFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/spfs/SPFileObject;->familyFlag:Z

    return-void
.end method

.method public setFriendFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/spfs/SPFileObject;->friendFlag:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/SPFileObject;->path:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->as(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/SPFileObject;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/SPFileObject;->path:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->ah(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/files"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/estrongs/fs/a;->setName(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/estrongs/android/pop/spfs/SPFileObject;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public setOwnerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/spfs/SPFileObject;->ownerId:Ljava/lang/String;

    return-void
.end method

.method public setOwnerUsername(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/spfs/SPFileObject;->ownerUsername:Ljava/lang/String;

    return-void
.end method

.method public setPublicFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/spfs/SPFileObject;->publicFlag:Z

    return-void
.end method
