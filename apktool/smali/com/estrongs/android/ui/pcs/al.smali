.class Lcom/estrongs/android/ui/pcs/al;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/ak;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/al;->a:Lcom/estrongs/android/ui/pcs/ak;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/al;->a:Lcom/estrongs/android/ui/pcs/ak;

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/pcs/ak;->a(Lcom/estrongs/android/ui/pcs/ak;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/al;->a:Lcom/estrongs/android/ui/pcs/ak;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/al;->a:Lcom/estrongs/android/ui/pcs/ak;

    iget-object v1, v1, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/z;->j(Lcom/estrongs/android/ui/pcs/z;)Landroid/widget/Button;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/estrongs/android/ui/pcs/z;->a(Lcom/estrongs/android/ui/pcs/z;Landroid/widget/Button;Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/al;->a:Lcom/estrongs/android/ui/pcs/ak;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/z;->k(Lcom/estrongs/android/ui/pcs/z;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/al;->a:Lcom/estrongs/android/ui/pcs/ak;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/ak;->b(Lcom/estrongs/android/ui/pcs/ak;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/al;->a:Lcom/estrongs/android/ui/pcs/ak;

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/pcs/ak;->b(Lcom/estrongs/android/ui/pcs/ak;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/al;->a:Lcom/estrongs/android/ui/pcs/ak;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/al;->a:Lcom/estrongs/android/ui/pcs/ak;

    iget-object v1, v1, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/z;->o(Lcom/estrongs/android/ui/pcs/z;)Landroid/widget/Button;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/estrongs/android/ui/pcs/z;->a(Lcom/estrongs/android/ui/pcs/z;Landroid/widget/Button;Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/al;->a:Lcom/estrongs/android/ui/pcs/ak;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/ak;->c(Lcom/estrongs/android/ui/pcs/ak;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/al;->a:Lcom/estrongs/android/ui/pcs/ak;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/al;->a:Lcom/estrongs/android/ui/pcs/ak;

    iget-object v1, v1, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/z;->p(Lcom/estrongs/android/ui/pcs/z;)Landroid/widget/Button;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/estrongs/android/ui/pcs/z;->a(Lcom/estrongs/android/ui/pcs/z;Landroid/widget/Button;Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
