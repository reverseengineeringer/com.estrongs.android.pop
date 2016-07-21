.class Lcom/estrongs/android/ui/view/bc;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/ba;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method protected constructor <init>(Lcom/estrongs/android/ui/view/ba;Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/estrongs/android/ui/view/bc;->a:Lcom/estrongs/android/ui/view/ba;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/ui/view/bc;->c:I

    iput-object p2, p0, Lcom/estrongs/android/ui/view/bc;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bc;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bc;->a:Lcom/estrongs/android/ui/view/ba;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ba;->b(Lcom/estrongs/android/ui/view/ba;)Lcom/estrongs/android/ui/view/bc;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/bc;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bc;->a:Lcom/estrongs/android/ui/view/ba;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ba;->b(Lcom/estrongs/android/ui/view/ba;)Lcom/estrongs/android/ui/view/bc;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/bc;->removeMessages(I)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bc;->a:Lcom/estrongs/android/ui/view/ba;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ba;->a(Lcom/estrongs/android/ui/view/ba;)Lcom/estrongs/android/ui/view/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ay;->getCount()I

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/estrongs/android/ui/view/bc;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/ui/view/bc;->c:I

    iget v0, p0, Lcom/estrongs/android/ui/view/bc;->c:I

    iget-object v1, p0, Lcom/estrongs/android/ui/view/bc;->a:Lcom/estrongs/android/ui/view/ba;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/ba;->a(Lcom/estrongs/android/ui/view/ba;)Lcom/estrongs/android/ui/view/ay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/view/ay;->getCount()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/estrongs/android/ui/view/bc;->c:I

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bc;->a:Lcom/estrongs/android/ui/view/ba;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ba;->e(Lcom/estrongs/android/ui/view/ba;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/ui/view/bc;->c:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bc;->a:Lcom/estrongs/android/ui/view/ba;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ba;->b(Lcom/estrongs/android/ui/view/ba;)Lcom/estrongs/android/ui/view/bc;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/ui/view/bc;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bc;->a:Lcom/estrongs/android/ui/view/ba;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ba;->b(Lcom/estrongs/android/ui/view/ba;)Lcom/estrongs/android/ui/view/bc;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/bc;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bc;->a:Lcom/estrongs/android/ui/view/ba;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ba;->b(Lcom/estrongs/android/ui/view/ba;)Lcom/estrongs/android/ui/view/bc;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/bc;->removeMessages(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bc;->a:Lcom/estrongs/android/ui/view/ba;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ba;->b(Lcom/estrongs/android/ui/view/ba;)Lcom/estrongs/android/ui/view/bc;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/bc;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bc;->a:Lcom/estrongs/android/ui/view/ba;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ba;->b(Lcom/estrongs/android/ui/view/ba;)Lcom/estrongs/android/ui/view/bc;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/bc;->removeMessages(I)V

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bc;->a:Lcom/estrongs/android/ui/view/ba;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ba;->b(Lcom/estrongs/android/ui/view/ba;)Lcom/estrongs/android/ui/view/bc;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/ui/view/bc;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lcom/estrongs/android/ui/view/bc;->c:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
