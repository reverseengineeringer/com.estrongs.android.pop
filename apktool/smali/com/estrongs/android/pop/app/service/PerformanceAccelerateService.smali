.class public Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;
.super Landroid/app/Service;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/pop/app/b/f;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Lcom/estrongs/android/pop/app/service/i;

.field private e:Landroid/content/BroadcastReceiver;

.field private f:Landroid/os/Handler;

.field private g:Lcom/estrongs/android/pop/app/service/h;

.field private h:Lcom/estrongs/android/pop/app/service/g;

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/util/y;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/estrongs/android/pop/app/service/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->d:Lcom/estrongs/android/pop/app/service/i;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;Lcom/estrongs/android/pop/app/service/a;)Lcom/estrongs/android/pop/app/service/a;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->j:Lcom/estrongs/android/pop/app/service/a;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->b:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 4

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/estrongs/android/pop/app/service/i;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/service/i;-><init>(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->d:Lcom/estrongs/android/pop/app/service/i;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->f:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->c()V

    new-instance v0, Lcom/estrongs/android/pop/app/service/h;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->f:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/pop/app/service/h;-><init>(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->g:Lcom/estrongs/android/pop/app/service/h;

    new-instance v0, Lcom/estrongs/android/pop/app/service/g;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->f:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/pop/app/service/g;-><init>(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->h:Lcom/estrongs/android/pop/app/service/g;

    sget-boolean v0, Lcom/estrongs/android/pop/z;->w:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/service/d;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/service/d;-><init>(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/FexApplication;->a(Lcom/estrongs/android/pop/g;)V

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/estrongs/android/pop/app/b/k;

    invoke-direct {v1}, Lcom/estrongs/android/pop/app/b/k;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->h:Lcom/estrongs/android/pop/app/service/g;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/app/service/g;->a(J)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Lcom/estrongs/android/pop/view/utils/v;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/pop/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/pop/view/utils/v;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->i:Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->i:Ljava/util/Map;

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->i:Ljava/util/Map;

    iget-object v2, p1, Lcom/estrongs/android/pop/view/utils/v;->e:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/y;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/util/y;

    iget-object v2, p1, Lcom/estrongs/android/pop/view/utils/v;->e:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/estrongs/android/util/y;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->i:Ljava/util/Map;

    iget-object v3, p1, Lcom/estrongs/android/pop/view/utils/v;->e:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/y;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/service/f;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/pop/app/service/f;-><init>(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;Lcom/estrongs/android/pop/view/utils/v;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/y;->a(Lcom/estrongs/android/util/ab;)V

    invoke-virtual {v0}, Lcom/estrongs/android/util/y;->c()V

    goto :goto_0
.end method

.method private a(J)Z
    .locals 9

    const/4 v0, 0x0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :try_start_0
    const-string v2, "2014-06-20"

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-string v4, "2014-07-01"

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    cmp-long v1, v6, v2

    if-ltz v1, :cond_0

    cmp-long v1, v6, v4

    if-lez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sub-long v2, v6, p1

    const-wide/32 v4, 0x66ff3000

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;J)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->a(J)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;)Lcom/estrongs/android/pop/app/service/a;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->j:Lcom/estrongs/android/pop/app/service/a;

    return-object v0
.end method

.method private b()V
    .locals 4

    invoke-static {}, Lcom/estrongs/android/pop/utils/cc;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/ad;->ar()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x19bfcc00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->aS()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/estrongs/android/pop/app/ESStatisticsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;)Lcom/estrongs/android/pop/app/service/h;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->g:Lcom/estrongs/android/pop/app/service/h;

    return-object v0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->e:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/estrongs/android/pop/app/service/e;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/service/e;-><init>(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->e:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->e:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->b()V

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;)Lcom/estrongs/android/pop/app/service/g;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->h:Lcom/estrongs/android/pop/app/service/g;

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/estrongs/android/util/ak;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->b:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 5

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/android/pop/view/utils/n;->c(Landroid/content/Context;)[Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/estrongs/android/pop/view/utils/v;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/estrongs/android/pop/view/utils/v;->c()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-direct {p0, v3}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->a(Lcom/estrongs/android/pop/view/utils/v;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/android/pop/view/utils/n;->a(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/utils/n;->c()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->h:Lcom/estrongs/android/pop/app/service/g;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/app/service/g;->a(J)V

    :cond_2
    return-void
.end method

.method static synthetic g(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->c:Z

    return v0
.end method

.method static synthetic h(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic i(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->i:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic j(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->f()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->d:Lcom/estrongs/android/pop/app/service/i;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->a()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->g:Lcom/estrongs/android/pop/app/service/h;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/service/h;->a(Ljava/util/ArrayList;)V

    :cond_0
    sget-boolean v0, Lcom/estrongs/android/pop/z;->w:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->g()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/service/c;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/service/c;-><init>(Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/FexApplication;->a(Lcom/estrongs/android/pop/g;)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->d:Lcom/estrongs/android/pop/app/service/i;

    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->b()V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->d()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->d:Lcom/estrongs/android/pop/app/service/i;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->a()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->g:Lcom/estrongs/android/pop/app/service/h;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/service/h;->a(Ljava/util/ArrayList;)V

    :cond_0
    sget-boolean v0, Lcom/estrongs/android/pop/z;->w:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->b()V

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/app/b/c;->a()Lcom/estrongs/android/pop/app/b/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/app/b/c;->a()Lcom/estrongs/android/pop/app/b/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/b/c;->a(Lcom/estrongs/android/pop/app/service/a;)V

    :cond_0
    iput-object v1, p0, Lcom/estrongs/android/pop/app/service/PerformanceAccelerateService;->j:Lcom/estrongs/android/pop/app/service/a;

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
