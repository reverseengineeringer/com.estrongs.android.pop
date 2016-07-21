.class Lcom/estrongs/android/ui/view/ch;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/RecommendListView;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/RecommendListView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/ch;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p1, Landroid/os/Message;->arg1:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    monitor-exit p0

    return-void

    :pswitch_1
    :try_start_1
    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/utils/n;->d()[Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ch;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/view/RecommendListView;->b([Lcom/estrongs/android/pop/view/utils/v;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ch;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/RecommendListView;->h(Lcom/estrongs/android/ui/view/RecommendListView;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ch;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/RecommendListView;->h(Lcom/estrongs/android/ui/view/RecommendListView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/ch;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/RecommendListView;->i(Lcom/estrongs/android/ui/view/RecommendListView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_2
    :try_start_2
    iget-object v0, p0, Lcom/estrongs/android/ui/view/ch;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/RecommendListView;->h(Lcom/estrongs/android/ui/view/RecommendListView;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ch;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/RecommendListView;->h(Lcom/estrongs/android/ui/view/RecommendListView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ch;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/RecommendListView;->a(Lcom/estrongs/android/ui/view/RecommendListView;)[Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ch;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/RecommendListView;->d(Lcom/estrongs/android/ui/view/RecommendListView;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0805fb

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/view/ch;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/RecommendListView;->i(Lcom/estrongs/android/ui/view/RecommendListView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/estrongs/android/ui/view/ch;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/RecommendListView;->a()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/estrongs/android/ui/view/ch;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/RecommendListView;->a()V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/estrongs/android/ui/view/ch;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/RecommendListView;->a()V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/estrongs/android/ui/view/ch;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/RecommendListView;->a()V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/estrongs/android/ui/view/ch;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/RecommendListView;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ch;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/RecommendListView;->a()V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/estrongs/android/ui/view/ch;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/RecommendListView;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ch;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/RecommendListView;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1e241
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
