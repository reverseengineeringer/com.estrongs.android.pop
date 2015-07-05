.class final Lcom/estrongs/android/ui/dialog/kl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/util/ab;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/Object;JJ)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3

    check-cast p1, Lcom/estrongs/android/util/y;

    iget-object v0, p1, Lcom/estrongs/android/util/y;->d:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {p1}, Lcom/estrongs/android/util/y;->i()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/estrongs/android/util/y;

    invoke-virtual {p1}, Lcom/estrongs/android/util/y;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/kf;->a(Ljava/lang/String;)Lcom/estrongs/android/ui/dialog/km;

    move-result-object v0

    move-object v1, v0

    :goto_0
    iget-object v0, p1, Lcom/estrongs/android/util/y;->d:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method
