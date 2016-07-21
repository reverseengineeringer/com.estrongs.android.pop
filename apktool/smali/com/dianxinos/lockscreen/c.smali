.class public Lcom/dianxinos/lockscreen/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/dianxinos/lockscreen/c;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:Z

.field private e:Lcom/dianxinos/lockscreen/f;

.field private f:Z

.field private g:Lcom/dianxinos/lockscreen/h;

.field private h:Lcom/dianxinos/lockscreen/g;

.field private i:Lcom/dianxinos/lockscreen/r;

.field private j:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/dianxinos/lockscreen/c;->d:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dianxinos/lockscreen/c;->f:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/lockscreen/c;->b:Landroid/content/Context;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/dianxinos/lockscreen/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0, p1}, Lcom/dianxinos/lockscreen/c;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/c;
    .locals 3

    sget-object v0, Lcom/dianxinos/lockscreen/c;->a:Lcom/dianxinos/lockscreen/c;

    if-nez v0, :cond_1

    const-class v1, Lcom/dianxinos/lockscreen/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dianxinos/lockscreen/c;->a:Lcom/dianxinos/lockscreen/c;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lcom/dianxinos/lockscreen/c;

    invoke-direct {v2, v0}, Lcom/dianxinos/lockscreen/c;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/dianxinos/lockscreen/c;->a:Lcom/dianxinos/lockscreen/c;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/dianxinos/lockscreen/c;->a:Lcom/dianxinos/lockscreen/c;

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
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v1, :cond_2

    if-nez v2, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/dianxinos/lockscreen/c;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->g()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/dianxinos/lockscreen/c;->f:Z

    :cond_3
    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/dianxinos/lockscreen/c;->f:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/dianxinos/lockscreen/c;->f:Z

    :cond_4
    iget-object v1, p0, Lcom/dianxinos/lockscreen/c;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/dianxinos/lockscreen/c/a;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dianxinos/lockscreen/c/a;->a()Lcom/dianxinos/lockscreen/c/c;

    move-result-object v1

    if-eqz v1, :cond_5

    iget v1, v1, Lcom/dianxinos/lockscreen/c/c;->c:I

    if-nez v1, :cond_7

    :cond_5
    sget-boolean v0, Lcom/dianxinos/lockscreen/c/g;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "ChargingManager"

    const-string v1, "battery data null or is not charging, remove lockscreen"

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    sget-boolean v0, Lcom/dianxinos/lockscreen/c/g;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "ChargingManager"

    const-string v1, "Screen is on, and LockScreen want to show twice"

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/dianxinos/lockscreen/c;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/dianxinos/lockscreen/c/e;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-boolean v0, Lcom/dianxinos/lockscreen/c/g;->a:Z

    if-eqz v0, :cond_8

    const-string v0, "ChargingManager"

    const-string v1, "calling, remove lockscreen"

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/dianxinos/lockscreen/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/b;->b(Landroid/content/Context;)V

    goto :goto_1

    :cond_9
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_a
    sget-boolean v0, Lcom/dianxinos/lockscreen/c/g;->a:Z

    if-eqz v0, :cond_b

    const-string v0, "ChargingManager"

    const-string v1, "try show lockscreen"

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget-object v0, p0, Lcom/dianxinos/lockscreen/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/b;->a(Landroid/content/Context;)V

    goto :goto_1
.end method

