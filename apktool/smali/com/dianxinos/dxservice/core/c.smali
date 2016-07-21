.class public Lcom/dianxinos/dxservice/core/c;
.super Ljava/lang/Object;


# static fields
.field private static volatile f:Lcom/dianxinos/dxservice/core/c;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:Landroid/os/Messenger;

.field private d:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/dianxinos/dxservice/stat/t;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private g:Landroid/content/ServiceConnection;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/dianxinos/dxservice/core/d;

    invoke-direct {v0, p0}, Lcom/dianxinos/dxservice/core/d;-><init>(Lcom/dianxinos/dxservice/core/c;)V

    iput-object v0, p0, Lcom/dianxinos/dxservice/core/c;->g:Landroid/content/ServiceConnection;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/dxservice/core/c;->a:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/dianxinos/dxservice/core/c;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/dxservice/core/c;->c:Landroid/os/Messenger;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/dxservice/core/c;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-boolean v1, p0, Lcom/dianxinos/dxservice/core/c;->e:Z

    invoke-virtual {p0}, Lcom/dianxinos/dxservice/core/c;->a()V

    return-void
.end method

.method static synthetic a(Lcom/dianxinos/dxservice/core/c;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/dxservice/core/c;->c:Landroid/os/Messenger;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lcom/dianxinos/dxservice/core/c;
    .locals 2

    const-class v1, Lcom/dianxinos/dxservice/core/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dianxinos/dxservice/core/c;->f:Lcom/dianxinos/dxservice/core/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/dianxinos/dxservice/core/c;

    invoke-direct {v0, p0}, Lcom/dianxinos/dxservice/core/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dianxinos/dxservice/core/c;->f:Lcom/dianxinos/dxservice/core/c;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/dianxinos/dxservice/core/c;->f:Lcom/dianxinos/dxservice/core/c;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Landroid/os/Message;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/dianxinos/dxservice/core/c;->c:Landroid/os/Messenger;

    invoke-virtual {v2, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-boolean v2, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v2, :cond_0

    const-string v2, "stat.DXServiceInterator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has RemoteException!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v2, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v2, :cond_1

    const-string v2, "stat.DXServiceInterator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has Exception!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/dianxinos/dxservice/core/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/dianxinos/dxservice/core/c;->e:Z

    return v0
.end method

.method static synthetic a(Lcom/dianxinos/dxservice/core/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/dianxinos/dxservice/core/c;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/dianxinos/dxservice/core/c;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/dxservice/core/c;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/dianxinos/dxservice/core/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/dianxinos/dxservice/core/c;->e:Z

    return p1
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lcom/dianxinos/dxservice/core/c;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/dianxinos/dxservice/core/c;->a:Landroid/content/Context;

    const-class v3, Lcom/dianxinos/dxservice/core/DXCoreService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/dianxinos/dxservice/core/c;->g:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    sget-boolean v0, Lcom/dianxinos/dxservice/a/c;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "stat.DXServiceInterator"

    const-string v1, "Start to bind!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/dianxinos/dxservice/core/c;->c()V

    return-void
.end method

.method public a(I)Z
    .locals 2

    iget-boolean v0, p0, Lcom/dianxinos/dxservice/core/c;->b:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/dianxinos/dxservice/a/c;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "stat.DXServiceInterator"

    const-string v1, "Service haven\'t bind.The status change trigger will be ignored!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dianxinos/dxservice/core/c;->a(Landroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Lcom/dianxinos/dxservice/stat/t;)Z
    .locals 4

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/dianxinos/dxservice/core/c;->b:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/dianxinos/dxservice/a/c;->d:Z

    if-eqz v1, :cond_0

    const-string v1, "stat.DXServiceInterator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service haven\'t bind.The event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dianxinos/dxservice/stat/t;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " will send again when service is bound!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/dianxinos/dxservice/core/c;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dianxinos/dxservice/stat/t;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/dianxinos/dxservice/core/c;->a(Landroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public b()Z
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/dianxinos/dxservice/core/c;->b:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/dianxinos/dxservice/a/c;->d:Z

    if-eqz v1, :cond_0

    const-string v1, "stat.DXServiceInterator"

    const-string v2, "Service haven\'t bind.When is bound,it will send again!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean v0, p0, Lcom/dianxinos/dxservice/core/c;->e:Z

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dianxinos/dxservice/core/c;->a(Landroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method
