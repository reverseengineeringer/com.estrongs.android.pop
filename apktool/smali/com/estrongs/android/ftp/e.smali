.class Lcom/estrongs/android/ftp/e;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ftp/ESFtpService;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ftp/ESFtpService;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ftp/e;->a:Lcom/estrongs/android/ftp/ESFtpService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v0, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :pswitch_0
    const/4 v3, 0x0

    :try_start_1
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-lez v4, :cond_4

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-lez v4, :cond_4

    move v1, v0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ftp/e;->a:Lcom/estrongs/android/ftp/ESFtpService;

    invoke-static {v0, v1}, Lcom/estrongs/android/ftp/ESFtpService;->a(Lcom/estrongs/android/ftp/ESFtpService;I)I

    const/4 v0, 0x0

    if-nez v1, :cond_3

    invoke-static {}, Lcom/estrongs/android/ftp/a;->e()Lcom/estrongs/android/ftp/a;

    move-result-object v2

    if-eqz v2, :cond_3

    const v0, 0x7f080540

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/i;->b(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ftp/e;->a:Lcom/estrongs/android/ftp/ESFtpService;

    const v3, 0x7f080540

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ftp/ESFtpService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "ftp:/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/estrongs/android/ftp/a;->g()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/estrongs/android/ftp/a;->h()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-object v2, p0, Lcom/estrongs/android/ftp/e;->a:Lcom/estrongs/android/ftp/ESFtpService;

    if-nez v1, :cond_6

    if-eqz v0, :cond_5

    :goto_2
    invoke-virtual {v2, v1, v0}, Lcom/estrongs/android/ftp/ESFtpService;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ftp/e;->a:Lcom/estrongs/android/ftp/ESFtpService;

    invoke-static {v0, v1}, Lcom/estrongs/android/ftp/ESFtpService;->a(Lcom/estrongs/android/ftp/ESFtpService;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    :try_start_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-gtz v0, :cond_1

    iget v0, p1, Landroid/os/Message;->arg2:I

    if-lez v0, :cond_9

    move v1, v2

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/estrongs/android/ftp/e;->a:Lcom/estrongs/android/ftp/ESFtpService;

    const v4, 0x7f080479

    invoke-static {v3, v4}, Lcom/estrongs/android/ftp/ESFtpService;->b(Lcom/estrongs/android/ftp/ESFtpService;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/estrongs/android/ftp/e;->a:Lcom/estrongs/android/ftp/ESFtpService;

    const v4, 0x7f08047a

    invoke-static {v3, v4}, Lcom/estrongs/android/ftp/ESFtpService;->b(Lcom/estrongs/android/ftp/ESFtpService;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Landroid/os/Message;->arg1:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p1, Landroid/os/Message;->arg2:I

    int-to-long v6, v5

    invoke-static {v6, v7}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/estrongs/android/ftp/e;->a:Lcom/estrongs/android/ftp/ESFtpService;

    invoke-static {v5}, Lcom/estrongs/android/ftp/ESFtpService;->a(Lcom/estrongs/android/ftp/ESFtpService;)I

    move-result v5

    if-ne v5, v1, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/ftp/e;->a:Lcom/estrongs/android/ftp/ESFtpService;

    iget-object v1, p0, Lcom/estrongs/android/ftp/e;->a:Lcom/estrongs/android/ftp/ESFtpService;

    invoke-static {v1}, Lcom/estrongs/android/ftp/ESFtpService;->a(Lcom/estrongs/android/ftp/ESFtpService;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/estrongs/android/ftp/e;->a:Lcom/estrongs/android/ftp/ESFtpService;

    const v5, 0x7f0805b3

    invoke-static {v4, v5}, Lcom/estrongs/android/ftp/ESFtpService;->b(Lcom/estrongs/android/ftp/ESFtpService;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ftp/ESFtpService;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/estrongs/android/ftp/e;->a:Lcom/estrongs/android/ftp/ESFtpService;

    invoke-static {v1}, Lcom/estrongs/android/ftp/ESFtpService;->a(Lcom/estrongs/android/ftp/ESFtpService;)I

    move-result v1

    if-ne v1, v2, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/ftp/e;->a:Lcom/estrongs/android/ftp/ESFtpService;

    iget-object v1, p0, Lcom/estrongs/android/ftp/e;->a:Lcom/estrongs/android/ftp/ESFtpService;

    invoke-static {v1}, Lcom/estrongs/android/ftp/ESFtpService;->a(Lcom/estrongs/android/ftp/ESFtpService;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/estrongs/android/ftp/e;->a:Lcom/estrongs/android/ftp/ESFtpService;

    const v5, 0x7f08047b

    invoke-static {v3, v5}, Lcom/estrongs/android/ftp/ESFtpService;->b(Lcom/estrongs/android/ftp/ESFtpService;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ftp/ESFtpService;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/estrongs/android/ftp/e;->a:Lcom/estrongs/android/ftp/ESFtpService;

    invoke-static {v1}, Lcom/estrongs/android/ftp/ESFtpService;->a(Lcom/estrongs/android/ftp/ESFtpService;)I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ftp/e;->a:Lcom/estrongs/android/ftp/ESFtpService;

    iget-object v1, p0, Lcom/estrongs/android/ftp/e;->a:Lcom/estrongs/android/ftp/ESFtpService;

    invoke-static {v1}, Lcom/estrongs/android/ftp/ESFtpService;->a(Lcom/estrongs/android/ftp/ESFtpService;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/estrongs/android/ftp/e;->a:Lcom/estrongs/android/ftp/ESFtpService;

    const v6, 0x7f080478

    invoke-static {v5, v6}, Lcom/estrongs/android/ftp/ESFtpService;->b(Lcom/estrongs/android/ftp/ESFtpService;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ": "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ftp/e;->a:Lcom/estrongs/android/ftp/ESFtpService;

    const v5, 0x7f08047c

    invoke-static {v3, v5}, Lcom/estrongs/android/ftp/ESFtpService;->b(Lcom/estrongs/android/ftp/ESFtpService;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ftp/ESFtpService;->a(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_9
    move v1, v3

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
