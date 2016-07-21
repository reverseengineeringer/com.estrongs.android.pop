.class public final Lcom/estrongs/android/scanner/service/FileMonitorService;
.super Landroid/app/Service;


# instance fields
.field private a:Lcom/estrongs/android/scanner/service/a;

.field private b:Landroid/os/Handler;

.field private c:Landroid/os/Messenger;

.field private d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private e:Z

.field private f:Landroid/content/ServiceConnection;

.field private final g:Ljava/lang/Runnable;

.field private h:Lcom/estrongs/android/scanner/service/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/scanner/service/FileMonitorService;->e:Z

    new-instance v0, Lcom/estrongs/android/scanner/service/e;

    invoke-direct {v0, p0}, Lcom/estrongs/android/scanner/service/e;-><init>(Lcom/estrongs/android/scanner/service/FileMonitorService;)V

    iput-object v0, p0, Lcom/estrongs/android/scanner/service/FileMonitorService;->f:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/estrongs/android/scanner/service/f;

    invoke-direct {v0, p0}, Lcom/estrongs/android/scanner/service/f;-><init>(Lcom/estrongs/android/scanner/service/FileMonitorService;)V

    iput-object v0, p0, Lcom/estrongs/android/scanner/service/FileMonitorService;->g:Ljava/lang/Runnable;

    new-instance v0, Lcom/estrongs/android/scanner/service/g;

    invoke-direct {v0, p0}, Lcom/estrongs/android/scanner/service/g;-><init>(Lcom/estrongs/android/scanner/service/FileMonitorService;)V

    iput-object v0, p0, Lcom/estrongs/android/scanner/service/FileMonitorService;->h:Lcom/estrongs/android/scanner/service/b;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/scanner/service/FileMonitorService;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/scanner/service/FileMonitorService;->c:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/scanner/service/FileMonitorService;)Lcom/estrongs/android/scanner/service/a;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/service/FileMonitorService;->a:Lcom/estrongs/android/scanner/service/a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/estrongs/android/scanner/service/FileMonitorService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/scanner/service/FileMonitorService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/service/FileMonitorService;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/scanner/service/FileMonitorService;)Landroid/os/Messenger;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/service/FileMonitorService;->c:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/scanner/service/FileMonitorService;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/service/FileMonitorService;->g:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/scanner/service/FileMonitorService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/service/FileMonitorService;->b:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "FileMonitor"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/estrongs/android/scanner/service/FileMonitorService;->e:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/scanner/service/FileMonitorService;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/scanner/service/FileMonitorService;->b:Landroid/os/Handler;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/scanner/service/FileMonitorService;->e:Z

    iget-object v0, p0, Lcom/estrongs/android/scanner/service/FileMonitorService;->a:Lcom/estrongs/android/scanner/service/a;

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/service/a;->b()V

    iget-object v0, p0, Lcom/estrongs/android/scanner/service/FileMonitorService;->f:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/scanner/service/FileMonitorService;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/estrongs/android/scanner/service/FileMonitorService;->c:Landroid/os/Messenger;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/estrongs/android/scanner/service/FileScannerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/estrongs/android/scanner/service/FileMonitorService;->f:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v5}, Lcom/estrongs/android/scanner/service/FileMonitorService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    iget-boolean v0, p0, Lcom/estrongs/android/scanner/service/FileMonitorService;->e:Z

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return v5

    :cond_2
    const-string v0, "FileMonitor"

    const-string v1, "monitor service starting"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/estrongs/android/scanner/service/FileMonitorService;->e:Z

    iget-object v0, p0, Lcom/estrongs/android/scanner/service/FileMonitorService;->a:Lcom/estrongs/android/scanner/service/a;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/scanner/x;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    aput-object v0, v3, v1

    move v1, v2

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/estrongs/android/scanner/service/a;

    iget-object v1, p0, Lcom/estrongs/android/scanner/service/FileMonitorService;->h:Lcom/estrongs/android/scanner/service/b;

    invoke-direct {v0, v1}, Lcom/estrongs/android/scanner/service/a;-><init>(Lcom/estrongs/android/scanner/service/b;)V

    iput-object v0, p0, Lcom/estrongs/android/scanner/service/FileMonitorService;->a:Lcom/estrongs/android/scanner/service/a;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/scanner/service/d;

    invoke-direct {v1, p0, v3}, Lcom/estrongs/android/scanner/service/d;-><init>(Lcom/estrongs/android/scanner/service/FileMonitorService;[Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
