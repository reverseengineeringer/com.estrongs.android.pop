.class final Lcom/estrongs/android/a/w;
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
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/estrongs/android/a/u;->b()Lcom/estrongs/android/ui/dialog/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/a/u;->b()Lcom/estrongs/android/ui/dialog/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Lcom/estrongs/android/a/u;->a(Lcom/estrongs/android/ui/dialog/ProgressDialog;)Lcom/estrongs/android/ui/dialog/ProgressDialog;

    invoke-static {v1}, Lcom/estrongs/android/a/u;->a(Z)Z

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v2}, Lcom/estrongs/android/a/u;->a(Lcom/estrongs/android/ui/dialog/ProgressDialog;)Lcom/estrongs/android/ui/dialog/ProgressDialog;

    invoke-static {v1}, Lcom/estrongs/android/a/u;->a(Z)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/estrongs/android/a/u;->a(Lcom/estrongs/android/ui/dialog/ProgressDialog;)Lcom/estrongs/android/ui/dialog/ProgressDialog;

    invoke-static {v1}, Lcom/estrongs/android/a/u;->a(Z)Z

    throw v0
.end method
