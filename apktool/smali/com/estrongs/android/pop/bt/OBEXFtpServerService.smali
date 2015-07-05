.class public Lcom/estrongs/android/pop/bt/OBEXFtpServerService;
.super Landroid/app/Service;


# instance fields
.field private a:Lcom/estrongs/android/pop/bt/e;

.field private b:Lcom/estrongs/android/pop/bt/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/bt/OBEXFtpServerService;->a:Lcom/estrongs/android/pop/bt/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/OBEXFtpServerService;->a:Lcom/estrongs/android/pop/bt/e;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/bt/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/OBEXFtpServerService;->a:Lcom/estrongs/android/pop/bt/e;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/bt/e;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/OBEXFtpServerService;->a:Lcom/estrongs/android/pop/bt/e;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/bt/OBEXFtpServerService;->b:Lcom/estrongs/android/pop/bt/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/OBEXFtpServerService;->b:Lcom/estrongs/android/pop/bt/f;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/bt/f;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/OBEXFtpServerService;->b:Lcom/estrongs/android/pop/bt/f;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/bt/f;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/OBEXFtpServerService;->b:Lcom/estrongs/android/pop/bt/f;

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/bt/OBEXFtpServerService;->a:Lcom/estrongs/android/pop/bt/e;

    if-nez v0, :cond_2

    new-instance v0, Lcom/estrongs/android/pop/bt/e;

    new-instance v1, Lcom/estrongs/android/pop/bt/a;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/bt/a;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/pop/bt/e;-><init>(Lcom/estrongs/android/pop/bt/OBEXFtpServerService;Lcom/estrongs/android/pop/bt/a;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/OBEXFtpServerService;->a:Lcom/estrongs/android/pop/bt/e;

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/OBEXFtpServerService;->a:Lcom/estrongs/android/pop/bt/e;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/bt/e;->start()V

    :cond_2
    const v0, 0x7f0b01a8

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "*************************************************"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/bt/OBEXFtpServerService;->a:Lcom/estrongs/android/pop/bt/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/OBEXFtpServerService;->a:Lcom/estrongs/android/pop/bt/e;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/bt/e;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/OBEXFtpServerService;->a:Lcom/estrongs/android/pop/bt/e;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/bt/OBEXFtpServerService;->b:Lcom/estrongs/android/pop/bt/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/OBEXFtpServerService;->b:Lcom/estrongs/android/pop/bt/f;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/bt/f;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/OBEXFtpServerService;->b:Lcom/estrongs/android/pop/bt/f;

    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const v0, 0x7f0b01a9

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/bt/OBEXFtpServerService;->b()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    const-class v3, Lcom/estrongs/android/pop/bt/OBEXFtpServerService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/FexApplication;->stopService(Landroid/content/Intent;)Z

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/bt/OBEXFtpServerService;->a()V

    goto :goto_0
.end method
