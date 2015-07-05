.class public Lcom/estrongs/old/fs/impl/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/old/fs/a;


# static fields
.field private static a:Z

.field private static b:Lcom/estrongs/old/fs/impl/a/c;

.field private static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/old/fs/impl/a/g;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/util/TypedMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/old/fs/impl/a/c;->a:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/old/fs/impl/a/c;->b:Lcom/estrongs/old/fs/impl/a/c;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/old/fs/impl/a/c;->c:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/old/fs/impl/a/c;->d:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Lcom/estrongs/old/fs/impl/a/g;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/estrongs/old/fs/impl/a/c;->b(Ljava/lang/String;Lcom/estrongs/old/fs/impl/a/g;)V

    return-void
.end method

.method private a(Lorg/apache/commons/net/ftp/FTPClient;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Lorg/apache/commons/net/ftp/FTPClient;Ljava/lang/String;)Z
    .locals 12

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v3

    :try_start_0
    invoke-virtual {p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    const-string v0, "."

    invoke-virtual {p1, v0}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles()[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_1

    array-length v4, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-lt v1, v4, :cond_3

    :cond_1
    if-eqz v2, :cond_9

    invoke-virtual {p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->removeDirectory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ftp://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v3, v1, v2}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    :cond_2
    :goto_2
    return v0

    :cond_3
    aget-object v0, v2, v1

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/estrongs/a/a;->taskStopped()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/estrongs/old/fs/impl/a/c;->m(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;Ljava/lang/String;)Z

    move-result v0

    :cond_7
    :goto_3
    if-nez v0, :cond_5

    const/4 v0, 0x0

    goto :goto_2

    :cond_8
    invoke-virtual {p1, v5}, Lorg/apache/commons/net/ftp/FTPClient;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v3, :cond_7

    const/4 v6, 0x1

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "ftp://"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v8

    invoke-virtual {v3, v6, v7}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_9
    const/4 v0, 0x1

    goto/16 :goto_2

    :cond_a
    move-object v2, v0

    goto/16 :goto_0
.end method

.method public static b()Lcom/estrongs/old/fs/a;
    .locals 1

    sget-object v0, Lcom/estrongs/old/fs/impl/a/c;->b:Lcom/estrongs/old/fs/impl/a/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/old/fs/impl/a/c;

    invoke-direct {v0}, Lcom/estrongs/old/fs/impl/a/c;-><init>()V

    sput-object v0, Lcom/estrongs/old/fs/impl/a/c;->b:Lcom/estrongs/old/fs/impl/a/c;

    :cond_0
    sget-object v0, Lcom/estrongs/old/fs/impl/a/c;->b:Lcom/estrongs/old/fs/impl/a/c;

    return-object v0
.end method

.method private static b(Ljava/lang/String;Lcom/estrongs/old/fs/impl/a/g;)V
    .locals 3

    sget-object v2, Lcom/estrongs/old/fs/impl/a/c;->c:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/estrongs/old/fs/impl/a/c;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_0
    :try_start_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/estrongs/old/fs/impl/a/c;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method public static c()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/old/fs/impl/a/c;->a:Z

    return-void
.end method

.method static synthetic d()Z
    .locals 1

    sget-boolean v0, Lcom/estrongs/old/fs/impl/a/c;->a:Z

    return v0
.end method

.method private l(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ".."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;J)Ljava/io/InputStream;
    .locals 8

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/estrongs/android/util/am;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/estrongs/android/util/am;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v3, v1}, Lcom/estrongs/old/fs/impl/a/c;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    :try_end_0
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    if-nez v1, :cond_3

    if-nez v0, :cond_2

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v3, v1}, Lcom/estrongs/old/fs/impl/a/c;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, p2, p3}, Lorg/apache/commons/net/ftp/FTPClient;->setRestartOffset(J)V

    invoke-virtual {v2, v4}, Lorg/apache/commons/net/ftp/FTPClient;->retrieveFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v2, p2, p3}, Lorg/apache/commons/net/ftp/FTPClient;->setRestartOffset(J)V

    invoke-static {v4}, Lcom/estrongs/android/util/am;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v4}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/commons/net/ftp/FTPClient;->retrieveFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    :cond_1
    new-instance v3, Lcom/estrongs/old/fs/impl/a/b;

    invoke-direct {v3, v1, v2}, Lcom/estrongs/old/fs/impl/a/b;-><init>(Ljava/io/InputStream;Lorg/apache/commons/net/ftp/FTPClient;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_c

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    :try_start_2
    invoke-virtual {v1, p2, p3}, Lorg/apache/commons/net/ftp/FTPClient;->setRestartOffset(J)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->setKeepAlive(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->setRemoteVerificationEnabled(Z)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->setFileTransferMode(I)Z

    invoke-virtual {v1, v4}, Lorg/apache/commons/net/ftp/FTPClient;->retrieveFileStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    if-nez v0, :cond_5

    :try_start_3
    invoke-virtual {v1, p2, p3}, Lorg/apache/commons/net/ftp/FTPClient;->setRestartOffset(J)V

    invoke-static {v4}, Lcom/estrongs/android/util/am;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v4}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->retrieveFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v2, Ljava/io/IOException;

    const-string v5, "Ftp server response error"

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catch_0
    move-exception v2

    :goto_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    :cond_4
    const/4 v1, 0x1

    invoke-virtual {p0, v3, v1}, Lcom/estrongs/old/fs/impl/a/c;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, p2, p3}, Lorg/apache/commons/net/ftp/FTPClient;->setRestartOffset(J)V

    invoke-virtual {v2, v4}, Lorg/apache/commons/net/ftp/FTPClient;->retrieveFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-virtual {v2, p2, p3}, Lorg/apache/commons/net/ftp/FTPClient;->setRestartOffset(J)V

    invoke-static {v4}, Lcom/estrongs/android/util/am;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v4}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/commons/net/ftp/FTPClient;->retrieveFileStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_9

    move-result-object v1

    :goto_2
    :try_start_5
    new-instance v0, Lcom/estrongs/old/fs/impl/a/b;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/old/fs/impl/a/b;-><init>(Ljava/io/InputStream;Lorg/apache/commons/net/ftp/FTPClient;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_5
    move-object v2, v0

    :try_start_6
    new-instance v0, Lcom/estrongs/old/fs/impl/a/b;

    invoke-direct {v0, v2, v1}, Lcom/estrongs/old/fs/impl/a/b;-><init>(Ljava/io/InputStream;Lorg/apache/commons/net/ftp/FTPClient;)V
    :try_end_6
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v0, :cond_2

    if-eqz v1, :cond_6

    :try_start_7
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    :cond_6
    const/4 v1, 0x1

    invoke-virtual {p0, v3, v1}, Lcom/estrongs/old/fs/impl/a/c;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, p2, p3}, Lorg/apache/commons/net/ftp/FTPClient;->setRestartOffset(J)V

    invoke-virtual {v2, v4}, Lorg/apache/commons/net/ftp/FTPClient;->retrieveFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-virtual {v2, p2, p3}, Lorg/apache/commons/net/ftp/FTPClient;->setRestartOffset(J)V

    invoke-static {v4}, Lcom/estrongs/android/util/am;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v4}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/commons/net/ftp/FTPClient;->retrieveFileStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    move-result-object v1

    :goto_3
    :try_start_8
    new-instance v0, Lcom/estrongs/old/fs/impl/a/b;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/old/fs/impl/a/b;-><init>(Ljava/io/InputStream;Lorg/apache/commons/net/ftp/FTPClient;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    goto/16 :goto_0

    :catch_3
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_4
    :try_start_9
    new-instance v5, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v5, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_0
    move-exception v0

    :goto_5
    if-nez v2, :cond_9

    if-eqz v1, :cond_7

    :try_start_a
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    :cond_7
    const/4 v1, 0x1

    invoke-virtual {p0, v3, v1}, Lcom/estrongs/old/fs/impl/a/c;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2, p2, p3}, Lorg/apache/commons/net/ftp/FTPClient;->setRestartOffset(J)V

    invoke-virtual {v2, v4}, Lorg/apache/commons/net/ftp/FTPClient;->retrieveFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_8

    invoke-virtual {v2, p2, p3}, Lorg/apache/commons/net/ftp/FTPClient;->setRestartOffset(J)V

    invoke-static {v4}, Lcom/estrongs/android/util/am;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v4}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/commons/net/ftp/FTPClient;->retrieveFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    :cond_8
    new-instance v3, Lcom/estrongs/old/fs/impl/a/b;

    invoke-direct {v3, v1, v2}, Lcom/estrongs/old/fs/impl/a/b;-><init>(Ljava/io/InputStream;Lorg/apache/commons/net/ftp/FTPClient;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5

    :cond_9
    :goto_6
    throw v0

    :catch_4
    move-exception v1

    goto/16 :goto_0

    :catch_5
    move-exception v1

    goto :goto_6

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_5

    :catchall_2
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_5

    :catchall_3
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_5

    :catch_6
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_4

    :catch_7
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_4

    :catch_8
    move-exception v0

    goto :goto_4

    :catch_9
    move-exception v1

    goto/16 :goto_0

    :catch_a
    move-exception v1

    move-object v1, v0

    goto/16 :goto_1

    :catch_b
    move-exception v0

    move-object v0, v2

    goto/16 :goto_1

    :catch_c
    move-exception v1

    goto/16 :goto_0

    :cond_a
    move-object v1, v0

    goto :goto_3

    :cond_b
    move-object v1, v0

    goto/16 :goto_2
.end method

.method public a(Ljava/lang/String;Lcom/estrongs/fs/i;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/estrongs/fs/i;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v8

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/am;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/estrongs/old/fs/impl/a/c;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    if-nez v2, :cond_1

    :try_start_1
    new-instance v0, Lcom/estrongs/android/exception/GeneralException;

    sget-object v1, Lcom/estrongs/android/exception/GeneralException$ERROR_CODE;->ERROR_AUTHORIZATION:Lcom/estrongs/android/exception/GeneralException$ERROR_CODE;

    invoke-direct {v0, v1}, Lcom/estrongs/android/exception/GeneralException;-><init>(Lcom/estrongs/android/exception/GeneralException$ERROR_CODE;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_0
    :try_start_2
    new-instance v2, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    :cond_0
    throw v0

    :cond_1
    if-eqz v8, :cond_3

    :try_start_3
    invoke-virtual {v8}, Lcom/estrongs/a/a;->taskStopped()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v2, :cond_2

    invoke-direct {p0, v2}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    :cond_2
    move-object v0, v1

    :goto_2
    return-object v0

    :cond_3
    :try_start_4
    invoke-static {p1}, Lcom/estrongs/android/util/am;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->getReplyCode()I

    move-result v0

    const/16 v3, 0x226

    if-ne v0, v3, :cond_4

    new-instance v0, Ljava/io/IOException;

    const-string v1, "550"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_4
    const-string v0, "."

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/ftp/FTPClient;->initiateListParsing(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->getFiles()[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    if-eqz v0, :cond_5

    array-length v3, v0

    if-eqz v3, :cond_5

    array-length v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_14

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    :cond_5
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles()[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    move-object v7, v0

    :goto_3
    const-string v3, "UTF-8"

    iget-object v0, p0, Lcom/estrongs/old/fs/impl/a/c;->d:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/estrongs/android/util/am;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/TypedMap;

    if-eqz v0, :cond_6

    const-string v4, "encode"

    invoke-virtual {v0, v4, v3}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_6
    sget-object v4, Lcom/estrongs/android/util/f;->a:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "UTF-8"

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->getControlEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "detectedEncoding"

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->getControlEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    :cond_7
    if-eqz v7, :cond_8

    array-length v9, v7
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v0, 0x0

    move v6, v0

    move-object v0, p1

    :goto_4
    if-lt v6, v9, :cond_a

    :cond_8
    if-eqz v2, :cond_9

    invoke-direct {p0, v2}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    :cond_9
    move-object v0, v1

    goto/16 :goto_2

    :cond_a
    :try_start_5
    aget-object v10, v7, v6

    if-eqz v8, :cond_c

    invoke-virtual {v8}, Lcom/estrongs/a/a;->taskStopped()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v3

    if-eqz v3, :cond_c

    if-eqz v2, :cond_b

    invoke-direct {p0, v2}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    :cond_b
    move-object v0, v1

    goto/16 :goto_2

    :cond_c
    if-nez v10, :cond_e

    :cond_d
    :goto_5
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_4

    :cond_e
    :try_start_6
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_f
    invoke-virtual {v10}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, ".."

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual {v10}, Lorg/apache/commons/net/ftp/FTPFile;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_13

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    :goto_6
    const/4 v3, 0x0

    invoke-virtual {v10}, Lorg/apache/commons/net/ftp/FTPFile;->isSymbolicLink()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v10}, Lorg/apache/commons/net/ftp/FTPFile;->getLink()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v4, 0x1

    invoke-virtual {v10, v4}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    :cond_10
    :goto_7
    new-instance v4, Lcom/estrongs/old/fs/impl/a/a;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v10, v5, v3}, Lcom/estrongs/old/fs/impl/a/a;-><init>(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_d

    invoke-interface {p2, v4}, Lcom/estrongs/fs/i;->a(Lcom/estrongs/fs/h;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/estrongs/android/util/am;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    const/4 v4, 0x1

    :goto_8
    invoke-virtual {v10, v4}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_7

    :cond_12
    const/4 v4, 0x0

    goto :goto_8

    :catch_1
    move-exception v0

    move-object v1, v2

    goto/16 :goto_0

    :cond_13
    move-object v5, v3

    goto :goto_6

    :cond_14
    move-object v7, v0

    goto/16 :goto_3
.end method

.method public a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    .locals 17

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/util/am;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/util/am;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/util/am;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/util/am;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/util/am;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v4, 0x1

    const-string v3, "UTF-8"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/old/fs/impl/a/c;->d:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/util/am;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/android/util/TypedMap;

    if-eqz v2, :cond_1b

    const-string v4, "mode"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/estrongs/android/util/TypedMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "encode"

    invoke-virtual {v2, v5, v3}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    move v6, v4

    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/util/am;->l(Ljava/lang/String;)Z

    move-result v13

    if-nez v7, :cond_0

    if-eqz v13, :cond_3

    const-string v3, "990"

    move-object v7, v3

    :cond_0
    :goto_1
    const/4 v4, 0x0

    :try_start_0
    sget-object v14, Lcom/estrongs/old/fs/impl/a/c;->c:Ljava/util/HashMap;

    monitor-enter v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v3, Lcom/estrongs/old/fs/impl/a/c;->c:Ljava/util/HashMap;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v8, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "@"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v15, "@"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_1a

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v8, Lcom/estrongs/old/fs/impl/a/c;->c:Ljava/util/HashMap;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "@"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "@"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v3

    :goto_2
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    :try_start_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_6

    new-instance v8, Lcom/estrongs/old/fs/impl/a/g;

    const/4 v3, 0x0

    invoke-direct {v8, v3}, Lcom/estrongs/old/fs/impl/a/g;-><init>(Lcom/estrongs/old/fs/impl/a/g;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v13, :cond_e

    :try_start_3
    const-string v3, "ftps://"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    new-instance v3, Lcom/estrongs/old/fs/impl/a/f;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "@"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "@"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v3, v14, v8, v4}, Lcom/estrongs/old/fs/impl/a/f;-><init>(Ljava/lang/String;Lcom/estrongs/old/fs/impl/a/g;Z)V

    invoke-static {}, Lorg/apache/commons/net/util/TrustManagerUtils;->getAcceptAllTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/commons/net/ftp/FTPSClient;->setTrustManager(Ljavax/net/ssl/TrustManager;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/commons/net/ftp/FTPSClient;->setNeedClientAuth(Z)V

    :goto_4
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/commons/net/ftp/FTPClient;->setListHiddenFiles(Z)V

    iput-object v3, v8, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    iput-object v5, v8, Lcom/estrongs/old/fs/impl/a/g;->b:Ljava/lang/String;

    sget-object v4, Lcom/estrongs/android/util/f;->a:[Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v4, v4, v14

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "detectedEncoding"

    invoke-virtual {v2, v4}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v4, "detectedEncoding"

    invoke-virtual {v2, v4}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/estrongs/old/fs/impl/a/g;->b:Ljava/lang/String;

    :cond_1
    iget-object v2, v8, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    iget-object v4, v8, Lcom/estrongs/old/fs/impl/a/g;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/apache/commons/net/ftp/FTPClient;->setControlEncoding(Ljava/lang/String;)V

    const v2, 0x9c40

    invoke-virtual {v3, v2}, Lorg/apache/commons/net/ftp/FTPClient;->setConnectTimeout(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    const/4 v2, -0x1

    if-eqz v7, :cond_2

    :try_start_4
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result v2

    :cond_2
    :goto_5
    const/4 v4, -0x1

    if-eq v2, v4, :cond_f

    :try_start_5
    invoke-virtual {v3, v11, v2}, Lorg/apache/commons/net/ftp/FTPClient;->connect(Ljava/lang/String;I)V

    :goto_6
    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->getReplyCode()I

    move-result v2

    invoke-static {v2}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    const/4 v2, 0x0

    :goto_7
    return-object v2

    :cond_3
    const-string v3, "21"

    move-object v7, v3

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    :try_start_6
    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception v2

    move-object v3, v2

    :goto_8
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v4, :cond_5

    iget-object v2, v4, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    if-eqz v2, :cond_5

    :try_start_8
    iget-object v2, v4, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    instance-of v2, v2, Lcom/estrongs/old/fs/impl/a/d;

    if-eqz v2, :cond_18

    iget-object v2, v4, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    check-cast v2, Lcom/estrongs/old/fs/impl/a/d;

    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/estrongs/old/fs/impl/a/d;->a:Z

    :cond_4
    :goto_9
    iget-object v2, v4, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    iget-object v2, v4, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_5
    :goto_a
    new-instance v2, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v2, v3}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_6
    :try_start_9
    monitor-enter v8
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const/4 v3, 0x0

    :try_start_a
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/estrongs/old/fs/impl/a/g;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    iget-object v4, v3, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPClient;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, v3, Lcom/estrongs/old/fs/impl/a/g;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    iput-object v5, v3, Lcom/estrongs/old/fs/impl/a/g;->b:Ljava/lang/String;

    iget-object v4, v3, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    iget-object v14, v3, Lcom/estrongs/old/fs/impl/a/g;->b:Ljava/lang/String;

    invoke-virtual {v4, v14}, Lorg/apache/commons/net/ftp/FTPClient;->setControlEncoding(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    :cond_7
    :try_start_d
    iget-object v4, v3, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v4, v12}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    sget-object v4, Lcom/estrongs/android/util/f;->a:[Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v4, v4, v14

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "detectedEncoding"

    invoke-virtual {v2, v4}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, v3, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPClient;->getControlEncoding()Ljava/lang/String;

    move-result-object v4

    const-string v14, "detectedEncoding"

    invoke-virtual {v2, v14}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, v3, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    const-string v14, "detectedEncoding"

    invoke-virtual {v2, v14}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lorg/apache/commons/net/ftp/FTPClient;->setControlEncoding(Ljava/lang/String;)V

    :cond_8
    if-eqz v6, :cond_a

    iget-boolean v4, v3, Lcom/estrongs/old/fs/impl/a/g;->c:Z

    if-nez v4, :cond_a

    iget-object v4, v3, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPClient;->enterLocalPassiveMode()V

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/estrongs/old/fs/impl/a/g;->c:Z

    :cond_9
    :goto_b
    iget-object v2, v3, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;
    :try_end_d
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    goto/16 :goto_7

    :catchall_1
    move-exception v2

    move-object v3, v4

    :goto_c
    :try_start_e
    monitor-exit v8
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    throw v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    :catch_1
    move-exception v2

    move-object v4, v3

    move-object v3, v2

    goto/16 :goto_8

    :cond_a
    if-nez v6, :cond_9

    :try_start_10
    iget-boolean v4, v3, Lcom/estrongs/old/fs/impl/a/g;->c:Z

    if-eqz v4, :cond_9

    iget-object v4, v3, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPClient;->enterLocalActiveMode()V

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/estrongs/old/fs/impl/a/g;->c:Z
    :try_end_10
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1

    goto :goto_b

    :catch_2
    move-exception v4

    :cond_b
    :goto_d
    :try_start_11
    iget-object v4, v3, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    instance-of v4, v4, Lcom/estrongs/old/fs/impl/a/d;

    if-eqz v4, :cond_d

    iget-object v4, v3, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    check-cast v4, Lcom/estrongs/old/fs/impl/a/d;

    const/4 v14, 0x1

    iput-boolean v14, v4, Lcom/estrongs/old/fs/impl/a/d;->a:Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1

    :cond_c
    :goto_e
    :try_start_12
    iget-object v4, v3, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1

    :goto_f
    :try_start_13
    iget-object v4, v3, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_7
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1

    :goto_10
    const/4 v4, 0x0

    :try_start_14
    iput-object v4, v3, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_d
    iget-object v4, v3, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    instance-of v4, v4, Lcom/estrongs/old/fs/impl/a/f;

    if-eqz v4, :cond_c

    iget-object v4, v3, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    check-cast v4, Lcom/estrongs/old/fs/impl/a/f;

    const/4 v14, 0x1

    iput-boolean v14, v4, Lcom/estrongs/old/fs/impl/a/f;->a:Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1

    goto :goto_e

    :cond_e
    :try_start_15
    new-instance v3, Lcom/estrongs/old/fs/impl/a/d;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "@"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v14, "@"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v8}, Lcom/estrongs/old/fs/impl/a/d;-><init>(Ljava/lang/String;Lcom/estrongs/old/fs/impl/a/g;)V

    goto/16 :goto_4

    :catch_3
    move-exception v2

    move-object v3, v2

    move-object v4, v8

    goto/16 :goto_8

    :catch_4
    move-exception v2

    const/4 v2, -0x1

    goto/16 :goto_5

    :cond_f
    invoke-virtual {v3, v11}, Lorg/apache/commons/net/ftp/FTPClient;->connect(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_3

    goto/16 :goto_6

    :cond_10
    if-eqz v13, :cond_11

    :try_start_16
    move-object v0, v3

    check-cast v0, Lorg/apache/commons/net/ftp/FTPSClient;

    move-object v2, v0

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/apache/commons/net/ftp/FTPSClient;->execPBSZ(J)V

    move-object v0, v3

    check-cast v0, Lorg/apache/commons/net/ftp/FTPSClient;

    move-object v2, v0

    const-string v4, "P"

    invoke-virtual {v2, v4}, Lorg/apache/commons/net/ftp/FTPSClient;->execPROT(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_6

    :cond_11
    :goto_11
    if-nez v10, :cond_19

    :try_start_17
    const-string v4, "Anonymous"

    const-string v2, ""

    :goto_12
    invoke-virtual {v3, v4, v2}, Lorg/apache/commons/net/ftp/FTPClient;->login(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->getReplyCode()I

    move-result v2

    const/16 v4, 0x212

    if-ne v2, v4, :cond_12

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "530"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_12
    invoke-static {v2}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v2

    if-nez v2, :cond_15

    instance-of v2, v3, Lcom/estrongs/old/fs/impl/a/d;

    if-eqz v2, :cond_14

    move-object v0, v3

    check-cast v0, Lcom/estrongs/old/fs/impl/a/d;

    move-object v2, v0

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/estrongs/old/fs/impl/a/d;->a:Z

    :cond_13
    :goto_13
    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    const/4 v2, 0x0

    goto/16 :goto_7

    :cond_14
    instance-of v2, v3, Lcom/estrongs/old/fs/impl/a/f;

    if-eqz v2, :cond_13

    move-object v0, v3

    check-cast v0, Lcom/estrongs/old/fs/impl/a/f;

    move-object v2, v0

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/estrongs/old/fs/impl/a/f;->a:Z

    goto :goto_13

    :cond_15
    if-eqz v12, :cond_16

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_16

    invoke-virtual {v3, v12}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    :cond_16
    const/4 v2, 0x2

    invoke-virtual {v3, v2}, Lorg/apache/commons/net/ftp/FTPClient;->setFileType(I)Z

    if-eqz v6, :cond_17

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->enterLocalPassiveMode()V

    const/4 v2, 0x1

    iput-boolean v2, v8, Lcom/estrongs/old/fs/impl/a/g;->c:Z

    :goto_14
    const v2, 0x9c40

    invoke-virtual {v3, v2}, Lorg/apache/commons/net/ftp/FTPClient;->setDefaultTimeout(I)V

    iget-object v2, v8, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    goto/16 :goto_7

    :cond_17
    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->enterLocalActiveMode()V

    const/4 v2, 0x0

    iput-boolean v2, v8, Lcom/estrongs/old/fs/impl/a/g;->c:Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_3

    goto :goto_14

    :cond_18
    :try_start_18
    iget-object v2, v4, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    instance-of v2, v2, Lcom/estrongs/old/fs/impl/a/f;

    if-eqz v2, :cond_4

    iget-object v2, v4, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    check-cast v2, Lcom/estrongs/old/fs/impl/a/f;

    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/estrongs/old/fs/impl/a/f;->a:Z
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_5

    goto/16 :goto_9

    :catch_5
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_a

    :catch_6
    move-exception v2

    goto :goto_11

    :catch_7
    move-exception v4

    goto/16 :goto_10

    :catch_8
    move-exception v4

    goto/16 :goto_f

    :catch_9
    move-exception v4

    goto/16 :goto_d

    :catchall_2
    move-exception v2

    goto/16 :goto_c

    :cond_19
    move-object v2, v9

    move-object v4, v10

    goto/16 :goto_12

    :cond_1a
    move-object v8, v3

    goto/16 :goto_2

    :cond_1b
    move-object v5, v3

    move v6, v4

    goto/16 :goto_0
.end method

.method public a()V
    .locals 7

    sget-object v4, Lcom/estrongs/old/fs/impl/a/c;->c:Ljava/util/HashMap;

    monitor-enter v4

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/estrongs/old/fs/impl/a/c;->a:Z

    sget-object v0, Lcom/estrongs/old/fs/impl/a/c;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v4

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/estrongs/old/fs/impl/a/c;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/estrongs/old/fs/impl/a/c;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    move v3, v1

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/old/fs/impl/a/g;

    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    instance-of v2, v2, Lcom/estrongs/old/fs/impl/a/d;

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    check-cast v2, Lcom/estrongs/old/fs/impl/a/d;

    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/estrongs/old/fs/impl/a/d;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_2
    :try_start_2
    iget-object v2, v1, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    :try_start_3
    iget-object v1, v1, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    :goto_4
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_5
    :try_start_4
    iget-object v2, v1, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    instance-of v2, v2, Lcom/estrongs/old/fs/impl/a/f;

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/estrongs/old/fs/impl/a/g;->a:Lorg/apache/commons/net/ftp/FTPClient;

    check-cast v2, Lcom/estrongs/old/fs/impl/a/f;

    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/estrongs/old/fs/impl/a/f;->a:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v2

    goto :goto_3
.end method

.method public a(Lcom/estrongs/android/util/TypedMap;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/old/fs/impl/a/c;->d:Ljava/util/HashMap;

    const-string v1, "server"

    invoke-virtual {p1, v1}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/TypedMap;

    if-eqz v0, :cond_0

    const-string v1, "detectedEncoding"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "detectedEncoding"

    const-string v2, "detectedEncoding"

    invoke-virtual {v0, v2}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/old/fs/impl/a/c;->d:Ljava/util/HashMap;

    const-string v1, "server"

    invoke-virtual {p1, v1}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/estrongs/fs/h;)V
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/am;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/old/fs/impl/a/c;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    :try_end_0
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/estrongs/android/util/am;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v3, Ljava/util/Date;

    invoke-interface {p2}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->setModificationTime(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    goto :goto_0

    :catch_0
    move-exception v1

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    :try_start_2
    new-instance v2, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    invoke-direct {p0, v1}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    :cond_2
    throw v0

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/am;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/estrongs/old/fs/impl/a/c;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    :try_end_0
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_1

    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/estrongs/android/util/am;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2, v4}, Lorg/apache/commons/net/ftp/FTPClient;->makeDirectory(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v4}, Lcom/estrongs/android/util/am;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v4}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/net/ftp/FTPClient;->makeDirectory(Ljava/lang/String;)Z
    :try_end_1
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    move v1, v3

    :cond_2
    :goto_1
    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :try_start_2
    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-virtual {v2, v4}, Lorg/apache/commons/net/ftp/FTPClient;->storeFileStream(Ljava/lang/String;)Ljava/io/OutputStream;
    :try_end_2
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    if-eqz v4, :cond_5

    :goto_2
    if-eqz v4, :cond_4

    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_4
    instance-of v1, v2, Lcom/estrongs/old/fs/impl/a/d;

    if-eqz v1, :cond_6

    move-object v0, v2

    check-cast v0, Lcom/estrongs/old/fs/impl/a/d;

    move-object v1, v0

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/estrongs/old/fs/impl/a/d;->a:Z

    move v1, v3

    goto :goto_1

    :cond_5
    move v3, v1

    goto :goto_2

    :cond_6
    instance-of v1, v2, Lcom/estrongs/old/fs/impl/a/f;

    if-eqz v1, :cond_8

    move-object v0, v2

    check-cast v0, Lcom/estrongs/old/fs/impl/a/f;

    move-object v1, v0

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/estrongs/old/fs/impl/a/f;->a:Z
    :try_end_3
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v1, v3

    goto :goto_1

    :catch_0
    move-exception v3

    :goto_3
    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_4
    new-instance v3, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v3, v1}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v1

    if-eqz v2, :cond_7

    invoke-direct {p0, v2}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    :cond_7
    throw v1

    :catch_2
    move-exception v1

    move v1, v3

    goto :goto_3

    :cond_8
    move v1, v3

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/am;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/estrongs/old/fs/impl/a/c;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    :try_end_0
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/estrongs/android/util/am;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/estrongs/android/util/am;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/net/ftp/FTPClient;->rename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v2}, Lcom/estrongs/android/util/am;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v2}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/net/ftp/FTPClient;->rename(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :cond_2
    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    goto :goto_0

    :catch_0
    move-exception v2

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v2, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    invoke-direct {p0, v1}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    :cond_3
    throw v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/am;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/estrongs/old/fs/impl/a/c;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    :try_end_0
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_1

    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/estrongs/android/util/am;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-ne v4, v1, :cond_3

    if-eqz v2, :cond_2

    invoke-direct {p0, v2}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    :try_start_2
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x0

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    move-object v3, v4

    move-object v4, v7

    :goto_1
    invoke-virtual {v2, v3}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->listNames()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    move v3, v0

    :goto_2
    array-length v6, v5
    :try_end_2
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lt v3, v6, :cond_6

    :cond_4
    :goto_3
    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    :try_start_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    move-object v3, v4

    move-object v4, v7

    goto :goto_1

    :cond_6
    aget-object v6, v5, v3

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v6

    if-eqz v6, :cond_7

    move v0, v1

    goto :goto_3

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catch_0
    move-exception v1

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_8

    invoke-direct {p0, v2}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    :cond_8
    throw v0

    :catch_2
    move-exception v1

    move-object v1, v2

    goto :goto_4
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/am;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/estrongs/old/fs/impl/a/c;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    :try_end_0
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_1

    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/estrongs/old/fs/impl/a/c;->l(Ljava/lang/String;)Z

    move-result v4

    invoke-static {p1}, Lcom/estrongs/android/util/am;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {v3}, Lcom/estrongs/android/util/am;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_4

    invoke-virtual {v2, v3}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_2
    :goto_2
    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/estrongs/android/util/am;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v4, :cond_6

    const-string v0, "/"

    :goto_3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lorg/apache/commons/net/ftp/FTPClient;->rename(Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz v4, :cond_7

    invoke-direct {p0, v2, v3}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;Ljava/lang/String;)Z

    :goto_4
    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/net/ftp/FTPClient;->rename(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    goto :goto_0

    :cond_3
    move-object v3, p2

    goto :goto_1

    :cond_4
    :try_start_2
    invoke-virtual {v2, v3}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v6

    if-eqz v6, :cond_5

    array-length v6, v6

    if-gtz v6, :cond_2

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    const-string v0, ""

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v3}, Lcom/estrongs/old/fs/impl/a/c;->c(Ljava/lang/String;)Z
    :try_end_2
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v0, v2

    :goto_5
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    goto/16 :goto_0

    :cond_8
    :try_start_3
    invoke-virtual {v2, v5, v3}, Lorg/apache/commons/net/ftp/FTPClient;->rename(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_9

    invoke-direct {p0, v2}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    :cond_9
    throw v0

    :catch_2
    move-exception v0

    move-object v0, v2

    goto :goto_5

    :cond_a
    move v0, v1

    goto/16 :goto_2
.end method

.method public c(Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v2

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/am;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/estrongs/old/fs/impl/a/c;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eqz v2, :cond_3

    :try_start_1
    invoke-virtual {v2}, Lcom/estrongs/a/a;->taskStopped()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    invoke-static {p1}, Lcom/estrongs/android/util/am;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/estrongs/old/fs/impl/a/c;->l(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v1, v3}, Lorg/apache/commons/net/ftp/FTPClient;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {v3}, Lcom/estrongs/android/util/am;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->getReplyCode()I

    move-result v0

    const/16 v4, 0x226

    if-ne v0, v4, :cond_5

    new-instance v0, Ljava/io/IOException;

    const-string v2, "550"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v2, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    invoke-direct {p0, v1}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    :cond_4
    throw v0

    :cond_5
    :try_start_3
    invoke-static {v3}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/FTPClient;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    :cond_6
    if-eqz v2, :cond_7

    const/4 v3, 0x1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ftp://"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_7
    :goto_1
    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    goto :goto_0

    :cond_8
    :try_start_4
    invoke-direct {p0, v1, v3}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    goto :goto_1
.end method

.method public d(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/am;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/old/fs/impl/a/c;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    :try_end_0
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_2

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    :try_start_1
    invoke-static {p1}, Lcom/estrongs/android/util/am;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->makeDirectory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v2}, Lcom/estrongs/android/util/am;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v2}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/FTPClient;->makeDirectory(Ljava/lang/String;)Z
    :try_end_1
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :cond_3
    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v2, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    invoke-direct {p0, v1}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    :cond_4
    throw v0

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v2, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v2, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public e(Ljava/lang/String;)J
    .locals 11

    const-wide/16 v2, -0x1

    const/4 v10, 0x2

    const/4 v5, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/am;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v4}, Lcom/estrongs/old/fs/impl/a/c;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    :try_end_0
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    if-nez v4, :cond_2

    if-eqz v4, :cond_0

    invoke-direct {p0, v4}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    :cond_0
    move-wide v0, v2

    :cond_1
    :goto_0
    return-wide v0

    :cond_2
    :try_start_1
    invoke-static {p1}, Lcom/estrongs/android/util/am;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z
    :try_end_1
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v5

    move-object v6, v0

    :goto_1
    if-lt v1, v10, :cond_6

    :cond_3
    :try_start_2
    invoke-static {v0}, Lcom/estrongs/android/util/am;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v0}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    move v6, v5

    :goto_2
    if-lt v6, v10, :cond_8

    :cond_4
    :goto_3
    if-eqz v4, :cond_5

    invoke-direct {p0, v4}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    :cond_5
    :goto_4
    move-wide v0, v2

    goto :goto_0

    :cond_6
    :try_start_3
    invoke-virtual {v4, v6}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v7

    if-eqz v7, :cond_7

    array-length v8, v7

    if-lez v8, :cond_7

    const/4 v0, 0x0

    aget-object v0, v7, v0

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPFile;->getSize()J
    :try_end_3
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v0

    if-eqz v4, :cond_1

    invoke-direct {p0, v4}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    goto :goto_0

    :cond_7
    :try_start_4
    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, " "

    const-string v8, "\\ "

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_4
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    :try_start_5
    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles()[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v8

    if-eqz v8, :cond_b

    array-length v1, v8

    if-lez v1, :cond_b

    move v1, v5

    :goto_5
    array-length v9, v8

    if-lt v1, v9, :cond_9

    :goto_6
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_2

    :cond_9
    aget-object v9, v8, v1

    invoke-virtual {v9}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    aget-object v0, v8, v1

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPFile;->getSize()J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v0

    if-eqz v4, :cond_1

    invoke-direct {p0, v4}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    goto :goto_0

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_b
    :try_start_6
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, " "

    const-string v8, "\\ "

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v0

    goto :goto_6

    :catch_0
    move-exception v1

    :goto_7
    if-eqz v0, :cond_5

    invoke-direct {p0, v0}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    :goto_8
    :try_start_7
    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v0

    :goto_9
    if-eqz v4, :cond_c

    invoke-direct {p0, v4}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    :cond_c
    throw v0

    :catchall_1
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    move-object v0, v4

    goto :goto_7

    :catch_4
    move-exception v0

    goto/16 :goto_3
.end method

.method public f(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/old/fs/impl/a/c;->l(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public g(Ljava/lang/String;)Lcom/estrongs/fs/c;
    .locals 10

    const/4 v9, 0x2

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/am;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/old/fs/impl/a/c;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    :try_end_0
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    if-nez v2, :cond_1

    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/estrongs/android/util/am;->i(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    move v5, v3

    move-object v6, v1

    :goto_1
    if-lt v5, v9, :cond_4

    :cond_2
    :try_start_2
    invoke-static {v1}, Lcom/estrongs/android/util/am;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v1}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v5, v1

    move v1, v3

    :goto_2
    if-lt v1, v9, :cond_d

    :cond_3
    :goto_3
    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    goto :goto_0

    :cond_4
    :try_start_3
    invoke-virtual {v2, v6}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v7

    if-eqz v7, :cond_c

    array-length v8, v7

    if-lez v8, :cond_c

    new-instance v1, Lcom/estrongs/fs/c;

    invoke-direct {v1, p1}, Lcom/estrongs/fs/c;-><init>(Ljava/lang/String;)V

    array-length v5, v7

    if-le v5, v4, :cond_6

    :goto_4
    iput-boolean v4, v1, Lcom/estrongs/fs/c;->d:Z

    iget-boolean v4, v1, Lcom/estrongs/fs/c;->d:Z

    if-eqz v4, :cond_9

    array-length v4, v7

    :goto_5
    if-lt v3, v4, :cond_7

    :goto_6
    const/4 v3, 0x0

    aget-object v3, v7, v3

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPFile;->getTimestamp()Ljava/util/Calendar;

    move-result-object v3

    if-nez v3, :cond_b

    const-wide/16 v4, 0x0

    :goto_7
    iput-wide v4, v1, Lcom/estrongs/fs/c;->j:J

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/estrongs/fs/c;->m:Z

    const/4 v3, 0x0

    aget-object v3, v7, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/apache/commons/net/ftp/FTPFile;->hasPermission(II)Z

    move-result v3

    iput-boolean v3, v1, Lcom/estrongs/fs/c;->k:Z

    const/4 v3, 0x0

    aget-object v3, v7, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/apache/commons/net/ftp/FTPFile;->hasPermission(II)Z

    move-result v3

    iput-boolean v3, v1, Lcom/estrongs/fs/c;->l:Z
    :try_end_3
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_5

    invoke-direct {p0, v2}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    :cond_5
    move-object v0, v1

    goto :goto_0

    :cond_6
    move v4, v3

    goto :goto_4

    :cond_7
    :try_start_4
    aget-object v5, v7, v3

    invoke-virtual {v5}, Lorg/apache/commons/net/ftp/FTPFile;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_8

    iget v5, v1, Lcom/estrongs/fs/c;->f:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v1, Lcom/estrongs/fs/c;->f:I

    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    iget v5, v1, Lcom/estrongs/fs/c;->g:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v1, Lcom/estrongs/fs/c;->g:I
    :try_end_4
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_8

    :catch_0
    move-exception v1

    move-object v1, v2

    :goto_9
    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    goto/16 :goto_0

    :cond_9
    :try_start_5
    const-string v3, "File"

    iput-object v3, v1, Lcom/estrongs/fs/c;->c:Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v3, v7, v3

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPFile;->getSize()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/estrongs/fs/c;->e:J
    :try_end_5
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    :catch_1
    move-exception v0

    :goto_a
    :try_start_6
    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v0

    :goto_b
    if-eqz v2, :cond_a

    invoke-direct {p0, v2}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    :cond_a
    throw v0

    :cond_b
    const/4 v3, 0x0

    :try_start_7
    aget-object v3, v7, v3

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPFile;->getTimestamp()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    goto :goto_7

    :cond_c
    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, " "

    const-string v8, "\\ "

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_7
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_d
    :try_start_8
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles()[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v6

    if-eqz v6, :cond_13

    array-length v7, v6

    if-lez v7, :cond_13

    new-instance v1, Lcom/estrongs/fs/c;

    invoke-direct {v1, p1}, Lcom/estrongs/fs/c;-><init>(Ljava/lang/String;)V

    array-length v5, v6

    if-le v5, v4, :cond_f

    :goto_c
    iput-boolean v4, v1, Lcom/estrongs/fs/c;->d:Z

    iget-boolean v4, v1, Lcom/estrongs/fs/c;->d:Z

    if-eqz v4, :cond_12

    array-length v4, v6

    :goto_d
    if-lt v3, v4, :cond_10

    :goto_e
    const/4 v3, 0x0

    aget-object v3, v6, v3

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPFile;->getTimestamp()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/estrongs/fs/c;->j:J

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/estrongs/fs/c;->m:Z

    const/4 v3, 0x0

    aget-object v3, v6, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/apache/commons/net/ftp/FTPFile;->hasPermission(II)Z

    move-result v3

    iput-boolean v3, v1, Lcom/estrongs/fs/c;->k:Z

    const/4 v3, 0x0

    aget-object v3, v6, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/apache/commons/net/ftp/FTPFile;->hasPermission(II)Z

    move-result v3

    iput-boolean v3, v1, Lcom/estrongs/fs/c;->l:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v2, :cond_e

    invoke-direct {p0, v2}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    :cond_e
    move-object v0, v1

    goto/16 :goto_0

    :cond_f
    move v4, v3

    goto :goto_c

    :cond_10
    :try_start_9
    aget-object v5, v6, v3

    invoke-virtual {v5}, Lorg/apache/commons/net/ftp/FTPFile;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_11

    iget v5, v1, Lcom/estrongs/fs/c;->f:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v1, Lcom/estrongs/fs/c;->f:I

    :goto_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_11
    iget v5, v1, Lcom/estrongs/fs/c;->g:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v1, Lcom/estrongs/fs/c;->g:I

    goto :goto_f

    :catch_2
    move-exception v1

    goto/16 :goto_3

    :cond_12
    const-string v3, "File"

    iput-object v3, v1, Lcom/estrongs/fs/c;->c:Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v3, v6, v3

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPFile;->getSize()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/estrongs/fs/c;->e:J

    goto :goto_e

    :cond_13
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, " "

    const-string v7, "\\ "

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v5

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto/16 :goto_b

    :catch_3
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto/16 :goto_a

    :catch_4
    move-exception v1

    move-object v1, v0

    goto/16 :goto_9
.end method

.method public h(Ljava/lang/String;)Lcom/estrongs/fs/h;
    .locals 10

    const/4 v9, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/am;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/old/fs/impl/a/c;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    :try_end_0
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_2

    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    :try_start_1
    invoke-static {p1}, Lcom/estrongs/android/util/am;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z
    :try_end_1
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v3, v4

    move-object v5, v0

    :goto_1
    if-lt v3, v9, :cond_6

    :cond_3
    :try_start_2
    invoke-static {v0}, Lcom/estrongs/android/util/am;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v0}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v6

    move v5, v4

    :goto_2
    if-lt v5, v9, :cond_8

    :cond_4
    :goto_3
    if-eqz v2, :cond_5

    invoke-direct {p0, v2}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    :cond_5
    :goto_4
    move-object v0, v1

    goto :goto_0

    :cond_6
    :try_start_3
    invoke-virtual {v2, v5}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v6

    if-eqz v6, :cond_7

    array-length v7, v6

    if-lez v7, :cond_7

    new-instance v0, Lcom/estrongs/old/fs/impl/a/a;

    const/4 v3, 0x0

    aget-object v3, v6, v3

    const/4 v4, 0x0

    aget-object v4, v6, v4

    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPFile;->getLink()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, p1, v4}, Lcom/estrongs/old/fs/impl/a/a;-><init>(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_1

    invoke-direct {p0, v2}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    goto :goto_0

    :cond_7
    :try_start_4
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, " "

    const-string v7, "\\ "

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_4
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    :try_start_5
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles()[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v7

    if-eqz v7, :cond_b

    array-length v3, v7

    if-lez v3, :cond_b

    move v3, v4

    :goto_5
    array-length v8, v7

    if-lt v3, v8, :cond_9

    :goto_6
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_2

    :cond_9
    aget-object v8, v7, v3

    invoke-virtual {v8}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    new-instance v0, Lcom/estrongs/old/fs/impl/a/a;

    aget-object v4, v7, v3

    aget-object v3, v7, v3

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPFile;->getLink()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v4, p1, v3}, Lcom/estrongs/old/fs/impl/a/a;-><init>(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_1

    invoke-direct {p0, v2}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_b
    :try_start_6
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, " "

    const-string v7, "\\ "

    invoke-virtual {v0, v3, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_7
    if-eqz v0, :cond_5

    invoke-direct {p0, v0}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_8
    if-eqz v2, :cond_5

    invoke-direct {p0, v2}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_9
    if-eqz v2, :cond_c

    invoke-direct {p0, v2}, Lcom/estrongs/old/fs/impl/a/c;->a(Lorg/apache/commons/net/ftp/FTPClient;)V

    :cond_c
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    move-object v0, v2

    goto :goto_7

    :catch_4
    move-exception v0

    goto/16 :goto_3
.end method

.method public i(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/estrongs/old/fs/impl/a/c;->a(Ljava/lang/String;J)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public j(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 7

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/estrongs/android/util/am;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/estrongs/android/util/am;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v3, v1}, Lcom/estrongs/old/fs/impl/a/c;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    :try_end_0
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    if-nez v1, :cond_2

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v3, v1}, Lcom/estrongs/old/fs/impl/a/c;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v4}, Lorg/apache/commons/net/ftp/FTPClient;->storeFileStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {v4}, Lcom/estrongs/android/util/am;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v4}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->storeFileStream(Ljava/lang/String;)Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    :try_start_2
    invoke-virtual {v1, v4}, Lorg/apache/commons/net/ftp/FTPClient;->storeFileStream(Ljava/lang/String;)Ljava/io/OutputStream;
    :try_end_2
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    if-nez v2, :cond_3

    :try_start_3
    invoke-static {v4}, Lcom/estrongs/android/util/am;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v4}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/commons/net/ftp/FTPClient;->storeFileStream(Ljava/lang/String;)Ljava/io/OutputStream;
    :try_end_3
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    :cond_3
    if-nez v2, :cond_5

    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    :cond_4
    const/4 v5, 0x1

    invoke-virtual {p0, v3, v5}, Lcom/estrongs/old/fs/impl/a/c;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, v4}, Lorg/apache/commons/net/ftp/FTPClient;->storeFileStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-static {v4}, Lcom/estrongs/android/util/am;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v4}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/commons/net/ftp/FTPClient;->storeFileStream(Ljava/lang/String;)Ljava/io/OutputStream;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v2

    :cond_5
    :goto_1
    if-eqz v2, :cond_1

    new-instance v0, Lcom/estrongs/old/fs/impl/a/e;

    invoke-direct {v0, v2, v1}, Lcom/estrongs/old/fs/impl/a/e;-><init>(Ljava/io/OutputStream;Lorg/apache/commons/net/ftp/FTPClient;)V

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    :goto_2
    if-nez v2, :cond_5

    if-eqz v1, :cond_6

    :try_start_5
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    :cond_6
    const/4 v5, 0x1

    invoke-virtual {p0, v3, v5}, Lcom/estrongs/old/fs/impl/a/c;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, v4}, Lorg/apache/commons/net/ftp/FTPClient;->storeFileStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-static {v4}, Lcom/estrongs/android/util/am;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v4}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/commons/net/ftp/FTPClient;->storeFileStream(Ljava/lang/String;)Ljava/io/OutputStream;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    move-result-object v2

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_3
    :try_start_6
    new-instance v5, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v5, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v0

    :goto_4
    if-nez v2, :cond_8

    if-eqz v1, :cond_7

    :try_start_7
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    :cond_7
    const/4 v1, 0x1

    invoke-virtual {p0, v3, v1}, Lcom/estrongs/old/fs/impl/a/c;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1, v4}, Lorg/apache/commons/net/ftp/FTPClient;->storeFileStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v2

    if-nez v2, :cond_8

    invoke-static {v4}, Lcom/estrongs/android/util/am;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v4}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->storeFileStream(Ljava/lang/String;)Ljava/io/OutputStream;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :cond_8
    :goto_5
    throw v0

    :catch_2
    move-exception v3

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_5

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_4

    :catchall_2
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_4

    :catch_4
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v3

    goto :goto_1

    :catch_7
    move-exception v2

    move-object v2, v0

    goto :goto_2

    :catch_8
    move-exception v5

    goto :goto_2

    :catch_9
    move-exception v1

    goto/16 :goto_0
.end method

.method public k(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v2, v3}, Lcom/estrongs/old/fs/impl/a/c;->a(Ljava/lang/String;J)Ljava/io/InputStream;
    :try_end_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_2
    :goto_1
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
