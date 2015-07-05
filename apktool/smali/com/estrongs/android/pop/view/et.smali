.class Lcom/estrongs/android/pop/view/et;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/et;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    monitor-exit p0

    return-void

    :pswitch_1
    :try_start_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/estrongs/android/ui/dialog/cg;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->show()V

    iget-object v2, p0, Lcom/estrongs/android/pop/view/et;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v2, v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->U:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_2
    :try_start_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/estrongs/android/pop/view/et;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->U:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/dialog/cg;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->dismiss()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/et;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/estrongs/android/pop/view/et;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->V:Landroid/os/Handler;

    const-string v1, "http://update.estrongs.com/up?id=1"

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/dialog/kf;->a(Landroid/os/Handler;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/estrongs/android/pop/view/et;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/ad;->b(J)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/estrongs/android/ui/dialog/km;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/estrongs/android/ui/dialog/km;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/estrongs/android/ui/dialog/km;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/view/a;->a()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    const/4 v1, 0x0

    :try_start_3
    iget-object v3, v0, Lcom/estrongs/android/ui/dialog/km;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    :goto_1
    if-ge v2, v1, :cond_0

    :try_start_4
    new-instance v1, Lcom/estrongs/android/ui/dialog/kf;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/et;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/estrongs/android/ui/dialog/kf;-><init>(Landroid/content/Context;ILcom/estrongs/android/ui/dialog/km;I)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/kf;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