.method private a(Lcom/dianxinos/lockscreen/c/c;)V
    .locals 8

    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/dianxinos/lockscreen/c;->d:Z

    if-eqz p1, :cond_1

    iget v0, p1, Lcom/dianxinos/lockscreen/c/c;->c:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/dianxinos/lockscreen/c;->d:Z

    iget-boolean v0, p0, Lcom/dianxinos/lockscreen/c;->d:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/dianxinos/lockscreen/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/a;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/a;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/dianxinos/lockscreen/a;->a(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v6

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/dianxinos/lockscreen/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/i;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/i;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget v1, p1, Lcom/dianxinos/lockscreen/c/c;->c:I

    iget v2, p1, Lcom/dianxinos/lockscreen/c/c;->a:I

    iget v3, p1, Lcom/dianxinos/lockscreen/c/c;->b:I

    invoke-virtual/range {v0 .. v6}, Lcom/dianxinos/lockscreen/i;->a(IIIJZ)V

    if-nez v7, :cond_0

    iget-boolean v0, p0, Lcom/dianxinos/lockscreen/c;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/a;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/a;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/dianxinos/lockscreen/a;->a(I)V

    invoke-static {}, Lcom/dianxinos/lockscreen/c/e;->a()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/dianxinos/lockscreen/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/c/e;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dianxinos/lockscreen/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/a;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ChargingManager"

    const-string v1, "start lockSreen"

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/b;->a(Landroid/content/Context;)V

    :cond_3
    iget-object v0, p0, Lcom/dianxinos/lockscreen/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->g()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/dianxinos/lockscreen/c;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dianxinos/lockscreen/c;->a(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/dianxinos/lockscreen/c;Lcom/dianxinos/lockscreen/c/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dianxinos/lockscreen/c;->a(Lcom/dianxinos/lockscreen/c/c;)V

    return-void
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/dianxinos/lockscreen/c/g;->a:Z

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "du_lockscreen_action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.du.action.private"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.du.action.public"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Do you define du_lockscreen_action meta-data in your AndroidManifest correctly?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/dianxinos/lockscreen/c/g;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "ChargingManager"

    const-string v2, "LockScreen"

    invoke-static {v1, v2, v0}, Lcom/dianxinos/lockscreen/c/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method a()Lcom/dianxinos/lockscreen/r;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/c;->i:Lcom/dianxinos/lockscreen/r;

    return-object v0
.end method

.method public a(Lcom/dianxinos/lockscreen/f;)V
    .locals 3

    iget-object v0, p0, Lcom/dianxinos/lockscreen/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "LockScreenProvider shouldn`t be null, you may need implements this interface"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-boolean v0, Lcom/dianxinos/lockscreen/c/g;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "ChargingManager"

    const-string v1, "start LockScreen now"

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/dianxinos/lockscreen/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/b/c;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/b/c;->a()V

    iput-object p1, p0, Lcom/dianxinos/lockscreen/c;->e:Lcom/dianxinos/lockscreen/f;

    iget-object v0, p0, Lcom/dianxinos/lockscreen/c;->e:Lcom/dianxinos/lockscreen/f;

    invoke-interface {v0}, Lcom/dianxinos/lockscreen/f;->b()I

    move-result v0

    sput v0, Lcom/dianxinos/lockscreen/c/f;->a:I

    iget-object v0, p0, Lcom/dianxinos/lockscreen/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/c/a;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/c/a;

    move-result-object v0

    new-instance v1, Lcom/dianxinos/lockscreen/d;

    invoke-direct {v1, p0}, Lcom/dianxinos/lockscreen/d;-><init>(Lcom/dianxinos/lockscreen/c;)V

    invoke-virtual {v0, v1}, Lcom/dianxinos/lockscreen/c/a;->a(Lcom/dianxinos/lockscreen/c/d;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/dianxinos/lockscreen/c;->b:Landroid/content/Context;

    new-instance v2, Lcom/dianxinos/lockscreen/e;

    invoke-direct {v2, p0}, Lcom/dianxinos/lockscreen/e;-><init>(Lcom/dianxinos/lockscreen/c;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/dianxinos/lockscreen/c/g;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "ChargingManager"

    const-string v2, "LockScreen"

    invoke-static {v1, v2, v0}, Lcom/dianxinos/lockscreen/c/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/dianxinos/lockscreen/g;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/lockscreen/c;->h:Lcom/dianxinos/lockscreen/g;

    return-void
.end method

.method public a(Lcom/dianxinos/lockscreen/h;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/lockscreen/c;->g:Lcom/dianxinos/lockscreen/h;

    return-void
.end method

.method public a(Lcom/dianxinos/lockscreen/r;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/lockscreen/c;->i:Lcom/dianxinos/lockscreen/r;

    return-void
.end method

.method a(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/c;->h:Lcom/dianxinos/lockscreen/g;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/c;->h:Lcom/dianxinos/lockscreen/g;

    invoke-interface {v0}, Lcom/dianxinos/lockscreen/g;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/dianxinos/lockscreen/c;->h:Lcom/dianxinos/lockscreen/g;

    invoke-interface {v0}, Lcom/dianxinos/lockscreen/g;->b()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/lockscreen/c;->j:Ljava/lang/String;

    return-void
.end method

.method b()Lcom/dianxinos/lockscreen/v;
    .locals 2

    iget-object v0, p0, Lcom/dianxinos/lockscreen/c;->e:Lcom/dianxinos/lockscreen/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/c;->e:Lcom/dianxinos/lockscreen/f;

    invoke-interface {v0}, Lcom/dianxinos/lockscreen/f;->a()Lcom/dianxinos/lockscreen/v;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/dianxinos/lockscreen/o;

    iget-object v1, p0, Lcom/dianxinos/lockscreen/c;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/dianxinos/lockscreen/o;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/c;->g:Lcom/dianxinos/lockscreen/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/c;->g:Lcom/dianxinos/lockscreen/h;

    invoke-interface {v0, p1}, Lcom/dianxinos/lockscreen/h;->a(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/a;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dianxinos/lockscreen/a;->b(Z)V

    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/a;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/a;->a()Z

    move-result v0

    return v0
.end method

.method d()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/dianxinos/lockscreen/c;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/c;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/lockscreen/c;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/lockscreen/c;->j:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/lockscreen/c;->j:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/dianxinos/lockscreen/a/c;
    .locals 2

    iget-object v0, p0, Lcom/dianxinos/lockscreen/c;->e:Lcom/dianxinos/lockscreen/f;

    invoke-interface {v0}, Lcom/dianxinos/lockscreen/f;->c()Lcom/dianxinos/lockscreen/a/c;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "real time card can`t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method public f()Lcom/dianxinos/lockscreen/a/b;
    .locals 2

    iget-object v0, p0, Lcom/dianxinos/lockscreen/c;->e:Lcom/dianxinos/lockscreen/f;

    invoke-interface {v0}, Lcom/dianxinos/lockscreen/f;->d()Lcom/dianxinos/lockscreen/a/b;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "progress card can`t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method
