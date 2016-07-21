.class public Lcom/dianxinos/lockscreen/c/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Z

.field private static b:Lcom/dianxinos/lockscreen/c/a;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dianxinos/lockscreen/c/d;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/dianxinos/lockscreen/c/c;

.field private f:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dianxinos/lockscreen/c/g;->a:Z

    sput-boolean v0, Lcom/dianxinos/lockscreen/c/a;->a:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/dianxinos/lockscreen/c/a;->b:Lcom/dianxinos/lockscreen/c/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/lockscreen/c/a;->d:Ljava/util/List;

    new-instance v0, Lcom/dianxinos/lockscreen/c/b;

    invoke-direct {v0, p0}, Lcom/dianxinos/lockscreen/c/b;-><init>(Lcom/dianxinos/lockscreen/c/a;)V

    iput-object v0, p0, Lcom/dianxinos/lockscreen/c/a;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/lockscreen/c/a;->c:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/c/a;
    .locals 2

    sget-object v0, Lcom/dianxinos/lockscreen/c/a;->b:Lcom/dianxinos/lockscreen/c/a;

    if-nez v0, :cond_1

    const-class v1, Lcom/dianxinos/lockscreen/c/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dianxinos/lockscreen/c/a;->b:Lcom/dianxinos/lockscreen/c/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/dianxinos/lockscreen/c/a;

    invoke-direct {v0, p0}, Lcom/dianxinos/lockscreen/c/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dianxinos/lockscreen/c/a;->b:Lcom/dianxinos/lockscreen/c/a;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/dianxinos/lockscreen/c/a;->b:Lcom/dianxinos/lockscreen/c/a;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dianxinos/lockscreen/c/a;->b(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/dianxinos/lockscreen/c/a;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dianxinos/lockscreen/c/a;->a(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Lcom/dianxinos/lockscreen/c/c;)V
    .locals 3

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lcom/dianxinos/lockscreen/c/a;->d:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/dianxinos/lockscreen/c/a;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/lockscreen/c/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/dianxinos/lockscreen/c/d;->a(Lcom/dianxinos/lockscreen/c/c;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x64

    new-instance v1, Lcom/dianxinos/lockscreen/c/c;

    invoke-direct {v1}, Lcom/dianxinos/lockscreen/c/c;-><init>()V

    const-string v0, "level"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/dianxinos/lockscreen/c/c;->a:I

    const-string v0, "scale"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/dianxinos/lockscreen/c/c;->b:I

    const-string v0, "plugged"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/dianxinos/lockscreen/c/c;->c:I

    const-string v0, "status"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/dianxinos/lockscreen/c/c;->d:I

    iget v0, v1, Lcom/dianxinos/lockscreen/c/c;->b:I

    if-ge v0, v2, :cond_1

    iget v0, v1, Lcom/dianxinos/lockscreen/c/c;->a:I

    :goto_0
    invoke-static {v1, v0}, Lcom/dianxinos/lockscreen/c/c;->a(Lcom/dianxinos/lockscreen/c/c;I)I

    invoke-static {v1}, Lcom/dianxinos/lockscreen/c/c;->a(Lcom/dianxinos/lockscreen/c/c;)I

    move-result v0

    if-ltz v0, :cond_2

    invoke-static {v1}, Lcom/dianxinos/lockscreen/c/c;->a(Lcom/dianxinos/lockscreen/c/c;)I

    move-result v0

    if-gt v0, v3, :cond_2

    invoke-static {v1}, Lcom/dianxinos/lockscreen/c/c;->a(Lcom/dianxinos/lockscreen/c/c;)I

    move-result v0

    iput v0, v1, Lcom/dianxinos/lockscreen/c/c;->e:I

    :cond_0
    :goto_1
    iput-object v1, p0, Lcom/dianxinos/lockscreen/c/a;->e:Lcom/dianxinos/lockscreen/c/c;

    invoke-direct {p0, v1}, Lcom/dianxinos/lockscreen/c/a;->a(Lcom/dianxinos/lockscreen/c/c;)V

    return-void

    :cond_1
    iget v0, v1, Lcom/dianxinos/lockscreen/c/c;->a:I

    mul-int/lit8 v0, v0, 0x64

    iget v2, v1, Lcom/dianxinos/lockscreen/c/c;->b:I

    div-int/2addr v0, v2

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/dianxinos/lockscreen/c/c;->a(Lcom/dianxinos/lockscreen/c/c;)I

    move-result v0

    if-gez v0, :cond_3

    iput v4, v1, Lcom/dianxinos/lockscreen/c/c;->e:I

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lcom/dianxinos/lockscreen/c/c;->a(Lcom/dianxinos/lockscreen/c/c;)I

    move-result v0

    if-le v0, v3, :cond_0

    iput v3, v1, Lcom/dianxinos/lockscreen/c/c;->e:I

    goto :goto_1
.end method

.method static synthetic b()Z
    .locals 1

    sget-boolean v0, Lcom/dianxinos/lockscreen/c/a;->a:Z

    return v0
.end method

.method private c()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dianxinos/lockscreen/c/a;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/dianxinos/lockscreen/c/a;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/dianxinos/lockscreen/c/a;->b(Landroid/content/Intent;)V

    :cond_0
    sget-boolean v0, Lcom/dianxinos/lockscreen/c/g;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "BatteryInfoTracker"

    const-string v1, "BatteryInfoTracker, service started"

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/c/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private d()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/lockscreen/c/a;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/dianxinos/lockscreen/c/a;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-boolean v0, Lcom/dianxinos/lockscreen/c/g;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "BatteryInfoTracker"

    const-string v1, "BatteryInfoTracker, service stopped"

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/c/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/dianxinos/lockscreen/c/c;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/c/a;->e:Lcom/dianxinos/lockscreen/c/c;

    return-object v0
.end method

.method public a(Lcom/dianxinos/lockscreen/c/d;)V
    .locals 2

    iget-object v1, p0, Lcom/dianxinos/lockscreen/c/a;->d:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/lockscreen/c/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/c/a;->c()V

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/lockscreen/c/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/c/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/c/a;->e:Lcom/dianxinos/lockscreen/c/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dianxinos/lockscreen/c/a;->e:Lcom/dianxinos/lockscreen/c/c;

    invoke-interface {p1, v0}, Lcom/dianxinos/lockscreen/c/d;->a(Lcom/dianxinos/lockscreen/c/c;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(Lcom/dianxinos/lockscreen/c/d;)V
    .locals 2

    iget-object v1, p0, Lcom/dianxinos/lockscreen/c/a;->d:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/lockscreen/c/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/dianxinos/lockscreen/c/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/c/a;->d()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
