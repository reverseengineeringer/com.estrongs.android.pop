.class public Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/old/fs/a;


# static fields
.field private static b:Lcom/jcraft/jsch/JSch;

.field private static c:Z

.field private static d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/old/fs/impl/sftp/d;",
            ">;>;"
        }
    .end annotation
.end field

.field private static e:Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;


# instance fields
.field private a:Ljava/util/HashMap;
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

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/estrongs/android/util/TypedMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/jcraft/jsch/JSch;

    invoke-direct {v0}, Lcom/jcraft/jsch/JSch;-><init>()V

    sput-object v0, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->b:Lcom/jcraft/jsch/JSch;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->c:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->d:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->e:Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->f:Ljava/util/HashMap;

    new-instance v0, Lcom/estrongs/android/util/TypedMap;

    invoke-direct {v0}, Lcom/estrongs/android/util/TypedMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->g:Lcom/estrongs/android/util/TypedMap;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/old/fs/impl/sftp/d;
    .locals 6

    const/4 v3, 0x0

    :try_start_0
    sget-object v1, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->d:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->d:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "@"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "@"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->d:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v4, "UTF-8"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sftp://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v0, "22"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/TypedMap;

    if-eqz v0, :cond_0

    const-string v1, "encode"

    invoke-virtual {v0, v1, v4}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_0
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_4

    new-instance v2, Lcom/estrongs/old/fs/impl/sftp/d;

    const/4 v1, 0x0

    invoke-direct {v2, v1}, Lcom/estrongs/old/fs/impl/sftp/d;-><init>(Lcom/estrongs/old/fs/impl/sftp/d;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    sget-object v1, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->b:Lcom/jcraft/jsch/JSch;

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, p1, p3, v3}, Lcom/jcraft/jsch/JSch;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/jcraft/jsch/Session;

    move-result-object v1

    iput-object v1, v2, Lcom/estrongs/old/fs/impl/sftp/d;->a:Lcom/jcraft/jsch/Session;

    new-instance v1, Lcom/estrongs/old/fs/impl/sftp/a;

    invoke-direct {v1, p2}, Lcom/estrongs/old/fs/impl/sftp/a;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/estrongs/old/fs/impl/sftp/d;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v3, v1}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/UserInfo;)V

    iget-object v1, v2, Lcom/estrongs/old/fs/impl/sftp/d;->a:Lcom/jcraft/jsch/Session;

    const/16 v3, 0x7530

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Session;->a(I)V

    iget-object v1, v2, Lcom/estrongs/old/fs/impl/sftp/d;->a:Lcom/jcraft/jsch/Session;

    const-string v3, "sftp"

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Session;->a(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;

    move-result-object v1

    check-cast v1, Lcom/jcraft/jsch/ChannelSftp;

    iput-object v1, v2, Lcom/estrongs/old/fs/impl/sftp/d;->b:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v1, v2, Lcom/estrongs/old/fs/impl/sftp/d;->b:Lcom/jcraft/jsch/ChannelSftp;

    const/16 v3, 0x7530

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/ChannelSftp;->b(I)V

    sget-object v1, Lcom/estrongs/android/util/e;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "detectedEncoding"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v1, "detectedEncoding"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iget-object v1, v2, Lcom/estrongs/old/fs/impl/sftp/d;->b:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->j(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v1, v2

    :cond_1
    :goto_4
    return-object v1

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    :goto_5
    if-eqz v3, :cond_2

    iget-object v1, v3, Lcom/estrongs/old/fs/impl/sftp/d;->a:Lcom/jcraft/jsch/Session;

    if-eqz v1, :cond_2

    iget-object v1, v3, Lcom/estrongs/old/fs/impl/sftp/d;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->b()V

    :cond_2
    instance-of v1, v0, Lcom/jcraft/jsch/JSchException;

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "username must not be null."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v0, Lcom/estrongs/android/exception/GeneralException;

    sget-object v1, Lcom/estrongs/android/exception/GeneralException$ERROR_CODE;->ERROR_AUTHORIZATION:Lcom/estrongs/android/exception/GeneralException$ERROR_CODE;

    invoke-direct {v0, v1}, Lcom/estrongs/android/exception/GeneralException;-><init>(Lcom/estrongs/android/exception/GeneralException$ERROR_CODE;)V

    throw v0

    :cond_3
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_4
    monitor-enter v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/old/fs/impl/sftp/d;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    iget-object v5, v1, Lcom/estrongs/old/fs/impl/sftp/d;->b:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v5}, Lcom/jcraft/jsch/ChannelSftp;->i()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v2, v1, Lcom/estrongs/old/fs/impl/sftp/d;->b:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v2, v4}, Lcom/jcraft/jsch/ChannelSftp;->j(Ljava/lang/String;)V

    sget-object v2, Lcom/estrongs/android/util/e;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "detectedEncoding"

    invoke-virtual {v0, v2}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/estrongs/old/fs/impl/sftp/d;->b:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v2}, Lcom/jcraft/jsch/ChannelSftp;->q()Ljava/lang/String;

    move-result-object v2

    const-string v3, "detectedEncoding"

    invoke-virtual {v0, v3}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/estrongs/old/fs/impl/sftp/d;->b:Lcom/jcraft/jsch/ChannelSftp;

    const-string v3, "detectedEncoding"

    invoke-virtual {v0, v3}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/ChannelSftp;->j(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception v0

    move-object v3, v1

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    move-object v1, v3

    :goto_6
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v0

    :cond_5
    iget-object v5, v1, Lcom/estrongs/old/fs/impl/sftp/d;->b:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v5}, Lcom/jcraft/jsch/ChannelSftp;->h()V

    iget-object v5, v1, Lcom/estrongs/old/fs/impl/sftp/d;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Session;->b()V

    const/4 v5, 0x0

    iput-object v5, v1, Lcom/estrongs/old/fs/impl/sftp/d;->b:Lcom/jcraft/jsch/ChannelSftp;

    const/4 v5, 0x0

    iput-object v5, v1, Lcom/estrongs/old/fs/impl/sftp/d;->a:Lcom/jcraft/jsch/Session;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_2

    :cond_6
    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    move-object v3, v2

    goto/16 :goto_5

    :catchall_2
    move-exception v0

    goto :goto_6

    :cond_7
    move-object v0, v4

    goto/16 :goto_3

    :cond_8
    move-object v2, v0

    goto/16 :goto_0
