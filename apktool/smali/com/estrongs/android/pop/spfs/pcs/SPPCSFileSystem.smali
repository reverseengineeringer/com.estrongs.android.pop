.class public Lcom/estrongs/android/pop/spfs/pcs/SPPCSFileSystem;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/spfs/ISPFileSystem;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private replacePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method


# virtual methods
.method public addServer(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public createFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public delServer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public deleteFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0, p3}, Lcom/estrongs/android/pop/spfs/pcs/SPPCSFileSystem;->replacePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pcs"

    invoke-static {v1}, Lcom/estrongs/fs/impl/o/b;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v1

    invoke-interface {v1, p1, p2, v0}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->deleteFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public exists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-direct {p0, p3}, Lcom/estrongs/android/pop/spfs/pcs/SPPCSFileSystem;->replacePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pcs"

    invoke-static {v1}, Lcom/estrongs/fs/impl/o/b;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, v0, v2}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->exists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getAccessTokenParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/gmail/yuyang226/flickr/a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAccessTokenUrl()Ljava/net/URL;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFileInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/SPFileInfo;
    .locals 4

    invoke-direct {p0, p3}, Lcom/estrongs/android/pop/spfs/pcs/SPPCSFileSystem;->replacePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pcs"

    invoke-static {v1}, Lcom/estrongs/fs/impl/o/b;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, v0, v2}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->getFileInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/estrongs/android/pop/netfs/NetFileInfo;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/estrongs/android/pop/spfs/SPFileInfo;

    invoke-direct {v0}, Lcom/estrongs/android/pop/spfs/SPFileInfo;-><init>()V

    iget-object v2, v1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->path:Ljava/lang/String;

    iput-object v2, v0, Lcom/estrongs/android/pop/spfs/SPFileInfo;->path:Ljava/lang/String;

    iget-object v2, v1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->name:Ljava/lang/String;

    iput-object v2, v0, Lcom/estrongs/android/pop/spfs/SPFileInfo;->name:Ljava/lang/String;

    iget-wide v2, v1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->size:J

    iput-wide v2, v0, Lcom/estrongs/android/pop/spfs/SPFileInfo;->size:J

    iget-boolean v2, v1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->isDirectory:Z

    iput-boolean v2, v0, Lcom/estrongs/android/pop/spfs/SPFileInfo;->isDirectory:Z

    iget-wide v2, v1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->lastModifiedTime:J

    iput-wide v2, v0, Lcom/estrongs/android/pop/spfs/SPFileInfo;->lastModifiedTime:J

    goto :goto_0
.end method

.method public getFileInputStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/io/InputStream;
    .locals 6

    invoke-direct {p0, p3}, Lcom/estrongs/android/pop/spfs/pcs/SPPCSFileSystem;->replacePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "pcs"

    invoke-static {v0}, Lcom/estrongs/fs/impl/o/b;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->getFileInputStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getFileLength(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFileOutputStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/estrongs/android/util/TypedMap;)Ljava/io/OutputStream;
    .locals 8

    invoke-direct {p0, p3}, Lcom/estrongs/android/pop/spfs/pcs/SPPCSFileSystem;->replacePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "/pictures"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/pictures"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    const-string v0, "pcs"

    invoke-static {v0}, Lcom/estrongs/fs/impl/o/b;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->getFileOutputStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getLastErrorString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOAuthLoginUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOAuthVersion()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhotoExtension(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getRegisterPrepareInfo([Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRequestTokenUrl()Ljava/net/URL;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getThumbnail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6

    const/16 v4, 0xe4

    invoke-direct {p0, p3}, Lcom/estrongs/android/pop/spfs/pcs/SPPCSFileSystem;->replacePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "pcs"

    invoke-static {v0}, Lcom/estrongs/fs/impl/o/b;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getUserLoginName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public listFiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/estrongs/android/pop/netfs/INetRefreshCallback;Lcom/estrongs/android/util/TypedMap;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/estrongs/android/pop/netfs/INetRefreshCallback;",
            "Lcom/estrongs/android/util/TypedMap;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/pop/spfs/SPFileInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "pcs"

    invoke-static {v0}, Lcom/estrongs/fs/impl/o/b;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/estrongs/android/pop/spfs/pcs/SPPCSFileSystem;->replacePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "per_page"

    const-wide/16 v4, 0xa

    invoke-virtual {p6, v1, v4, v5}, Lcom/estrongs/android/util/TypedMap;->getInt(Ljava/lang/String;J)I

    move-result v1

    const-string v2, "page"

    const-wide/16 v4, 0x1

    invoke-virtual {p6, v2, v4, v5}, Lcom/estrongs/android/util/TypedMap;->getInt(Ljava/lang/String;J)I

    move-result v2

    const-string v4, "limit"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p6, v4, v5}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    const-string v4, "offset"

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p6, v4, v1}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->listFiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/estrongs/android/pop/netfs/INetRefreshCallback;Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/netfs/NetFileInfo;

    new-instance v5, Lcom/estrongs/android/pop/spfs/SPFileInfo;

    invoke-direct {v5}, Lcom/estrongs/android/pop/spfs/SPFileInfo;-><init>()V

    iget-object v6, v1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->path:Ljava/lang/String;

    iput-object v6, v5, Lcom/estrongs/android/pop/spfs/SPFileInfo;->path:Ljava/lang/String;

    iget-object v6, v1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->name:Ljava/lang/String;

    iput-object v6, v5, Lcom/estrongs/android/pop/spfs/SPFileInfo;->name:Ljava/lang/String;

    iget-wide v6, v1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->lastModifiedTime:J

    iput-wide v6, v5, Lcom/estrongs/android/pop/spfs/SPFileInfo;->lastModifiedTime:J

    iget-boolean v6, v1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->readable:Z

    iput-boolean v6, v5, Lcom/estrongs/android/pop/spfs/SPFileInfo;->readable:Z

    iget-boolean v6, v1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->writable:Z

    iput-boolean v6, v5, Lcom/estrongs/android/pop/spfs/SPFileInfo;->writable:Z

    iget-boolean v6, v1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->hidden:Z

    iput-boolean v6, v5, Lcom/estrongs/android/pop/spfs/SPFileInfo;->hidden:Z

    iget-boolean v6, v1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->isDirectory:Z

    iput-boolean v6, v5, Lcom/estrongs/android/pop/spfs/SPFileInfo;->isDirectory:Z

    iget-wide v6, v1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->size:J

    iput-wide v6, v5, Lcom/estrongs/android/pop/spfs/SPFileInfo;->size:J

    iget v6, v1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->folder_type:I

    iput v6, v5, Lcom/estrongs/android/pop/spfs/SPFileInfo;->folder_type:I

    iget v6, v1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->md5_block_size:I

    iput v6, v5, Lcom/estrongs/android/pop/spfs/SPFileInfo;->md5_block_size:I

    iget-object v1, v1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->md5s:Ljava/lang/String;

    iput-object v1, v5, Lcom/estrongs/android/pop/spfs/SPFileInfo;->md5s:Ljava/lang/String;

    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method public mkDirs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public moveFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-direct {p0, p3}, Lcom/estrongs/android/pop/spfs/pcs/SPPCSFileSystem;->replacePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p4}, Lcom/estrongs/android/pop/spfs/pcs/SPPCSFileSystem;->replacePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pcs"

    invoke-static {v2}, Lcom/estrongs/fs/impl/o/b;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v2

    invoke-interface {v2, p1, p2, v0, v1}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveUserAndToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setConfigDir(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setPrivateContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
