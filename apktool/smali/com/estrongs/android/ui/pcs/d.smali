.class Lcom/estrongs/android/ui/pcs/d;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/c;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/c;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/d;->a:Lcom/estrongs/android/ui/pcs/c;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->a:Lcom/estrongs/android/ui/pcs/c;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/c;->a(Lcom/estrongs/android/ui/pcs/c;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/d;->a:Lcom/estrongs/android/ui/pcs/c;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/pcs/c;->a(Lcom/estrongs/android/ui/pcs/c;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->a:Lcom/estrongs/android/ui/pcs/c;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/c;->b()V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/estrongs/android/ui/pcs/l;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/d;->a:Lcom/estrongs/android/ui/pcs/c;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/c;->b(Lcom/estrongs/android/ui/pcs/c;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/pcs/l;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/d;->a:Lcom/estrongs/android/ui/pcs/c;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/c;->c(Lcom/estrongs/android/ui/pcs/c;)Lcom/estrongs/android/ui/pcs/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/l;->a(Lcom/estrongs/android/ui/pcs/q;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/d;->a:Lcom/estrongs/android/ui/pcs/c;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/c;->d(Lcom/estrongs/android/ui/pcs/c;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/l;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/d;->a:Lcom/estrongs/android/ui/pcs/c;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/pcs/c;->a(Lcom/estrongs/android/ui/pcs/c;Lcom/estrongs/android/ui/pcs/q;)Lcom/estrongs/android/ui/pcs/q;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/l;->show()V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->a:Lcom/estrongs/android/ui/pcs/c;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/c;->b(Lcom/estrongs/android/ui/pcs/c;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0, v3}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->a:Lcom/estrongs/android/ui/pcs/c;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/c;->b()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->a:Lcom/estrongs/android/ui/pcs/c;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/c;->b(Lcom/estrongs/android/ui/pcs/c;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0804b3

    invoke-static {v0, v1, v3}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->a:Lcom/estrongs/android/ui/pcs/c;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/c;->b(Lcom/estrongs/android/ui/pcs/c;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0, v3}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
