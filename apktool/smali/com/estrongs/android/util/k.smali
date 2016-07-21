.class public Lcom/estrongs/android/util/k;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/os/PowerManager;

.field private static b:Landroid/net/wifi/WifiManager;

.field private static c:Landroid/os/PowerManager$WakeLock;

.field private static d:Landroid/net/wifi/WifiManager$WifiLock;

.field private static e:Ljava/lang/Integer;

.field private static f:Ljava/lang/Integer;

.field private static g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/util/k;->a:Landroid/os/PowerManager;

    sput-object v0, Lcom/estrongs/android/util/k;->b:Landroid/net/wifi/WifiManager;

    sput-object v0, Lcom/estrongs/android/util/k;->c:Landroid/os/PowerManager$WakeLock;

    sput-object v0, Lcom/estrongs/android/util/k;->d:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/util/k;->e:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/util/k;->f:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/estrongs/android/util/k;->g:Ljava/lang/Object;

    return-void
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, v0}, Lcom/estrongs/android/util/k;->a(ZZ)V

    return-void
.end method

.method public static a(ZZ)V
    .locals 4

    const/4 v3, 0x1

    sget-object v1, Lcom/estrongs/android/util/k;->g:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Lcom/estrongs/android/util/k;->f:Ljava/lang/Integer;

    sget-object v0, Lcom/estrongs/android/util/k;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/util/k;->f:Ljava/lang/Integer;

    sget-object v0, Lcom/estrongs/android/util/k;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/estrongs/android/util/k;->c(ZZ)V

    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/estrongs/android/util/k;->e:Ljava/lang/Integer;

    sget-object v0, Lcom/estrongs/android/util/k;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/util/k;->e:Ljava/lang/Integer;

    sget-object v0, Lcom/estrongs/android/util/k;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_1

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/estrongs/android/util/k;->c(ZZ)V

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, v0}, Lcom/estrongs/android/util/k;->b(ZZ)V

    return-void
.end method

.method public static b(ZZ)V
    .locals 3

    sget-object v1, Lcom/estrongs/android/util/k;->g:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Lcom/estrongs/android/util/k;->f:Ljava/lang/Integer;

    sget-object v0, Lcom/estrongs/android/util/k;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/util/k;->f:Ljava/lang/Integer;

    sget-object v0, Lcom/estrongs/android/util/k;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/estrongs/android/util/k;->d(ZZ)V

    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/estrongs/android/util/k;->e:Ljava/lang/Integer;

    sget-object v0, Lcom/estrongs/android/util/k;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/util/k;->e:Ljava/lang/Integer;

    sget-object v0, Lcom/estrongs/android/util/k;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/estrongs/android/util/k;->d(ZZ)V

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static c(ZZ)V
    .locals 5

    const/16 v4, 0xa

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/estrongs/android/util/k;->a:Landroid/os/PowerManager;

    if-nez v0, :cond_2

    if-eqz p0, :cond_2

    const-string v0, "power"

    invoke-virtual {v3, v0}, Lcom/estrongs/android/pop/FexApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sput-object v0, Lcom/estrongs/android/util/k;->a:Landroid/os/PowerManager;

    :cond_2
    sget-object v0, Lcom/estrongs/android/util/k;->b:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    const-string v0, "wifi"

    invoke-virtual {v3, v0}, Lcom/estrongs/android/pop/FexApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    sput-object v0, Lcom/estrongs/android/util/k;->b:Landroid/net/wifi/WifiManager;

    :cond_3
    if-eqz p0, :cond_4

    sget-object v0, Lcom/estrongs/android/util/k;->c:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/estrongs/android/util/k;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_4
    move v3, v2

    :goto_1
    if-eqz p1, :cond_5

    sget-object v0, Lcom/estrongs/android/util/k;->d:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/estrongs/android/util/k;->d:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_5
    move v0, v2

    :goto_2
    if-eqz v3, :cond_6

    sget-object v2, Lcom/estrongs/android/util/k;->a:Landroid/os/PowerManager;

    if-eqz v2, :cond_6

    sget-object v2, Lcom/estrongs/android/util/k;->a:Landroid/os/PowerManager;

    const-string v3, "ES Wake Lock"

    invoke-virtual {v2, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/estrongs/android/util/k;->c:Landroid/os/PowerManager$WakeLock;

    sget-object v1, Lcom/estrongs/android/util/k;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_6
    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/util/k;->b:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v0

    if-lt v0, v4, :cond_8

    :try_start_0
    sget-object v1, Lcom/estrongs/android/util/k;->b:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x3

    const-string v3, "ES Wifi Lock"

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    sput-object v1, Lcom/estrongs/android/util/k;->d:Landroid/net/wifi/WifiManager$WifiLock;

    sget-object v1, Lcom/estrongs/android/util/k;->d:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v1, :cond_7

    sget-object v1, Lcom/estrongs/android/util/k;->b:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x1

    const-string v3, "ES Wifi Lock"

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    sput-object v1, Lcom/estrongs/android/util/k;->d:Landroid/net/wifi/WifiManager$WifiLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_7
    :goto_3
    :try_start_1
    sget-object v1, Lcom/estrongs/android/util/k;->d:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    if-lt v0, v4, :cond_0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    :try_start_2
    sget-object v0, Lcom/estrongs/android/util/k;->b:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    const-string v2, "ES Wifi Lock"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/util/k;->d:Landroid/net/wifi/WifiManager$WifiLock;

    sget-object v0, Lcom/estrongs/android/util/k;->d:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/util/k;->d:Landroid/net/wifi/WifiManager$WifiLock;

    goto/16 :goto_0

    :catch_2
    move-exception v1

    :try_start_3
    const-string v1, "Error"

    const-string v2, "change to acquire WIFI_MODE_FULL lock"

    invoke-static {v1, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/estrongs/android/util/k;->b:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x1

    const-string v3, "ES Wifi Lock"

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    sput-object v1, Lcom/estrongs/android/util/k;->d:Landroid/net/wifi/WifiManager$WifiLock;

    goto :goto_3

    :cond_8
    sget-object v1, Lcom/estrongs/android/util/k;->b:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x1

    const-string v3, "ES Wifi Lock"

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    sput-object v1, Lcom/estrongs/android/util/k;->d:Landroid/net/wifi/WifiManager$WifiLock;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :cond_9
    move v0, v1

    goto/16 :goto_2

    :cond_a
    move v3, v1

    goto/16 :goto_1
.end method

.method private static d(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    sget-object v0, Lcom/estrongs/android/util/k;->d:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/util/k;->d:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/util/k;->d:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/util/k;->d:Landroid/net/wifi/WifiManager$WifiLock;

    :cond_0
    if-eqz p0, :cond_1

    sget-object v0, Lcom/estrongs/android/util/k;->c:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/estrongs/android/util/k;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/estrongs/android/util/k;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/util/k;->c:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
