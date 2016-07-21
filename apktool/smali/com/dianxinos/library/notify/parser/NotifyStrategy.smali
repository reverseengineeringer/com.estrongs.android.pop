.class public Lcom/dianxinos/library/notify/parser/NotifyStrategy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static sActiveStrategy:Lcom/dianxinos/library/notify/parser/NotifyStrategy;


# instance fields
.field enableDebug:Z

.field fetchPeroid2G:J

.field fetchPeroid3G:J

.field fetchPeroidDefault:J

.field fetchPeroidWifi:J

.field schedulePeroid:J

.field showGap:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/dianxinos/library/notify/parser/NotifyStrategy;->sActiveStrategy:Lcom/dianxinos/library/notify/parser/NotifyStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-wide/32 v2, 0x1b77400

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dianxinos/library/notify/parser/NotifyStrategy;->enableDebug:Z

    iput-wide v2, p0, Lcom/dianxinos/library/notify/parser/NotifyStrategy;->fetchPeroid2G:J

    iput-wide v2, p0, Lcom/dianxinos/library/notify/parser/NotifyStrategy;->fetchPeroid3G:J

    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/dianxinos/library/notify/parser/NotifyStrategy;->fetchPeroidWifi:J

    iput-wide v2, p0, Lcom/dianxinos/library/notify/parser/NotifyStrategy;->fetchPeroidDefault:J

    sget-boolean v0, Lcom/dianxinos/library/dxbase/e;->b:Z

    if-eqz v0, :cond_0

    const-wide/32 v0, 0xea60

    :goto_0
    iput-wide v0, p0, Lcom/dianxinos/library/notify/parser/NotifyStrategy;->showGap:J

    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/dianxinos/library/notify/parser/NotifyStrategy;->schedulePeroid:J

    return-void

    :cond_0
    const-wide/32 v0, 0x2932e00

    goto :goto_0
.end method

.method public static declared-synchronized getActiveStrategy()Lcom/dianxinos/library/notify/parser/NotifyStrategy;
    .locals 2

    const-class v1, Lcom/dianxinos/library/notify/parser/NotifyStrategy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dianxinos/library/notify/parser/NotifyStrategy;->sActiveStrategy:Lcom/dianxinos/library/notify/parser/NotifyStrategy;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/dianxinos/library/notify/parser/NotifyStrategy;->loadStrategy()Lcom/dianxinos/library/notify/parser/NotifyStrategy;

    move-result-object v0

    sput-object v0, Lcom/dianxinos/library/notify/parser/NotifyStrategy;->sActiveStrategy:Lcom/dianxinos/library/notify/parser/NotifyStrategy;

    :cond_0
    sget-object v0, Lcom/dianxinos/library/notify/parser/NotifyStrategy;->sActiveStrategy:Lcom/dianxinos/library/notify/parser/NotifyStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static loadStrategy()Lcom/dianxinos/library/notify/parser/NotifyStrategy;
    .locals 2

    invoke-static {}, Lcom/dianxinos/library/notify/h/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/dianxinos/library/notify/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notify.cfg"

    invoke-static {v0, v1}, Lcom/dianxinos/library/notify/parser/NotifyStrategy;->readFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/dianxinos/library/notify/parser/d;->a(Ljava/lang/String;)Lcom/dianxinos/library/notify/parser/NotifyStrategy;

    move-result-object v0

    goto :goto_0
.end method

.method private static readFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    invoke-static {v1}, Lcom/dianxinos/library/notify/parser/NotifyStrategy;->readFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    invoke-static {v1}, Lcom/dianxinos/library/notify/j/g;->a(Ljava/io/Closeable;)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_1
    invoke-static {v1}, Lcom/dianxinos/library/notify/j/g;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_2
    invoke-static {v1}, Lcom/dianxinos/library/notify/j/g;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private static readFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x2000

    :try_start_1
    new-array v2, v2, [B

    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_1
    invoke-static {v1}, Lcom/dianxinos/library/notify/j/g;->a(Ljava/io/Closeable;)V

    :goto_2
    return-object v0

    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    invoke-static {v1}, Lcom/dianxinos/library/notify/j/g;->a(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_3
    invoke-static {v1}, Lcom/dianxinos/library/notify/j/g;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v1, v0

    goto :goto_1
.end method

.method public static declared-synchronized setActiveStrategy(Lcom/dianxinos/library/notify/parser/NotifyStrategy;)V
    .locals 2

    const-class v0, Lcom/dianxinos/library/notify/parser/NotifyStrategy;

    monitor-enter v0

    if-eqz p0, :cond_0

    :try_start_0
    sput-object p0, Lcom/dianxinos/library/notify/parser/NotifyStrategy;->sActiveStrategy:Lcom/dianxinos/library/notify/parser/NotifyStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getFetchInterval()J
    .locals 2

    iget-boolean v0, p0, Lcom/dianxinos/library/notify/parser/NotifyStrategy;->enableDebug:Z

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x2bf20

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Lcom/dianxinos/library/dxbase/k;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/dianxinos/library/notify/parser/NotifyStrategy;->fetchPeroidWifi:J

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/dianxinos/library/dxbase/k;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/dianxinos/library/notify/parser/NotifyStrategy;->fetchPeroid2G:J

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/dianxinos/library/dxbase/k;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/dianxinos/library/notify/parser/NotifyStrategy;->fetchPeroid3G:J

    goto :goto_0

    :cond_3
    iget-wide v0, p0, Lcom/dianxinos/library/notify/parser/NotifyStrategy;->fetchPeroidDefault:J

    goto :goto_0
.end method

.method public getScheduleInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/dianxinos/library/notify/parser/NotifyStrategy;->schedulePeroid:J

    return-wide v0
.end method

.method public getShowGap()J
    .locals 2

    iget-wide v0, p0, Lcom/dianxinos/library/notify/parser/NotifyStrategy;->showGap:J

    return-wide v0
.end method
