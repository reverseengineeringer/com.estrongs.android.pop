.class public Lcom/estrongs/android/pop/app/UninstallMonitorActivity;
.super Lcom/estrongs/android/pop/esclasses/ESResourceActivity;


# static fields
.field static a:Lcom/estrongs/android/ui/dialog/bl;


# instance fields
.field b:Z

.field private d:Lcom/estrongs/android/j/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/UninstallMonitorActivity;->d:Lcom/estrongs/android/j/c;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/UninstallMonitorActivity;->b:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/estrongs/android/pop/app/UninstallMonitorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "packageName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->aU()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/UninstallMonitorActivity;->b:Z

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/UninstallMonitorActivity;->b:Z

    goto :goto_0

    :cond_1
    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/UninstallMonitorActivity;->b:Z

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/UninstallMonitorActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/estrongs/android/pop/app/mx;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/pop/app/mx;-><init>(Lcom/estrongs/android/pop/app/UninstallMonitorActivity;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/mx;->start()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "uninstall_stat"

    invoke-static {v0, v3}, Lcom/estrongs/android/i/a;->a(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-static {p0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/UninstallMonitorActivity;->d:Lcom/estrongs/android/j/c;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/UninstallMonitorActivity;->d:Lcom/estrongs/android/j/c;

    const-string v1, "act4"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/UninstallMonitorActivity;->d:Lcom/estrongs/android/j/c;

    const-string v1, "act4"

    const-string v2, "uninstall"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-boolean v0, Lcom/estrongs/android/pop/z;->ap:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/UninstallMonitorActivity;->b:Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/UninstallMonitorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/UninstallMonitorActivity;->a(Landroid/content/Intent;)V

    :cond_1
    invoke-static {v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->g(Z)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->onResume()V

    invoke-static {}, Lcom/estrongs/android/pop/app/ad/a;->a()Lcom/estrongs/android/pop/app/ad/a;

    move-result-object v0

    const-string v1, "uninstall"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/ad/a;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/UninstallMonitorActivity;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/UninstallMonitorActivity;->finish()V

    :cond_0
    return-void
.end method
