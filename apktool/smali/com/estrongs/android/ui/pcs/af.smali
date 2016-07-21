.class Lcom/estrongs/android/ui/pcs/af;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/z;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/z;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/af;->a:Lcom/estrongs/android/ui/pcs/z;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/af;->a:Lcom/estrongs/android/ui/pcs/z;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pcs://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "@pcs"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/pcs/z;->e(Lcom/estrongs/android/ui/pcs/z;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/af;->a:Lcom/estrongs/android/ui/pcs/z;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/pcs/z;->f(Lcom/estrongs/android/ui/pcs/z;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/af;->a:Lcom/estrongs/android/ui/pcs/z;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/z;->h(Lcom/estrongs/android/ui/pcs/z;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/estrongs/android/ui/pcs/ag;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/pcs/ag;-><init>(Lcom/estrongs/android/ui/pcs/af;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/af;->a:Lcom/estrongs/android/ui/pcs/z;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/z;->e:Lcom/estrongs/android/ui/pcs/ak;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/ak;->a(Lcom/estrongs/android/ui/pcs/ak;)Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/af;->a:Lcom/estrongs/android/ui/pcs/z;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/z;->e:Lcom/estrongs/android/ui/pcs/ak;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/ak;->a(Lcom/estrongs/android/ui/pcs/ak;)Landroid/os/Handler;

    move-result-object v2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/af;->a:Lcom/estrongs/android/ui/pcs/z;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/z;->e:Lcom/estrongs/android/ui/pcs/ak;

    const/4 v3, 0x5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v7, v5, v3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/af;->a:Lcom/estrongs/android/ui/pcs/z;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/af;->a:Lcom/estrongs/android/ui/pcs/z;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/z;->j(Lcom/estrongs/android/ui/pcs/z;)Landroid/widget/Button;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/estrongs/android/ui/pcs/z;->a(Lcom/estrongs/android/ui/pcs/z;Landroid/widget/Button;Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/af;->a:Lcom/estrongs/android/ui/pcs/z;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/z;->k(Lcom/estrongs/android/ui/pcs/z;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/af;->a:Lcom/estrongs/android/ui/pcs/z;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/z;->e:Lcom/estrongs/android/ui/pcs/ak;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/ak;->a(Lcom/estrongs/android/ui/pcs/ak;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/af;->a:Lcom/estrongs/android/ui/pcs/z;

    iget-object v1, v1, Lcom/estrongs/android/ui/pcs/z;->e:Lcom/estrongs/android/ui/pcs/ak;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/ak;->a(Lcom/estrongs/android/ui/pcs/ak;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, -0x3e8

    iget-object v3, p0, Lcom/estrongs/android/ui/pcs/af;->a:Lcom/estrongs/android/ui/pcs/z;

    invoke-static {v3}, Lcom/estrongs/android/ui/pcs/z;->a(Lcom/estrongs/android/ui/pcs/z;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0804b3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v7, v5, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/af;->a:Lcom/estrongs/android/ui/pcs/z;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/z;->a(Lcom/estrongs/android/ui/pcs/z;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0, v5}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
