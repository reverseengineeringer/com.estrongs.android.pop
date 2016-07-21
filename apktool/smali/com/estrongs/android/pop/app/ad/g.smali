.class Lcom/estrongs/android/pop/app/ad/g;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ad/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ad/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ad/g;->a:Lcom/estrongs/android/pop/app/ad/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/g;->a:Lcom/estrongs/android/pop/app/ad/a;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/app/ad/a;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/util/bk;->n()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/ad/h;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ad/h;-><init>(Lcom/estrongs/android/pop/app/ad/g;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
