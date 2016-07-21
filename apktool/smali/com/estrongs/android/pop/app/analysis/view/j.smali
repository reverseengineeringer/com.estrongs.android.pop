.class Lcom/estrongs/android/pop/app/analysis/view/j;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/analysis/view/i;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/view/i;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/view/j;->a:Lcom/estrongs/android/pop/app/analysis/view/i;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/j;->a:Lcom/estrongs/android/pop/app/analysis/view/i;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/view/i;->a(Lcom/estrongs/android/pop/app/analysis/view/i;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/j;->a:Lcom/estrongs/android/pop/app/analysis/view/i;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/view/i;->b(Lcom/estrongs/android/pop/app/analysis/view/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/j;->a:Lcom/estrongs/android/pop/app/analysis/view/i;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/view/i;->d(Lcom/estrongs/android/pop/app/analysis/view/i;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/j;->a:Lcom/estrongs/android/pop/app/analysis/view/i;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/analysis/view/i;->c(Lcom/estrongs/android/pop/app/analysis/view/i;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/view/s;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->a:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/j;->a:Lcom/estrongs/android/pop/app/analysis/view/i;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/view/i;->e(Lcom/estrongs/android/pop/app/analysis/view/i;)Lcom/estrongs/android/pop/app/analysis/view/u;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/j;->a:Lcom/estrongs/android/pop/app/analysis/view/i;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/analysis/view/i;->c(Lcom/estrongs/android/pop/app/analysis/view/i;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/analysis/view/u;->notifyItemChanged(I)V

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/view/k;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/analysis/view/k;-><init>(Lcom/estrongs/android/pop/app/analysis/view/j;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v0, v2, v3}, Lcom/estrongs/android/pop/app/analysis/view/j;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