.end method

.method private a(Lcom/estrongs/old/fs/impl/sftp/d;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/estrongs/old/fs/impl/sftp/d;->b:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v0}, Lcom/jcraft/jsch/ChannelSftp;->h()V

    iget-object v0, p1, Lcom/estrongs/old/fs/impl/sftp/d;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->b()V

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/old/fs/impl/sftp/d;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/old/fs/impl/sftp/d;)V

    return-void
.end method

.method private a(Lcom/estrongs/old/fs/impl/sftp/d;Ljava/lang/String;)Z
    .locals 12

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v3

    :try_start_0
    iget-object v0, p1, Lcom/estrongs/old/fs/impl/sftp/d;->b:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/ChannelSftp;->b(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/estrongs/old/fs/impl/sftp/d;->b:Lcom/jcraft/jsch/ChannelSftp;

    const-string v4, "."

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/ChannelSftp;->d(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    if-eqz v4, :cond_2

    iget-object v0, p1, Lcom/estrongs/old/fs/impl/sftp/d;->b:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/ChannelSftp;->g(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sftp://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {v3, v0, v1}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    :cond_2
    move v0, v2

    :goto_0
    return v0

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/estrongs/a/a;->taskStopped()Z

    move-result v6

    if-eqz v6, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    check-cast v0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;

    invoke-virtual {v0}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->b()Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v0

    if-eqz v6, :cond_5

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    :cond_5
    const-string v7, ".."

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/jcraft/jsch/SftpATTRS;->d()Z

    move-result v7

    if-eqz v7, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->a(Lcom/estrongs/old/fs/impl/sftp/d;Ljava/lang/String;)Z

    move-result v0

    :goto_1
    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v7, p1, Lcom/estrongs/old/fs/impl/sftp/d;->b:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v7, v6}, Lcom/jcraft/jsch/ChannelSftp;->f(Ljava/lang/String;)V

    if-eqz v3, :cond_7

    const/4 v7, 0x2

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v0}, Lcom/jcraft/jsch/SftpATTRS;->g()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v8, v9

    const/4 v0, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "sftp://"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v0

    invoke-virtual {v3, v7, v8}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v0, 0x1

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "sftp://"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v8

    invoke-virtual {v3, v0, v7}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    move v0, v2

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static b()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->c:Z

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/old/fs/impl/sftp/d;)V
    .locals 5

    sget-object v2, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->d:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    sget-boolean v0, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->c:Z

    if-eqz v0, :cond_0

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->d:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "@"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "@"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->d:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public static c()Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;
    .locals 1

    sget-object v0, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->e:Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;

    invoke-direct {v0}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;-><init>()V

    sput-object v0, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->e:Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;

    :cond_0
    sget-object v0, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->e:Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;

    return-object v0
