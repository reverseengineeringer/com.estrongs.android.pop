.class public Lcom/jcraft/jsch/KnownHosts;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/HostKeyRepository;


# static fields
.field private static final e:[B

.field private static final f:[B


# instance fields
.field private a:Lcom/jcraft/jsch/JSch;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Vector;

.field private d:Lcom/jcraft/jsch/MAC;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    sput-object v0, Lcom/jcraft/jsch/KnownHosts;->e:[B

    const-string v0, "\n"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KnownHosts;->f:[B

    return-void
.end method

.method constructor <init>(Lcom/jcraft/jsch/JSch;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->a:Lcom/jcraft/jsch/JSch;

    iput-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->c:Ljava/util/Vector;

    iput-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->d:Lcom/jcraft/jsch/MAC;

    iput-object p1, p0, Lcom/jcraft/jsch/KnownHosts;->a:Lcom/jcraft/jsch/JSch;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->c:Ljava/util/Vector;

    return-void
.end method

.method private a([B)I
    .locals 3

    const/16 v2, 0x8

    aget-byte v0, p1, v2

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    aget-byte v0, p1, v2

    const/16 v1, 0x72

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method static synthetic a(Lcom/jcraft/jsch/KnownHosts;)Lcom/jcraft/jsch/MAC;
    .locals 1

    invoke-direct {p0}, Lcom/jcraft/jsch/KnownHosts;->c()Lcom/jcraft/jsch/MAC;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move v0, v1

    :goto_0
    if-lt v0, v3, :cond_2

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    sub-int v0, v3, v0

    if-ne v0, v2, :cond_1

    if-ne v2, v3, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_2
    return-object p1

    :cond_2
    const/16 v4, 0x2c

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    add-int/lit8 v0, v4, 0x1

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    sub-int v0, v3, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private declared-synchronized c()Lcom/jcraft/jsch/MAC;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->d:Lcom/jcraft/jsch/MAC;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "hmac-sha1"

    invoke-static {v0}, Lcom/jcraft/jsch/JSch;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/MAC;

    iput-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->d:Lcom/jcraft/jsch/MAC;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->d:Lcom/jcraft/jsch/MAC;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hmacsha1: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/jcraft/jsch/HostKey;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/jcraft/jsch/HostKey;-><init>(Ljava/lang/String;I[B)V

    iget-object v1, p0, Lcom/jcraft/jsch/KnownHosts;->c:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;[B)I
    .locals 8

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0, p2}, Lcom/jcraft/jsch/KnownHosts;->a([B)I

    move-result v5

    iget-object v6, p0, Lcom/jcraft/jsch/KnownHosts;->c:Ljava/util/Vector;

    monitor-enter v6

    move v4, v3

    move v1, v2

    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v4, v0, :cond_2

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_0

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "]:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v2, :cond_0

    const-string v0, "]:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/jcraft/jsch/KnownHosts;->a(Ljava/lang/String;[B)I

    move-result v1

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->c:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/HostKey;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/HostKey;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget v7, v0, Lcom/jcraft/jsch/HostKey;->c:I

    if-ne v7, v5, :cond_4

    iget-object v0, v0, Lcom/jcraft/jsch/HostKey;->d:[B

    invoke-static {v0, p2}, Lcom/jcraft/jsch/Util;->b([B[B)Z

    move-result v0

    if-eqz v0, :cond_3

    monitor-exit v6

    move v1, v3

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    :goto_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/jcraft/jsch/HostKey;Lcom/jcraft/jsch/UserInfo;)V
    .locals 6

    const/4 v1, 0x0

    iget v0, p1, Lcom/jcraft/jsch/HostKey;->c:I

    invoke-virtual {p1}, Lcom/jcraft/jsch/HostKey;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p1, Lcom/jcraft/jsch/HostKey;->d:[B

    iget-object v4, p0, Lcom/jcraft/jsch/KnownHosts;->c:Ljava/util/Vector;

    monitor-enter v4

    move v2, v1

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v2, v0, :cond_3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/KnownHosts;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    new-instance v3, Ljava/io/File;

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz p2, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " does not exist.\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "Are you sure you want to create it?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/jcraft/jsch/UserInfo;->a(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "The parent directory "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " does not exist.\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "Are you sure you want to create it?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/jcraft/jsch/UserInfo;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " has not been created."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/jcraft/jsch/UserInfo;->d(Ljava/lang/String;)V

    move v0, v1

    :cond_0
    :goto_1
    if-nez v3, :cond_1

    move v0, v1

    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/KnownHosts;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_3
    return-void

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->c:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/HostKey;

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/HostKey;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget v0, v0, Lcom/jcraft/jsch/HostKey;->c:I

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has been succesfully created.\nPlease check its access permission."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/jcraft/jsch/UserInfo;->d(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sync known_hosts: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method a(Ljava/io/InputStream;)V
    .locals 10

    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [B

    :goto_0
    const/4 v5, 0x0

    move-object v7, v0

    :cond_0
    :goto_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    if-nez v5, :cond_2

    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    return-void

    :cond_1
    const/16 v0, 0xd

    if-eq v1, v0, :cond_0

    const/16 v0, 0xa

    if-ne v1, v0, :cond_4

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-lt v0, v5, :cond_6

    :cond_3
    if-lt v0, v5, :cond_9

    const/4 v0, 0x0

    :try_start_2
    invoke-static {v7, v0, v5}, Lcom/jcraft/jsch/Util;->c([BII)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/KnownHosts;->c(Ljava/lang/String;)V

    move-object v0, v7

    goto :goto_0

    :cond_4
    array-length v0, v7

    if-gt v0, v5, :cond_5

    const/16 v0, 0x2800

    if-gt v5, v0, :cond_2

    array-length v0, v7

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    array-length v4, v7

    invoke-static {v7, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v7, v0

    :cond_5
    add-int/lit8 v0, v5, 0x1

    int-to-byte v1, v1

    aput-byte v1, v7, v5

    move v5, v0

    goto :goto_1

    :cond_6
    aget-byte v1, v7, v0

    const/16 v2, 0x20

    if-eq v1, v2, :cond_7

    const/16 v2, 0x9

    if-ne v1, v2, :cond_8

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    const/16 v2, 0x23

    if-ne v1, v2, :cond_3

    const/4 v0, 0x0

    invoke-static {v7, v0, v5}, Lcom/jcraft/jsch/Util;->c([BII)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/KnownHosts;->c(Ljava/lang/String;)V

    move-object v0, v7

    goto :goto_0

    :cond_9
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    :goto_3
    if-lt v0, v5, :cond_c

    move v1, v0

    :cond_a
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    if-ge v1, v5, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_f

    :cond_b
    const/4 v0, 0x0

    invoke-static {v7, v0, v5}, Lcom/jcraft/jsch/Util;->c([BII)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/KnownHosts;->c(Ljava/lang/String;)V

    move-object v0, v7

    goto :goto_0

    :cond_c
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v7, v0

    const/16 v2, 0x20

    if-eq v0, v2, :cond_a

    const/16 v2, 0x9

    if-eq v0, v2, :cond_a

    int-to-char v0, v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v1

    goto :goto_3

    :cond_d
    aget-byte v0, v7, v1

    const/16 v3, 0x20

    if-eq v0, v3, :cond_e

    const/16 v3, 0x9

    if-ne v0, v3, :cond_10

    :cond_e
    add-int/lit8 v1, v1, 0x1

    :cond_f
    if-lt v1, v5, :cond_d

    :cond_10
    const-string v0, ""

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x40

    if-ne v3, v4, :cond_2d

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    move v0, v1

    :goto_4
    if-lt v0, v5, :cond_13

    move v1, v0

    :cond_11
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    if-ge v1, v5, :cond_12

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_16

    :cond_12
    const/4 v0, 0x0

    invoke-static {v7, v0, v5}, Lcom/jcraft/jsch/Util;->c([BII)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/KnownHosts;->c(Ljava/lang/String;)V

    move-object v0, v7

    goto/16 :goto_0

    :cond_13
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v7, v0

    const/16 v3, 0x20

    if-eq v0, v3, :cond_11

    const/16 v3, 0x9

    if-eq v0, v3, :cond_11

    int-to-char v0, v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v1

    goto :goto_4

    :cond_14
    aget-byte v0, v7, v1

    const/16 v4, 0x20

    if-eq v0, v4, :cond_15

    const/16 v4, 0x9

    if-ne v0, v4, :cond_17

    :cond_15
    add-int/lit8 v1, v1, 0x1

    :cond_16
    if-lt v1, v5, :cond_14

    :cond_17
    :goto_5
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v4, -0x1

    :goto_6
    if-lt v1, v5, :cond_19

    move v0, v1

    :cond_18
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "ssh-dss"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v4, 0x1

    :goto_7
    if-lt v0, v5, :cond_1e

    const/4 v0, 0x0

    invoke-static {v7, v0, v5}, Lcom/jcraft/jsch/Util;->c([BII)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/KnownHosts;->c(Ljava/lang/String;)V

    move-object v0, v7

    goto/16 :goto_0

    :cond_19
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v7, v1

    const/16 v6, 0x20

    if-eq v1, v6, :cond_18

    const/16 v6, 0x9

    if-eq v1, v6, :cond_18

    int-to-char v1, v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v0

    goto :goto_6

    :cond_1a
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "ssh-rsa"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v4, 0x2

    goto :goto_7

    :cond_1b
    move v0, v5

    goto :goto_7

    :cond_1c
    aget-byte v1, v7, v0

    const/16 v6, 0x20

    if-eq v1, v6, :cond_1d

    const/16 v6, 0x9

    if-ne v1, v6, :cond_1f

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    :cond_1e
    if-lt v0, v5, :cond_1c

    :cond_1f
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    move v1, v0

    :goto_8
    if-lt v1, v5, :cond_21

    move v0, v1

    :cond_20
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_25

    const/4 v0, 0x0

    invoke-static {v7, v0, v5}, Lcom/jcraft/jsch/Util;->c([BII)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/KnownHosts;->c(Ljava/lang/String;)V

    move-object v0, v7

    goto/16 :goto_0

    :cond_21
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v7, v1

    const/16 v6, 0xd

    if-ne v1, v6, :cond_22

    move v1, v0

    goto :goto_8

    :cond_22
    const/16 v6, 0xa

    if-eq v1, v6, :cond_20

    const/16 v6, 0x20

    if-eq v1, v6, :cond_20

    const/16 v6, 0x9

    if-eq v1, v6, :cond_20

    int-to-char v1, v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v0

    goto :goto_8

    :cond_23
    aget-byte v1, v7, v0

    const/16 v6, 0x20

    if-eq v1, v6, :cond_24

    const/16 v6, 0x9

    if-ne v1, v6, :cond_26

    :cond_24
    add-int/lit8 v0, v0, 0x1

    :cond_25
    if-lt v0, v5, :cond_23

    :cond_26
    const/4 v6, 0x0

    if-ge v0, v5, :cond_28

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    :goto_9
    if-lt v0, v5, :cond_29

    :cond_27
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_28
    new-instance v0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;

    invoke-static {v9}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v1, v5, v9}, Lcom/jcraft/jsch/Util;->a([BII)[B

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;-><init>(Lcom/jcraft/jsch/KnownHosts;Ljava/lang/String;Ljava/lang/String;I[BLjava/lang/String;)V

    iget-object v1, p0, Lcom/jcraft/jsch/KnownHosts;->c:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move-object v0, v7

    goto/16 :goto_0

    :cond_29
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v7, v0

    const/16 v6, 0xd

    if-ne v0, v6, :cond_2a

    move v0, v1

    goto :goto_9

    :cond_2a
    const/16 v6, 0xa

    if-eq v0, v6, :cond_27

    int-to-char v0, v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto :goto_9

    :catch_0
    move-exception v0

    :try_start_3
    instance-of v1, v0, Lcom/jcraft/jsch/JSchException;

    if-eqz v1, :cond_2b

    check-cast v0, Lcom/jcraft/jsch/JSchException;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    throw v0

    :cond_2b
    :try_start_5
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_2c

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2c
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2d
    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_5
.end method

.method a(Ljava/io/OutputStream;)V
    .locals 8

    :try_start_0
    iget-object v2, p0, Lcom/jcraft/jsch/KnownHosts;->c:Ljava/util/Vector;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    monitor-exit v2

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->c:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/HostKey;

    invoke-virtual {v0}, Lcom/jcraft/jsch/HostKey;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/jcraft/jsch/HostKey;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/jcraft/jsch/HostKey;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/jcraft/jsch/HostKey;->d()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UNKNOWN"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    sget-object v0, Lcom/jcraft/jsch/KnownHosts;->f:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    sget-object v3, Lcom/jcraft/jsch/KnownHosts;->e:[B

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    :cond_2
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    sget-object v3, Lcom/jcraft/jsch/KnownHosts;->e:[B

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    sget-object v3, Lcom/jcraft/jsch/KnownHosts;->e:[B

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/HostKey;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    if-eqz v6, :cond_3

    sget-object v0, Lcom/jcraft/jsch/KnownHosts;->e:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_3
    sget-object v0, Lcom/jcraft/jsch/KnownHosts;->f:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method a(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iput-object p1, p0, Lcom/jcraft/jsch/KnownHosts;->b:Ljava/lang/String;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/KnownHosts;->a(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 6

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/jcraft/jsch/KnownHosts;->c:Ljava/util/Vector;

    monitor-enter v4

    move v3, v1

    move v2, v1

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/KnownHosts;->c:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v3, v1, :cond_1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/KnownHosts;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/jcraft/jsch/KnownHosts;->c:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jcraft/jsch/HostKey;

    if-eqz p1, :cond_2

    invoke-virtual {v1, p1}, Lcom/jcraft/jsch/HostKey;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz p2, :cond_2

    invoke-virtual {v1}, Lcom/jcraft/jsch/HostKey;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz p3, :cond_2

    iget-object v5, v1, Lcom/jcraft/jsch/HostKey;->d:[B

    invoke-static {p3, v5}, Lcom/jcraft/jsch/Util;->b([B[B)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_2
    invoke-virtual {v1}, Lcom/jcraft/jsch/HostKey;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    instance-of v2, v1, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;

    if-eqz v2, :cond_4

    move-object v0, v1

    check-cast v0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->f()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/jcraft/jsch/KnownHosts;->c:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    :goto_2
    const/4 v1, 0x1

    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_0

    :cond_4
    invoke-direct {p0, v5, p1}, Lcom/jcraft/jsch/KnownHosts;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/jcraft/jsch/HostKey;->b:Ljava/lang/String;

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_3
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)[Lcom/jcraft/jsch/HostKey;
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/jcraft/jsch/KnownHosts;->c:Ljava/util/Vector;

    monitor-enter v3

    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Lcom/jcraft/jsch/HostKey;

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_4

    if-eqz p1, :cond_5

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "]:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v7, :cond_5

    const/4 v0, 0x1

    const-string v2, "]:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/jcraft/jsch/KnownHosts;->a(Ljava/lang/String;Ljava/lang/String;)[Lcom/jcraft/jsch/HostKey;

    move-result-object v2

    array-length v0, v2

    if-lez v0, :cond_5

    array-length v0, v1

    array-length v4, v2

    add-int/2addr v0, v4

    new-array v0, v0, [Lcom/jcraft/jsch/HostKey;

    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v6, v1

    invoke-static {v1, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x0

    array-length v1, v1

    array-length v5, v2

    invoke-static {v2, v4, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    monitor-exit v3

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->c:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/HostKey;

    iget v5, v0, Lcom/jcraft/jsch/HostKey;->c:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    :cond_1
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/HostKey;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz p2, :cond_3

    invoke-virtual {v0}, Lcom/jcraft/jsch/HostKey;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_3
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :try_start_1
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/HostKey;

    aput-object v0, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method b(Ljava/lang/String;[B)Lcom/jcraft/jsch/HostKey;
    .locals 1

    new-instance v0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;

    invoke-direct {v0, p0, p1, p2}, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;-><init>(Lcom/jcraft/jsch/KnownHosts;Ljava/lang/String;[B)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->g()V

    return-object v0
.end method

.method protected b()V
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/KnownHosts;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected declared-synchronized b(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/KnownHosts;->a(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
