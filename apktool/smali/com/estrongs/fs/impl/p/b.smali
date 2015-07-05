.class public Lcom/estrongs/fs/impl/p/b;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Ljcifs/Config;->registerSmbURLHandler()V

    return-void
.end method

.method public static a(Ljava/lang/String;J)Ljava/io/InputStream;
    .locals 9

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    cmp-long v1, p1, v6

    if-nez v1, :cond_1

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/fs/impl/p/b;->g(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/estrongs/fs/impl/p/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljcifs/smb/SmbFile;

    invoke-direct {v2, v1}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v1

    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    new-instance v3, Lcom/estrongs/a/q;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->length()J

    move-result-wide v4

    cmp-long v3, p1, v4

    if-lez v3, :cond_3

    if-eqz v1, :cond_0

    const/16 v2, 0xa

    new-instance v3, Lcom/estrongs/a/q;

    const-string v4, "offset > filesize"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-instance v3, Ljcifs/smb/SmbRandomAccessFile;

    const-string v1, "r"

    invoke-direct {v3, v2, v1}, Ljcifs/smb/SmbRandomAccessFile;-><init>(Ljcifs/smb/SmbFile;Ljava/lang/String;)V

    cmp-long v1, p1, v6

    if-eqz v1, :cond_4

    invoke-virtual {v3, p1, p2}, Ljcifs/smb/SmbRandomAccessFile;->seek(J)V

    :cond_4
    new-instance v1, Lcom/estrongs/fs/impl/p/c;

    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->length()J

    move-result-wide v4

    invoke-direct {v1, v3, v4, v5}, Lcom/estrongs/fs/impl/p/c;-><init>(Ljcifs/smb/SmbRandomAccessFile;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/util/am;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/estrongs/android/util/am;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/util/am;->br(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/util/am;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    if-nez v2, :cond_3

    invoke-static {v3}, Lcom/estrongs/android/util/am;->bf(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/estrongs/fs/impl/p/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v1, :cond_2

    const-string v0, ""

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/estrongs/fs/impl/p/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-static {v3}, Lcom/estrongs/android/util/am;->bf(Ljava/lang/String;)I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/estrongs/fs/impl/p/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ";"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/estrongs/fs/impl/p/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v1, :cond_4

    const-string v0, ""

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/estrongs/fs/impl/p/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;Lcom/estrongs/fs/i;Lcom/estrongs/a/b/o;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/estrongs/fs/i;",
            "Lcom/estrongs/a/b/o",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/fs/impl/p/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljcifs/smb/SmbFile;

    invoke-direct {v4, v3}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljcifs/smb/SmbFile;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v4}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v3

    invoke-virtual {v4}, Ljcifs/smb/SmbFile;->listFiles()[Ljcifs/smb/SmbFile;

    move-result-object v4

    if-eqz v4, :cond_6

    array-length v5, v4

    :goto_1
    if-ge v2, v5, :cond_6

    aget-object v6, v4, v2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/estrongs/a/a;->taskStopped()Z

    move-result v7

    if-nez v7, :cond_0

    :cond_2
    if-nez v6, :cond_4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    new-instance v7, Lcom/estrongs/fs/impl/p/a;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lcom/estrongs/fs/impl/p/a;-><init>(Ljcifs/smb/SmbFile;Ljava/lang/String;)V

    invoke-interface {p1, v7}, Lcom/estrongs/fs/i;->a(Lcom/estrongs/fs/h;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v7}, Lcom/estrongs/fs/impl/p/a;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [J

    invoke-interface {p2, v6, v7}, Lcom/estrongs/a/b/o;->a(Ljava/lang/Object;[J)V

    invoke-interface {p2}, Lcom/estrongs/a/b/o;->a()Z
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    if-eqz v6, :cond_3

    :cond_6
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/lang/String;Lcom/estrongs/fs/h;)V
    .locals 4

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/fs/impl/p/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljcifs/smb/SmbFile;

    invoke-direct {v1, v0}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljcifs/smb/SmbFile;->setLastModified(J)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/a/b/s;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [J

    invoke-interface {p2, p1, v1}, Lcom/estrongs/a/b/s;->a(Ljava/lang/Object;[J)V

    invoke-static {p1}, Lcom/estrongs/fs/impl/p/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljcifs/smb/SmbFile;

    invoke-direct {v2, v1}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lcom/estrongs/a/b/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->delete()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/fs/impl/p/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljcifs/smb/SmbFile;

    invoke-direct {v1, v0}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljcifs/smb/SmbFile;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/fs/FileSystemException;

    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-static {p0}, Lcom/estrongs/android/util/am;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/estrongs/fs/impl/p/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljcifs/smb/SmbFile;

    invoke-direct {v2, v0}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/estrongs/fs/FileExistException;

    invoke-static {p0}, Lcom/estrongs/android/util/am;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/fs/FileExistException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljcifs/smb/SmbException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :try_start_2
    invoke-virtual {v1, v2}, Ljcifs/smb/SmbFile;->renameTo(Ljcifs/smb/SmbFile;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljcifs/smb/SmbException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v0, 0x1

    return v0
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/fs/impl/p/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljcifs/smb/SmbFile;

    invoke-direct {v3, v2}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->mkdir()V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->createNewFile()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;J)Ljava/io/OutputStream;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/estrongs/fs/impl/p/b;->h(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/estrongs/fs/impl/p/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljcifs/smb/SmbFile;

    invoke-direct {v1, v0}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/estrongs/fs/impl/p/d;

    invoke-direct {v0, v1, p1, p2}, Lcom/estrongs/fs/impl/p/d;-><init>(Ljcifs/smb/SmbFile;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/fs/impl/p/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljcifs/smb/SmbFile;

    invoke-direct {v1, v0}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljcifs/smb/SmbFile;->exists()Z
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/fs/impl/p/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljcifs/smb/SmbFile;

    invoke-direct {v1, v0}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljcifs/smb/SmbFile;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_1

    move-object v0, p1

    :goto_1
    invoke-static {v0}, Lcom/estrongs/fs/impl/p/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljcifs/smb/SmbFile;

    invoke-direct {v2, v0}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/estrongs/android/util/am;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljcifs/smb/SmbFile;

    invoke-direct {v0, v3}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljcifs/smb/SmbFile;->renameTo(Ljcifs/smb/SmbFile;)V

    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->delete()V

    :goto_2
    invoke-virtual {v0, v2}, Ljcifs/smb/SmbFile;->renameTo(Ljcifs/smb/SmbFile;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/fs/impl/p/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljcifs/smb/SmbFile;

    invoke-direct {v1, v0}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljcifs/smb/SmbFile;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljcifs/smb/SmbFile;->mkdirs()V
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static d(Ljava/lang/String;)J
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/fs/impl/p/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljcifs/smb/SmbFile;

    invoke-direct {v1, v0}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljcifs/smb/SmbFile;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljcifs/smb/SmbFile;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljcifs/smb/SmbFile;->length()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-static {p0}, Lcom/estrongs/android/util/am;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/fs/impl/p/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljcifs/smb/SmbFile;

    invoke-direct {v1, v0}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljcifs/smb/SmbFile;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1}, Ljcifs/smb/SmbFile;->isDirectory()Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static f(Ljava/lang/String;)Lcom/estrongs/fs/c;
    .locals 6

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/fs/impl/p/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljcifs/smb/SmbFile;

    invoke-direct {v2, v0}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/estrongs/fs/c;

    invoke-direct {v0, p0}, Lcom/estrongs/fs/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v1

    iput-boolean v1, v0, Lcom/estrongs/fs/c;->d:Z

    iget-boolean v1, v0, Lcom/estrongs/fs/c;->d:Z

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/c;->a(I)V

    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->listFiles()[Ljcifs/smb/SmbFile;

    move-result-object v3

    if-eqz v3, :cond_3

    array-length v4, v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_3

    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, v0, Lcom/estrongs/fs/c;->f:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Lcom/estrongs/fs/c;->f:I

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget v5, v0, Lcom/estrongs/fs/c;->g:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Lcom/estrongs/fs/c;->g:I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :try_start_1
    const-string v1, "File"

    iput-object v1, v0, Lcom/estrongs/fs/c;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->length()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/estrongs/fs/c;->e:J

    :cond_3
    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->lastModified()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/estrongs/fs/c;->j:J

    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->createTime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/estrongs/fs/c;->h:J

    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->canRead()Z

    move-result v1

    iput-boolean v1, v0, Lcom/estrongs/fs/c;->k:Z

    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->canWrite()Z

    move-result v1

    iput-boolean v1, v0, Lcom/estrongs/fs/c;->l:Z

    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->isHidden()Z

    move-result v1

    iput-boolean v1, v0, Lcom/estrongs/fs/c;->m:Z
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljcifs/smb/SmbException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static g(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/fs/impl/p/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljcifs/smb/SmbFileInputStream;

    invoke-direct {v1, v0}, Ljcifs/smb/SmbFileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static h(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/fs/impl/p/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljcifs/smb/SmbFileOutputStream;

    invoke-direct {v1, v0}, Ljcifs/smb/SmbFileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static i(Ljava/lang/String;)Lcom/estrongs/fs/impl/p/a;
    .locals 3

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/fs/impl/p/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/estrongs/fs/impl/p/a;

    new-instance v2, Ljcifs/smb/SmbFile;

    invoke-direct {v2, v1}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, p0}, Lcom/estrongs/fs/impl/p/a;-><init>(Ljcifs/smb/SmbFile;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method
