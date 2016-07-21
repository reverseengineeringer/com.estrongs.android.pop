.class public Lcom/estrongs/fs/b/aw;
.super Lcom/estrongs/a/a;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:I

.field private static c:I

.field private static d:[[Ljava/lang/String;


# instance fields
.field private e:[B

.field private f:J

.field private g:Landroid/content/Context;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/estrongs/fs/b/aw;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/fs/b/aw;->a:Ljava/lang/String;

    const/16 v0, 0x40

    sput v0, Lcom/estrongs/fs/b/aw;->b:I

    const/16 v0, 0x100

    sput v0, Lcom/estrongs/fs/b/aw;->c:I

    sget v0, Lcom/estrongs/fs/b/aw;->c:I

    sget v1, Lcom/estrongs/fs/b/aw;->b:I

    div-int/2addr v0, v1

    sget v1, Lcom/estrongs/fs/b/aw;->b:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    sput-object v0, Lcom/estrongs/fs/b/aw;->d:[[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/a/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/aw;->h:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/fs/b/aw;->canRestart:Z

    invoke-static {p1}, Lcom/estrongs/fs/b/aw;->a(Landroid/content/Context;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/b/aw;->e:[B

    iput-object p1, p0, Lcom/estrongs/fs/b/aw;->g:Landroid/content/Context;

    const v0, 0x7f0805be

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/aw;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/estrongs/a/a/p;Lcom/estrongs/a/a/l;Z)Lcom/estrongs/fs/b/aw;
    .locals 3

    new-instance v0, Lcom/estrongs/fs/b/aw;

    invoke-direct {v0, p0}, Lcom/estrongs/fs/b/aw;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/estrongs/fs/b/aw;->addTaskStatusChangeListener(Lcom/estrongs/a/a/p;)V

    invoke-virtual {v0, p2}, Lcom/estrongs/fs/b/aw;->addProgressListener(Lcom/estrongs/a/a/l;)V

    if-eqz p3, :cond_0

    new-instance v1, Lcom/estrongs/android/ui/dialog/kh;

    const v2, 0x7f0805be

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/estrongs/android/ui/dialog/kh;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/kh;->show()V

    invoke-virtual {v0}, Lcom/estrongs/fs/b/aw;->execute()V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/estrongs/fs/b/aw;->execute()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/fs/b/aw;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/b/aw;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static a([BLjava/lang/String;)V
    .locals 4

    sget-object v1, Lcom/estrongs/fs/b/aw;->d:[[Ljava/lang/String;

    monitor-enter v1

    const/4 v0, 0x3

    :try_start_0
    aget-byte v0, p0, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x3

    aget-byte v0, p0, v0

    :goto_0
    sget-object v2, Lcom/estrongs/fs/b/aw;->d:[[Ljava/lang/String;

    sget v3, Lcom/estrongs/fs/b/aw;->b:I

    div-int v3, v0, v3

    aget-object v2, v2, v3

    sget v3, Lcom/estrongs/fs/b/aw;->b:I

    rem-int/2addr v0, v3

    invoke-static {p0, p1}, Lcom/estrongs/fs/b/aw;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    monitor-exit v1

    return-void

    :cond_0
    sget v0, Lcom/estrongs/fs/b/aw;->c:I

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    add-int/2addr v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;)[B
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x3

    shr-int/lit8 v3, v2, 0x18

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    const/4 v1, 0x2

    shr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    const/4 v1, 0x1

    shr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    const/4 v1, 0x0

    shr-int/lit8 v2, v2, 0x0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "lo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "RMNET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "USB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "PPP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x9

    if-lt v1, v3, :cond_2

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v3, v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_2
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_3

    instance-of v4, v0, Ljava/net/Inet6Address;

    if-nez v4, :cond_3

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a()[[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/estrongs/fs/b/aw;->d:[[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b()I
    .locals 1

    sget v0, Lcom/estrongs/fs/b/aw;->b:I

    return v0
.end method

.method static synthetic b(Lcom/estrongs/fs/b/aw;)J
    .locals 4

    iget-wide v0, p0, Lcom/estrongs/fs/b/aw;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/estrongs/fs/b/aw;->f:J

    return-wide v0
.end method

.method private static b([BLjava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    aget-byte v0, p0, v1

    if-ltz v0, :cond_0

    aget-byte v0, p0, v1

    :goto_0
    aget-byte v1, p0, v2

    if-ltz v1, :cond_1

    aget-byte v1, p0, v2

    :goto_1
    aget-byte v2, p0, v3

    if-ltz v2, :cond_2

    aget-byte v2, p0, v3

    :goto_2
    aget-byte v3, p0, v4

    if-ltz v3, :cond_3

    aget-byte v3, p0, v4

    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget v0, Lcom/estrongs/fs/b/aw;->c:I

    aget-byte v1, p0, v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    sget v1, Lcom/estrongs/fs/b/aw;->c:I

    aget-byte v2, p0, v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_2
    sget v2, Lcom/estrongs/fs/b/aw;->c:I

    aget-byte v3, p0, v3

    add-int/2addr v2, v3

    goto :goto_2

    :cond_3
    sget v3, Lcom/estrongs/fs/b/aw;->c:I

    aget-byte v4, p0, v4

    add-int/2addr v3, v4

    goto :goto_3
.end method

.method public static b(Landroid/content/Context;)[Ljava/lang/String;
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/estrongs/fs/b/aw;->a(Landroid/content/Context;)[B

    move-result-object v3

    sget-object v7, Lcom/estrongs/fs/b/aw;->d:[[Ljava/lang/String;

    monitor-enter v7

    if-eqz v3, :cond_e

    const/4 v0, 0x0

    :try_start_0
    aget-byte v0, v3, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    aget-byte v0, v3, v0

    move v6, v0

    :goto_0
    const/4 v0, 0x1

    aget-byte v0, v3, v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    aget-byte v0, v3, v0

    move v5, v0

    :goto_1
    const/4 v0, 0x2

    aget-byte v0, v3, v0

    if-ltz v0, :cond_2

    const/4 v0, 0x2

    aget-byte v0, v3, v0

    move v4, v0

    :goto_2
    const/4 v0, 0x3

    aget-byte v0, v3, v0

    if-ltz v0, :cond_3

    const/4 v0, 0x3

    aget-byte v0, v3, v0

    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v4, v2

    :goto_4
    sget v6, Lcom/estrongs/fs/b/aw;->c:I

    if-ge v4, v6, :cond_d

    sget-object v6, Lcom/estrongs/fs/b/aw;->d:[[Ljava/lang/String;

    sget v8, Lcom/estrongs/fs/b/aw;->b:I

    div-int v8, v4, v8

    aget-object v6, v6, v8

    sget v8, Lcom/estrongs/fs/b/aw;->b:I

    rem-int v8, v4, v8

    aget-object v6, v6, v8

    if-eqz v6, :cond_4

    sget-object v6, Lcom/estrongs/fs/b/aw;->d:[[Ljava/lang/String;

    sget v8, Lcom/estrongs/fs/b/aw;->b:I

    div-int v8, v4, v8

    aget-object v6, v6, v8

    sget v8, Lcom/estrongs/fs/b/aw;->b:I

    rem-int v8, v4, v8

    aget-object v6, v6, v8

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    move-object v4, v0

    :goto_5
    if-nez v1, :cond_6

    :goto_6
    sget v0, Lcom/estrongs/fs/b/aw;->c:I

    if-ge v2, v0, :cond_5

    sget-object v0, Lcom/estrongs/fs/b/aw;->d:[[Ljava/lang/String;

    sget v1, Lcom/estrongs/fs/b/aw;->b:I

    div-int v1, v2, v1

    aget-object v0, v0, v1

    sget v1, Lcom/estrongs/fs/b/aw;->b:I

    rem-int v1, v2, v1

    const/4 v3, 0x0

    aput-object v3, v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_0
    sget v0, Lcom/estrongs/fs/b/aw;->c:I

    const/4 v4, 0x0

    aget-byte v4, v3, v4

    add-int/2addr v0, v4

    move v6, v0

    goto/16 :goto_0

    :cond_1
    sget v0, Lcom/estrongs/fs/b/aw;->c:I

    const/4 v4, 0x1

    aget-byte v4, v3, v4

    add-int/2addr v0, v4

    move v5, v0

    goto/16 :goto_1

    :cond_2
    sget v0, Lcom/estrongs/fs/b/aw;->c:I

    const/4 v4, 0x2

    aget-byte v4, v3, v4

    add-int/2addr v0, v4

    move v4, v0

    goto/16 :goto_2

    :cond_3
    sget v0, Lcom/estrongs/fs/b/aw;->c:I

    const/4 v8, 0x3

    aget-byte v8, v3, v8

    add-int/2addr v0, v8

    goto/16 :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    monitor-exit v7

    :goto_7
    return-object v0

    :cond_6
    move v3, v2

    move v0, v2

    :goto_8
    sget v1, Lcom/estrongs/fs/b/aw;->c:I

    if-ge v3, v1, :cond_9

    sget-object v1, Lcom/estrongs/fs/b/aw;->d:[[Ljava/lang/String;

    sget v5, Lcom/estrongs/fs/b/aw;->b:I

    div-int v5, v3, v5

    aget-object v1, v1, v5

    sget v5, Lcom/estrongs/fs/b/aw;->b:I

    rem-int v5, v3, v5

    aget-object v1, v1, v5

    if-eqz v1, :cond_7

    sget-object v1, Lcom/estrongs/fs/b/aw;->d:[[Ljava/lang/String;

    sget v5, Lcom/estrongs/fs/b/aw;->b:I

    div-int v5, v3, v5

    aget-object v1, v1, v5

    sget v5, Lcom/estrongs/fs/b/aw;->b:I

    rem-int v5, v3, v5

    aget-object v1, v1, v5

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_8

    sget-object v5, Lcom/estrongs/fs/b/aw;->d:[[Ljava/lang/String;

    sget v6, Lcom/estrongs/fs/b/aw;->b:I

    div-int v6, v3, v6

    aget-object v5, v5, v6

    sget v6, Lcom/estrongs/fs/b/aw;->b:I

    rem-int v6, v3, v6

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_9
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    add-int/lit8 v0, v0, 0x1

    :cond_7
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_8

    :cond_8
    sget-object v1, Lcom/estrongs/fs/b/aw;->d:[[Ljava/lang/String;

    sget v5, Lcom/estrongs/fs/b/aw;->b:I

    div-int v5, v3, v5

    aget-object v1, v1, v5

    sget v5, Lcom/estrongs/fs/b/aw;->b:I

    rem-int v5, v3, v5

    aget-object v1, v1, v5

    goto :goto_9

    :cond_9
    new-array v1, v0, [Ljava/lang/String;

    move v3, v2

    move v0, v2

    :goto_a
    sget v2, Lcom/estrongs/fs/b/aw;->c:I

    if-ge v3, v2, :cond_c

    sget-object v2, Lcom/estrongs/fs/b/aw;->d:[[Ljava/lang/String;

    sget v5, Lcom/estrongs/fs/b/aw;->b:I

    div-int v5, v3, v5

    aget-object v2, v2, v5

    sget v5, Lcom/estrongs/fs/b/aw;->b:I

    rem-int v5, v3, v5

    aget-object v2, v2, v5

    if-eqz v2, :cond_a

    sget-object v2, Lcom/estrongs/fs/b/aw;->d:[[Ljava/lang/String;

    sget v5, Lcom/estrongs/fs/b/aw;->b:I

    div-int v5, v3, v5

    aget-object v2, v2, v5

    sget v5, Lcom/estrongs/fs/b/aw;->b:I

    rem-int v5, v3, v5

    aget-object v2, v2, v5

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_b

    sget-object v5, Lcom/estrongs/fs/b/aw;->d:[[Ljava/lang/String;

    sget v6, Lcom/estrongs/fs/b/aw;->b:I

    div-int v6, v3, v6

    aget-object v5, v5, v6

    sget v6, Lcom/estrongs/fs/b/aw;->b:I

    rem-int v6, v3, v6

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_b
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    sget-object v2, Lcom/estrongs/fs/b/aw;->d:[[Ljava/lang/String;

    sget v5, Lcom/estrongs/fs/b/aw;->b:I

    div-int v5, v3, v5

    aget-object v2, v2, v5

    sget v5, Lcom/estrongs/fs/b/aw;->b:I

    rem-int v5, v3, v5

    aget-object v2, v2, v5

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    :cond_a
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_a

    :cond_b
    sget-object v2, Lcom/estrongs/fs/b/aw;->d:[[Ljava/lang/String;

    sget v5, Lcom/estrongs/fs/b/aw;->b:I

    div-int v5, v3, v5

    aget-object v2, v2, v5

    sget v5, Lcom/estrongs/fs/b/aw;->b:I

    rem-int v5, v3, v5

    aget-object v2, v2, v5

    goto :goto_b

    :cond_c
    monitor-exit v7

    move-object v0, v1

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_d
    move-object v4, v0

    move-object v1, v3

    goto/16 :goto_5

    :cond_e
    move-object v4, v1

    move-object v1, v3

    goto/16 :goto_5
.end method

.method static synthetic c(Lcom/estrongs/fs/b/aw;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/b/aw;->g:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public varargs handleMessage(I[Ljava/lang/Object;)V
    .locals 6

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/estrongs/a/a;->handleMessage(I[Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/estrongs/fs/b/aw;->processData:Lcom/estrongs/a/a/m;

    iget-wide v2, v1, Lcom/estrongs/a/a/m;->f:J

    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/estrongs/a/a/m;->f:J

    iget-object v1, p0, Lcom/estrongs/fs/b/aw;->processData:Lcom/estrongs/a/a/m;

    const/4 v0, 0x1

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/a/a/m;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/b/aw;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/aw;->onProgress(Lcom/estrongs/a/a/m;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public task()Z
    .locals 14

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/estrongs/fs/b/aw;->e:[B

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v8

    :try_start_0
    new-instance v3, Lcom/estrongs/android/pop/zeroconf/w;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    const/4 v5, 0x1

    invoke-direct {v3, v2, v5}, Lcom/estrongs/android/pop/zeroconf/w;-><init>(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v2, Lcom/estrongs/fs/b/ax;

    invoke-direct {v2, p0}, Lcom/estrongs/fs/b/ax;-><init>(Lcom/estrongs/fs/b/aw;)V

    invoke-virtual {v3, v2}, Lcom/estrongs/android/pop/zeroconf/w;->a(Lcom/estrongs/android/pop/zeroconf/v;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lcom/estrongs/android/pop/zeroconf/w;->a:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Lcom/estrongs/android/pop/zeroconf/w;->a(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move v4, v0

    :goto_1
    if-eqz v8, :cond_2

    :try_start_2
    invoke-virtual {v8}, Lcom/estrongs/a/a;->taskStopped()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/estrongs/android/pop/zeroconf/w;->b()V

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v3, v4

    :goto_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/estrongs/android/pop/zeroconf/w;->b()V

    move-object v3, v4

    move v4, v0

    goto :goto_1

    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/estrongs/fs/b/aw;->e:[B

    const/4 v5, 0x0

    aget-byte v2, v2, v5

    if-ltz v2, :cond_3

    iget-object v2, p0, Lcom/estrongs/fs/b/aw;->e:[B

    const/4 v5, 0x0

    aget-byte v2, v2, v5

    :goto_3
    iget-object v5, p0, Lcom/estrongs/fs/b/aw;->e:[B

    const/4 v6, 0x1

    aget-byte v5, v5, v6

    if-ltz v5, :cond_4

    iget-object v5, p0, Lcom/estrongs/fs/b/aw;->e:[B

    const/4 v6, 0x1

    aget-byte v5, v5, v6

    move v7, v5

    :goto_4
    iget-object v5, p0, Lcom/estrongs/fs/b/aw;->e:[B

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    if-ltz v5, :cond_5

    iget-object v5, p0, Lcom/estrongs/fs/b/aw;->e:[B

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    move v6, v5

    :goto_5
    const/4 v5, 0x2

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-wide/16 v12, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/estrongs/fs/b/aw;->g:Landroid/content/Context;

    const v12, 0x7f08038c

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v8, v5, v9}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    sget-object v5, Lcom/estrongs/fs/b/aw;->d:[[Ljava/lang/String;

    monitor-enter v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-wide/16 v10, 0x0

    :try_start_4
    iput-wide v10, p0, Lcom/estrongs/fs/b/aw;->f:J

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v5, v0

    :goto_6
    :try_start_5
    sget v9, Lcom/estrongs/fs/b/aw;->b:I

    if-ge v5, v9, :cond_7

    sget v9, Lcom/estrongs/fs/b/aw;->b:I

    mul-int/2addr v9, v4

    add-int/2addr v9, v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/estrongs/fs/b/az;

    invoke-direct {v11, p0, v10, v9}, Lcom/estrongs/fs/b/az;-><init>(Lcom/estrongs/fs/b/aw;Ljava/lang/String;I)V

    invoke-virtual {v11}, Lcom/estrongs/fs/b/az;->start()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_3
    sget v2, Lcom/estrongs/fs/b/aw;->c:I

    iget-object v5, p0, Lcom/estrongs/fs/b/aw;->e:[B

    const/4 v6, 0x0

    aget-byte v5, v5, v6

    add-int/2addr v2, v5

    goto/16 :goto_3

    :cond_4
    sget v5, Lcom/estrongs/fs/b/aw;->c:I

    iget-object v6, p0, Lcom/estrongs/fs/b/aw;->e:[B

    const/4 v7, 0x1

    aget-byte v6, v6, v7

    add-int/2addr v5, v6

    move v7, v5

    goto/16 :goto_4

    :cond_5
    sget v5, Lcom/estrongs/fs/b/aw;->c:I

    iget-object v6, p0, Lcom/estrongs/fs/b/aw;->e:[B

    const/4 v9, 0x2

    aget-byte v6, v6, v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    add-int/2addr v5, v6

    move v6, v5

    goto/16 :goto_5

    :catchall_0
    move-exception v1

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catch_1
    move-exception v1

    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/estrongs/android/pop/zeroconf/w;->b()V

    goto/16 :goto_0

    :cond_6
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const-wide/16 v6, 0x1f4

    :try_start_a
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :cond_7
    :goto_7
    :try_start_b
    sget-object v2, Lcom/estrongs/fs/b/aw;->d:[[Ljava/lang/String;

    monitor-enter v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    iget-wide v6, p0, Lcom/estrongs/fs/b/aw;->f:J

    sget v5, Lcom/estrongs/fs/b/aw;->b:I

    int-to-long v10, v5

    cmp-long v5, v6, v10

    if-nez v5, :cond_6

    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    add-int/lit8 v2, v4, 0x1

    :try_start_d
    sget v4, Lcom/estrongs/fs/b/aw;->c:I

    sget v5, Lcom/estrongs/fs/b/aw;->b:I

    div-int/2addr v4, v5
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-lt v2, v4, :cond_a

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/estrongs/android/pop/zeroconf/w;->b()V

    :cond_8
    move v0, v1

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    :try_start_e
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    throw v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :catchall_2
    move-exception v0

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/estrongs/android/pop/zeroconf/w;->b()V

    :cond_9
    throw v0

    :cond_a
    move v4, v2

    goto/16 :goto_1

    :catch_2
    move-exception v2

    goto :goto_7

    :catch_3
    move-exception v2

    goto/16 :goto_2

    :cond_b
    move v4, v0

    goto/16 :goto_1
.end method
