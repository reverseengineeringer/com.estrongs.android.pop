.class final Lcom/estrongs/android/pop/app/jf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/app/je;->b()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/app/je;->b()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/je;->a(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/je;->a(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v1}, Lcom/estrongs/android/pop/app/je;->a(Z)Z

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v1}, Lcom/estrongs/android/pop/app/je;->a(Z)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/estrongs/android/pop/app/je;->a(Z)Z

    throw v0
.end method
