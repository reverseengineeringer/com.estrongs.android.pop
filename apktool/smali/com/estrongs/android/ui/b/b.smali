.class Lcom/estrongs/android/ui/b/b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/b/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/b;->a:Lcom/estrongs/android/ui/b/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const/4 v1, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/estrongs/android/ui/b/b;->a:Lcom/estrongs/android/ui/b/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/a;->a(Lcom/estrongs/android/ui/b/a;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/estrongs/android/ui/b/b;->a:Lcom/estrongs/android/ui/b/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/a;->b(Lcom/estrongs/android/ui/b/a;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/estrongs/android/ui/b/b;->a:Lcom/estrongs/android/ui/b/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/a;->c(Lcom/estrongs/android/ui/b/a;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/estrongs/android/ui/b/b;->a:Lcom/estrongs/android/ui/b/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/a;->d(Lcom/estrongs/android/ui/b/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/b;->a:Lcom/estrongs/android/ui/b/a;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/a;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/b;->a:Lcom/estrongs/android/ui/b/a;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/a;->e(Lcom/estrongs/android/ui/b/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/estrongs/android/ui/b/b;->a:Lcom/estrongs/android/ui/b/a;

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/b/a;->a(Lcom/estrongs/android/ui/b/a;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/b/b;->a:Lcom/estrongs/android/ui/b/a;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/a;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/b;->a:Lcom/estrongs/android/ui/b/a;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/a;->e(Lcom/estrongs/android/ui/b/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/estrongs/android/ui/b/b;->a:Lcom/estrongs/android/ui/b/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/a;->f(Lcom/estrongs/android/ui/b/a;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/estrongs/android/ui/b/b;->a:Lcom/estrongs/android/ui/b/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/a;->g(Lcom/estrongs/android/ui/b/a;)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/estrongs/android/ui/b/b;->a:Lcom/estrongs/android/ui/b/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/a;->h(Lcom/estrongs/android/ui/b/a;)V

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/estrongs/android/ui/b/b;->a:Lcom/estrongs/android/ui/b/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/a;->f()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_9
    .end packed-switch
.end method