.end method

.method private static n(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;J)Ljava/io/InputStream;
    .locals 8

    const/4 v0, 0x0

    const-string v1, "22"

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v5, "22"

    :cond_0
    invoke-direct {p0, v3, v1, v4, v5}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/old/fs/impl/sftp/d;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lcom/estrongs/old/fs/impl/sftp/d;->b:Lcom/jcraft/jsch/ChannelSftp;

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6, p2, p3}, Lcom/jcraft/jsch/ChannelSftp;->a(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;J)Ljava/io/InputStream;

    move-result-object v1

    new-instance v0, Lcom/estrongs/old/fs/impl/sftp/b;

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/old/fs/impl/sftp/b;-><init>(Ljava/io/InputStream;Lcom/estrongs/old/fs/impl/sftp/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Ljava/lang/String;Lcom/estrongs/fs/i;)Ljava/util/List;
    .locals 16
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

    const/4 v3, 0x0

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    const-string v1, "22"

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/estrongs/a/a;->taskStopped()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/util/ap;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/util/ap;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/util/ap;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/util/ap;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_12

    const-string v1, "22"

    move-object v8, v1

    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4, v11, v8}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/old/fs/impl/sftp/d;
    :try_end_0
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-nez v3, :cond_2

    if-eqz v3, :cond_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/util/ap;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v1, v3, Lcom/estrongs/old/fs/impl/sftp/d;->b:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v1, v12}, Lcom/jcraft/jsch/ChannelSftp;->b(Ljava/lang/String;)V

    iget-object v1, v3, Lcom/estrongs/old/fs/impl/sftp/d;->b:Lcom/jcraft/jsch/ChannelSftp;

    const-string v4, "."

    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/ChannelSftp;->d(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v5

    const-string v4, "UTF-8"

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->a:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/util/ap;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/util/TypedMap;

    if-eqz v1, :cond_3

    const-string v6, "encode"

    invoke-virtual {v1, v6, v4}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_3
    sget-object v6, Lcom/estrongs/android/util/e;->a:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "UTF-8"

    iget-object v6, v3, Lcom/estrongs/old/fs/impl/sftp/d;->b:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v6}, Lcom/jcraft/jsch/ChannelSftp;->q()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "detectedEncoding"

    iget-object v6, v3, Lcom/estrongs/old/fs/impl/sftp/d;->b:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v6}, Lcom/jcraft/jsch/ChannelSftp;->q()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    :cond_4
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object/from16 v4, p1

    :cond_5
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_8

    :cond_6
    if-eqz v3, :cond_7

    invoke-static {v10, v11, v8, v3}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/old/fs/impl/sftp/d;)V

    :cond_7
    move-object v1, v2

    goto/16 :goto_0

    :cond_8
    :try_start_2
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v9, :cond_a

    invoke-virtual {v9}, Lcom/estrongs/a/a;->taskStopped()Z

    move-result v5

    if-eqz v5, :cond_a

    if-eqz v3, :cond_9

    :cond_9
    move-object v1, v2

    goto/16 :goto_0

    :cond_a
    if-eqz v1, :cond_5

    check-cast v1, Lcom/jcraft/jsch/ChannelSftp$LsEntry;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    :goto_3
    invoke-virtual {v1}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, ".."

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    move-object v4, v7

    goto :goto_2

    :cond_b
    invoke-virtual {v1}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->b()Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/jcraft/jsch/SftpATTRS;->e()Z
    :try_end_2
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    if-eqz v6, :cond_10

    :try_start_3
    const-string v6, "/"

    invoke-virtual {v12, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_4
    iget-object v14, v3, Lcom/estrongs/old/fs/impl/sftp/d;->b:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v14, v6}, Lcom/jcraft/jsch/ChannelSftp;->i(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v1

    iget-object v14, v3, Lcom/estrongs/old/fs/impl/sftp/d;->b:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v14, v6}, Lcom/jcraft/jsch/ChannelSftp;->e(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    move-object v6, v1

    :goto_5
    :try_start_4
    invoke-virtual {v6}, Lcom/jcraft/jsch/SftpATTRS;->d()Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "/"

    invoke-virtual {v4, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_6
    new-instance v4, Lcom/estrongs/old/fs/impl/sftp/e;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v6, v1, v5}, Lcom/estrongs/old/fs/impl/sftp/e;-><init>(Lcom/jcraft/jsch/SftpATTRS;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_c

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/estrongs/fs/i;->a(Lcom/estrongs/fs/h;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_c
    move-object v4, v7

    goto/16 :goto_2

    :cond_d
    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "/"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v6

    goto :goto_4

    :catch_0
    move-exception v6

    move-object v6, v1

    goto :goto_5

    :catch_1
    move-exception v1

    move-object v2, v3

    :goto_7
    :try_start_6
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->a(Lcom/estrongs/old/fs/impl/sftp/d;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v3, 0x0

    :try_start_7
    new-instance v2, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v2, v1}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v1

    :goto_8
    if-eqz v3, :cond_e

    :cond_e
    throw v1

    :catchall_1
    move-exception v1

    move-object v3, v2

    goto :goto_8

    :catch_2
    move-exception v1

    move-object v2, v3

    goto :goto_7

    :cond_f
    move-object v1, v4

    goto :goto_6

    :cond_10
    move-object v6, v1

    goto :goto_5

    :cond_11
    move-object v7, v4

    goto/16 :goto_3

    :cond_12
    move-object v8, v1

    goto/16 :goto_1
.end method

.method public a()V
    .locals 6

    sget-object v3, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->d:Ljava/util/HashMap;

    monitor-enter v3

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->c:Z

    sget-object v0, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v3

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/old/fs/impl/sftp/d;

    if-eqz v1, :cond_3

    iget-object v5, v1, Lcom/estrongs/old/fs/impl/sftp/d;->b:Lcom/jcraft/jsch/ChannelSftp;

    if-eqz v5, :cond_3

    iget-object v5, v1, Lcom/estrongs/old/fs/impl/sftp/d;->a:Lcom/jcraft/jsch/Session;

    if-eqz v5, :cond_3

    iget-object v5, v1, Lcom/estrongs/old/fs/impl/sftp/d;->b:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v5}, Lcom/jcraft/jsch/ChannelSftp;->h()V

    iget-object v1, v1, Lcom/estrongs/old/fs/impl/sftp/d;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public a(Lcom/estrongs/android/util/TypedMap;)V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->a:Ljava/util/HashMap;

    const-string v1, "server"

    invoke-virtual {p1, v1}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->i(Ljava/lang/String;)Ljava/lang/String;

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
    const-string v0, "server"

    invoke-virtual {p1, v0}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->a:Ljava/util/HashMap;

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "privatekey"

    invoke-virtual {p1, v0}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "privatekey_passphrases"

    invoke-virtual {p1, v0}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_1

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->g:Lcom/estrongs/android/util/TypedMap;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/TypedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    sget-object v1, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->b:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/JSch;->b(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->g:Lcom/estrongs/android/util/TypedMap;

    const-string v5, ""

    invoke-virtual {v4, v1, v5}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_4
    if-eqz v0, :cond_5

    sget-object v4, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->b:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v4, v0}, Lcom/jcraft/jsch/JSch;->b(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->b:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/JSch;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->g:Lcom/estrongs/android/util/TypedMap;

    invoke-virtual {v0, v1, v3}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    sget-object v0, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->b:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0, v2, v3}, Lcom/jcraft/jsch/JSch;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->g:Lcom/estrongs/android/util/TypedMap;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/TypedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->b:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/JSch;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/estrongs/fs/h;)V
    .locals 12

    const/4 v2, 0x0

    const-string v0, "22"

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "22"

    :cond_0
    invoke-direct {p0, v3, v1, v4, v0}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/old/fs/impl/sftp/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_2

    if-eqz v1, :cond_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_1
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/estrongs/old/fs/impl/sftp/d;->b:Lcom/jcraft/jsch/ChannelSftp;

    invoke-interface {p2}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-int v7, v8

    invoke-virtual {v6, v5, v7}, Lcom/jcraft/jsch/ChannelSftp;->a(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_1

    invoke-static {v3, v4, v0, v1}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/old/fs/impl/sftp/d;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_2
    invoke-direct {p0, v1}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->a(Lcom/estrongs/old/fs/impl/sftp/d;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v2, :cond_3

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v0, 0x0

    const-string v1, "22"

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    const-string v1, "22"

    move-object v3, v1

    :goto_0
    invoke-direct {p0, v4, v5, v6, v3}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/old/fs/impl/sftp/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz v1, :cond_0

    :cond_0
    :goto_1
    return v0

    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v5, v1, Lcom/estrongs/old/fs/impl/sftp/d;->b:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v5, v0}, Lcom/jcraft/jsch/ChannelSftp;->h(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    if-eqz v1, :cond_3

    invoke-static {v4, v6, v3, v1}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/old/fs/impl/sftp/d;)V

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    :try_start_2
    iget-object v5, v1, Lcom/estrongs/old/fs/impl/sftp/d;->b:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v5, v0}, Lcom/jcraft/jsch/ChannelSftp;->c(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_3
    :try_start_3
    invoke-direct {p0, v1}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->a(Lcom/estrongs/old/fs/impl/sftp/d;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_5

    :cond_5
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :cond_6
    move-object v3, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v2, 0x0

    const-string v0, "22"

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "22"

    :cond_0
    invoke-direct {p0, v3, v1, v4, v0}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/old/fs/impl/sftp/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_2

    if-eqz v1, :cond_1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    :try_start_1
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/estrongs/old/fs/impl/sftp/d;->b:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v7, v5, v6}, Lcom/jcraft/jsch/ChannelSftp;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_3

    invoke-static {v3, v4, v0, v1}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/old/fs/impl/sftp/d;)V

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_2
    invoke-direct {p0, v1}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->a(Lcom/estrongs/old/fs/impl/sftp/d;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v2, :cond_4

    :cond_4
    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->g(Ljava/lang/String;)Lcom/estrongs/fs/c;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 14

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v5

    const-string v1, "22"

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    const-string v1, "22"

    move-object v4, v1

    :goto_0
    invoke-direct {p0, v6, v7, v8, v4}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/old/fs/impl/sftp/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz v1, :cond_0

    :cond_0
    :goto_1
    return v0

    :cond_1
    if-eqz v5, :cond_2

    :try_start_1
    invoke-virtual {v5}, Lcom/estrongs/a/a;->taskStopped()Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v7, v1, Lcom/estrongs/old/fs/impl/sftp/d;->b:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v7, v0}, Lcom/jcraft/jsch/ChannelSftp;->i(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jcraft/jsch/SftpATTRS;->d()Z

    move-result v9

    if-nez v9, :cond_4

    if-eqz v5, :cond_3

    const/4 v9, 0x1

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-wide/16 v12, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "sftp://"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v5, v9, v10}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v9, 0x2

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v7}, Lcom/jcraft/jsch/SftpATTRS;->g()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v10, v11

    const/4 v7, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "sftp://"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-virtual {v5, v9, v10}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    :cond_3
    iget-object v5, v1, Lcom/estrongs/old/fs/impl/sftp/d;->b:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v5, v0}, Lcom/jcraft/jsch/ChannelSftp;->f(Ljava/lang/String;)V

    move v0, v3

    :goto_2
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->n(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    invoke-static {v6, v8, v4, v1}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/old/fs/impl/sftp/d;)V

    goto :goto_1

    :cond_4
    :try_start_2
    invoke-direct {p0, v1, v0}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->a(Lcom/estrongs/old/fs/impl/sftp/d;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_3
    :try_start_3
    invoke-direct {p0, v1}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->a(Lcom/estrongs/old/fs/impl/sftp/d;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_5

    :cond_5
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_6
    move-object v4, v1

    goto/16 :goto_0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 7

    const/4 v2, 0x0

    const-string v0, "22"

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "22"

    :cond_0
    invoke-direct {p0, v3, v1, v4, v0}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/old/fs/impl/sftp/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_2

    if-eqz v1, :cond_1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    :try_start_1
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/estrongs/old/fs/impl/sftp/d;->b:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v6, v5}, Lcom/jcraft/jsch/ChannelSftp;->h(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_3

    invoke-static {v3, v4, v0, v1}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/old/fs/impl/sftp/d;)V

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_2
    invoke-direct {p0, v1}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->a(Lcom/estrongs/old/fs/impl/sftp/d;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v2, :cond_4

    :cond_4
    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public e(Ljava/lang/String;)J
    .locals 2

    invoke-virtual {p0, p1}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->g(Ljava/lang/String;)Lcom/estrongs/fs/c;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, v0, Lcom/estrongs/fs/c;->e:J

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->g(Ljava/lang/String;)Lcom/estrongs/fs/c;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, v0, Lcom/estrongs/fs/c;->d:Z

    goto :goto_0
.end method

.method public g(Ljava/lang/String;)Lcom/estrongs/fs/c;
    .locals 14

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v0, 0x0

    const-string v2, "22"

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->A(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    :try_start_1
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    :try_start_2
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "22"

    :cond_0
    invoke-direct {p0, v4, v1, v3, v2}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/old/fs/impl/sftp/d;
    :try_end_2
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    if-nez v5, :cond_2

    if-eqz v5, :cond_1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    :try_start_3
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v8, v5, Lcom/estrongs/old/fs/impl/sftp/d;->b:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v8, v1}, Lcom/jcraft/jsch/ChannelSftp;->i(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v9

    new-instance v1, Lcom/estrongs/fs/c;

    invoke-direct {v1, p1}, Lcom/estrongs/fs/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/jcraft/jsch/SftpATTRS;->d()Z

    move-result v8

    iput-boolean v8, v1, Lcom/estrongs/fs/c;->d:Z

    iget-boolean v8, v1, Lcom/estrongs/fs/c;->d:Z

    if-nez v8, :cond_3

    const-string v8, "File"

    iput-object v8, v1, Lcom/estrongs/fs/c;->c:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/jcraft/jsch/SftpATTRS;->g()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/estrongs/fs/c;->e:J

    :cond_3
    invoke-virtual {v9}, Lcom/jcraft/jsch/SftpATTRS;->l()I

    move-result v8

    int-to-long v10, v8

    iput-wide v10, v1, Lcom/estrongs/fs/c;->j:J

    iget-wide v10, v1, Lcom/estrongs/fs/c;->j:J

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    iput-wide v10, v1, Lcom/estrongs/fs/c;->j:J

    const-wide/16 v10, 0x0

    iput-wide v10, v1, Lcom/estrongs/fs/c;->h:J

    invoke-virtual {v9}, Lcom/jcraft/jsch/SftpATTRS;->j()I

    move-result v8

    and-int/lit16 v8, v8, 0x100

    if-eqz v8, :cond_6

    move v8, v7

    :goto_1
    iput-boolean v8, v1, Lcom/estrongs/fs/c;->k:Z

    invoke-virtual {v9}, Lcom/jcraft/jsch/SftpATTRS;->j()I

    move-result v8

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_7

    move v8, v7

    :goto_2
    iput-boolean v8, v1, Lcom/estrongs/fs/c;->l:Z

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/jcraft/jsch/SftpATTRS;->a()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    :cond_4
    iput-object v8, v1, Lcom/estrongs/fs/c;->p:Ljava/lang/String;

    if-eqz v10, :cond_8

    const-string v8, "."

    invoke-virtual {v10, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    :goto_3
    iput-boolean v6, v1, Lcom/estrongs/fs/c;->m:Z
    :try_end_3
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v5, :cond_5

    invoke-static {v4, v3, v2, v5}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/old/fs/impl/sftp/d;)V

    :cond_5
    move-object v0, v1

    goto :goto_0

    :cond_6
    move v8, v6

    goto :goto_1

    :cond_7
    move v8, v6

    goto :goto_2

    :cond_8
    move v6, v7

    goto :goto_3

    :catch_0
    move-exception v1

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    :goto_4
    :try_start_4
    iget v6, v1, Lcom/jcraft/jsch/SftpException;->id:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v7, 0x2

    if-ne v6, v7, :cond_9

    if-eqz v5, :cond_1

    invoke-static {v4, v3, v2, v5}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/old/fs/impl/sftp/d;)V

    goto/16 :goto_0

    :cond_9
    :try_start_5
    invoke-direct {p0, v5}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->a(Lcom/estrongs/old/fs/impl/sftp/d;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    new-instance v2, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v2, v1}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v1

    move-object v5, v0

    move-object v0, v1

    :goto_5
    if-eqz v5, :cond_a

    :cond_a
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v1

    move-object v3, v0

    move-object v5, v0

    goto :goto_4

    :catch_2
    move-exception v1

    move-object v5, v0

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_4
.end method

.method public synthetic h(Ljava/lang/String;)Lcom/estrongs/fs/h;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->m(Ljava/lang/String;)Lcom/estrongs/old/fs/impl/sftp/e;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->a(Ljava/lang/String;J)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public j(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 6

    const-string v0, "22"

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v5, "22"

    :cond_0
    invoke-direct {p0, v3, v0, v4, v5}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/old/fs/impl/sftp/d;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lcom/estrongs/old/fs/impl/sftp/d;->b:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->c(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    new-instance v0, Lcom/estrongs/old/fs/impl/sftp/c;

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/old/fs/impl/sftp/c;-><init>(Ljava/io/OutputStream;Lcom/estrongs/old/fs/impl/sftp/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public k(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public l(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const-string v1, "22"

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "22"

    :cond_0
    invoke-direct {p0, v3, v2, v4, v1}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/old/fs/impl/sftp/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_2

    if-eqz v2, :cond_1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    :try_start_1
    iget-object v5, v2, Lcom/estrongs/old/fs/impl/sftp/d;->b:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v5}, Lcom/jcraft/jsch/ChannelSftp;->o()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-eqz v2, :cond_1

    invoke-static {v3, v4, v1, v2}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/old/fs/impl/sftp/d;)V

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v0

    :goto_1
    :try_start_2
    invoke-direct {p0, v2}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->a(Lcom/estrongs/old/fs/impl/sftp/d;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v2, Lcom/estrongs/fs/FileSystemException;

    invoke-direct {v2, v1}, Lcom/estrongs/fs/FileSystemException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    if-eqz v2, :cond_3

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public m(Ljava/lang/String;)Lcom/estrongs/old/fs/impl/sftp/e;
    .locals 10

    const/4 v0, 0x0

    const-string v1, "22"

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->A(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    :try_start_1
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    :try_start_2
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    const-string v3, "22"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    :try_start_3
    invoke-direct {p0, v5, v6, v4, v3}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/old/fs/impl/sftp/d;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v6

    if-nez v6, :cond_1

    if-eqz v6, :cond_0

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    :try_start_4
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v1, v6, Lcom/estrongs/old/fs/impl/sftp/d;->b:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v1, v7}, Lcom/jcraft/jsch/ChannelSftp;->i(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v1

    if-nez v1, :cond_2

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/jcraft/jsch/SftpATTRS;->e()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-result v8

    if-eqz v8, :cond_5

    :try_start_5
    iget-object v8, v6, Lcom/estrongs/old/fs/impl/sftp/d;->b:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v8, v7}, Lcom/jcraft/jsch/ChannelSftp;->i(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v1

    iget-object v8, v6, Lcom/estrongs/old/fs/impl/sftp/d;->b:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v8, v7}, Lcom/jcraft/jsch/ChannelSftp;->e(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-result-object v2

    move-object v7, v2

    move-object v8, v1

    :goto_2
    const/4 v2, 0x1

    :try_start_6
    new-instance v1, Lcom/estrongs/old/fs/impl/sftp/e;

    invoke-direct {v1, v8, p1, v7}, Lcom/estrongs/old/fs/impl/sftp/e;-><init>(Lcom/jcraft/jsch/SftpATTRS;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v6, :cond_3

    invoke-static {v5, v4, v3, v6}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/old/fs/impl/sftp/d;)V

    :cond_3
    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v7, v0

    move-object v8, v1

    goto :goto_2

    :catch_1
    move-exception v3

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    move-object v9, v1

    move v1, v2

    move-object v2, v9

    :goto_3
    :try_start_7
    invoke-direct {p0, v5}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->a(Lcom/estrongs/old/fs/impl/sftp/d;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-static {v4, v3, v2, v0}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/old/fs/impl/sftp/d;)V

    goto :goto_1

    :catchall_0
    move-exception v3

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    move-object v0, v3

    move-object v3, v1

    :goto_4
    if-eqz v6, :cond_4

    if-eqz v2, :cond_4

    invoke-static {v5, v4, v3, v6}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/old/fs/impl/sftp/d;)V

    :cond_4
    throw v0

    :catchall_1
    move-exception v3

    move-object v4, v0

    move-object v6, v0

    move-object v0, v3

    move-object v3, v1

    goto :goto_4

    :catchall_2
    move-exception v3

    move-object v6, v0

    move-object v0, v3

    move-object v3, v1

    goto :goto_4

    :catchall_3
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    goto :goto_4

    :catchall_4
    move-exception v0

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move v2, v1

    goto :goto_4

    :catch_2
    move-exception v3

    move-object v3, v0

    move-object v4, v5

    move-object v5, v0

    move-object v9, v1

    move v1, v2

    move-object v2, v9

    goto :goto_3

    :catch_3
    move-exception v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v0

    move-object v9, v1

    move v1, v2

    move-object v2, v9

    goto :goto_3

    :catch_4
    move-exception v1

    move v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v0

    goto :goto_3

    :catch_5
    move-exception v1

    move v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    goto :goto_3

    :cond_5
    move-object v7, v0

    move-object v8, v1

    goto :goto_2

    :cond_6
    move-object v3, v1

    goto/16 :goto_0
.end method
