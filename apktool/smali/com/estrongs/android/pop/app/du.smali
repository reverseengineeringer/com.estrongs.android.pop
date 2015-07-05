.class Lcom/estrongs/android/pop/app/du;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/LocalFileSharingActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/LocalFileSharingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/du;->a:Lcom/estrongs/android/pop/app/LocalFileSharingActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/du;->a:Lcom/estrongs/android/pop/app/LocalFileSharingActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->a(Lcom/estrongs/android/pop/app/LocalFileSharingActivity;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/du;->a:Lcom/estrongs/android/pop/app/LocalFileSharingActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->b(Lcom/estrongs/android/pop/app/LocalFileSharingActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/du;->a:Lcom/estrongs/android/pop/app/LocalFileSharingActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->a(Lcom/estrongs/android/pop/app/LocalFileSharingActivity;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/du;->a:Lcom/estrongs/android/pop/app/LocalFileSharingActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->b(Lcom/estrongs/android/pop/app/LocalFileSharingActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/du;->a:Lcom/estrongs/android/pop/app/LocalFileSharingActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->c(Lcom/estrongs/android/pop/app/LocalFileSharingActivity;)[Lcom/estrongs/android/pop/app/ef;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/du;->a:Lcom/estrongs/android/pop/app/LocalFileSharingActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->c(Lcom/estrongs/android/pop/app/LocalFileSharingActivity;)[Lcom/estrongs/android/pop/app/ef;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->g()Lcom/estrongs/android/pop/app/LocalFileSharingActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/du;->a:Lcom/estrongs/android/pop/app/LocalFileSharingActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->f()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/du;->a:Lcom/estrongs/android/pop/app/LocalFileSharingActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->d(Lcom/estrongs/android/pop/app/LocalFileSharingActivity;)Lcom/estrongs/android/ui/e/cf;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0b002f

    const v3, 0x7f0202cf

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/ui/e/cf;->a(III)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/du;->a:Lcom/estrongs/android/pop/app/LocalFileSharingActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->e(Lcom/estrongs/android/pop/app/LocalFileSharingActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/du;->a:Lcom/estrongs/android/pop/app/LocalFileSharingActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->a:Landroid/widget/TextView;

    const v1, 0x7f0b00d6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
