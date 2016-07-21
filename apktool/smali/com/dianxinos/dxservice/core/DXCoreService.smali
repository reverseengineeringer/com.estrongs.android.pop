.class public Lcom/dianxinos/dxservice/core/DXCoreService;
.super Landroid/app/Service;


# instance fields
.field final a:Landroid/os/Messenger;

.field private b:Landroid/content/Context;

.field private c:Lcom/dianxinos/dxservice/stat/e;

.field private d:Lcom/dianxinos/dxservice/stat/x;

.field private e:Lcom/dianxinos/dxservice/stat/an;

.field private f:Lcom/dianxinos/dxservice/stat/k;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/dianxinos/dxservice/core/b;

    invoke-static {}, Lcom/dianxinos/dxservice/a/e;->a()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/dianxinos/dxservice/core/b;-><init>(Lcom/dianxinos/dxservice/core/DXCoreService;Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/dianxinos/dxservice/core/DXCoreService;->a:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic a(Lcom/dianxinos/dxservice/core/DXCoreService;)Lcom/dianxinos/dxservice/stat/x;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/dxservice/core/DXCoreService;->d:Lcom/dianxinos/dxservice/stat/x;

    return-object v0
.end method

.method static synthetic b(Lcom/dianxinos/dxservice/core/DXCoreService;)Lcom/dianxinos/dxservice/stat/e;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/dxservice/core/DXCoreService;->c:Lcom/dianxinos/dxservice/stat/e;

    return-object v0
.end method

.method static synthetic c(Lcom/dianxinos/dxservice/core/DXCoreService;)Lcom/dianxinos/dxservice/stat/an;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/dxservice/core/DXCoreService;->e:Lcom/dianxinos/dxservice/stat/an;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    sget-boolean v0, Lcom/dianxinos/dxservice/a/c;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "stat.DXCoreService"

    const-string v1, "DXCoreSevice onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/dxservice/core/DXCoreService;->c:Lcom/dianxinos/dxservice/stat/e;

    invoke-virtual {v0}, Lcom/dianxinos/dxservice/stat/e;->a()V

    iget-object v0, p0, Lcom/dianxinos/dxservice/core/DXCoreService;->d:Lcom/dianxinos/dxservice/stat/x;

    invoke-virtual {v0}, Lcom/dianxinos/dxservice/stat/x;->a()V

    iget-object v0, p0, Lcom/dianxinos/dxservice/core/DXCoreService;->f:Lcom/dianxinos/dxservice/stat/k;

    invoke-virtual {v0}, Lcom/dianxinos/dxservice/stat/k;->a()V

    invoke-virtual {p0}, Lcom/dianxinos/dxservice/core/DXCoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/dxservice/a/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/dianxinos/dxservice/core/DXCoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/dxservice/stat/a;->a(Landroid/content/Context;)Lcom/dianxinos/dxservice/stat/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/dxservice/stat/a;->a()V

    :cond_1
    iget-object v0, p0, Lcom/dianxinos/dxservice/core/DXCoreService;->a:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    sget-boolean v0, Lcom/dianxinos/dxservice/a/c;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "stat.DXCoreService"

    const-string v1, "DXCoreSevice onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/dianxinos/dxservice/core/DXCoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/dxservice/core/DXCoreService;->b:Landroid/content/Context;

    new-instance v0, Lcom/dianxinos/dxservice/stat/e;

    iget-object v1, p0, Lcom/dianxinos/dxservice/core/DXCoreService;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/dianxinos/dxservice/stat/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dianxinos/dxservice/core/DXCoreService;->c:Lcom/dianxinos/dxservice/stat/e;

    new-instance v0, Lcom/dianxinos/dxservice/stat/x;

    iget-object v1, p0, Lcom/dianxinos/dxservice/core/DXCoreService;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/dianxinos/dxservice/stat/x;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dianxinos/dxservice/core/DXCoreService;->d:Lcom/dianxinos/dxservice/stat/x;

    new-instance v0, Lcom/dianxinos/dxservice/stat/k;

    iget-object v1, p0, Lcom/dianxinos/dxservice/core/DXCoreService;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/dianxinos/dxservice/stat/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dianxinos/dxservice/core/DXCoreService;->f:Lcom/dianxinos/dxservice/stat/k;

    new-instance v0, Lcom/dianxinos/dxservice/stat/an;

    iget-object v1, p0, Lcom/dianxinos/dxservice/core/DXCoreService;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/dianxinos/dxservice/stat/an;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dianxinos/dxservice/core/DXCoreService;->e:Lcom/dianxinos/dxservice/stat/an;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    sget-boolean v0, Lcom/dianxinos/dxservice/a/c;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "stat.DXCoreService"

    const-string v1, "DXCoreSevice onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/dxservice/core/DXCoreService;->d:Lcom/dianxinos/dxservice/stat/x;

    invoke-virtual {v0}, Lcom/dianxinos/dxservice/stat/x;->b()V

    iget-object v0, p0, Lcom/dianxinos/dxservice/core/DXCoreService;->c:Lcom/dianxinos/dxservice/stat/e;

    invoke-virtual {v0}, Lcom/dianxinos/dxservice/stat/e;->b()V

    iget-object v0, p0, Lcom/dianxinos/dxservice/core/DXCoreService;->f:Lcom/dianxinos/dxservice/stat/k;

    invoke-virtual {v0}, Lcom/dianxinos/dxservice/stat/k;->b()V

    return-void
.end method
