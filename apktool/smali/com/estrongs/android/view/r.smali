.class Lcom/estrongs/android/view/r;
.super Ljava/lang/Thread;


# instance fields
.field a:Z

.field final synthetic b:Lcom/estrongs/android/view/e;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/e;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/view/r;->b:Lcom/estrongs/android/view/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/view/r;->a:Z

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/r;->b:Lcom/estrongs/android/view/e;

    iget-object v1, p0, Lcom/estrongs/android/view/r;->b:Lcom/estrongs/android/view/e;

    iget-object v1, v1, Lcom/estrongs/android/view/e;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p1, v1, v2, p2}, Lcom/estrongs/io/archive/c;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/estrongs/io/archive/h;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/view/e;->a(Lcom/estrongs/android/view/e;Lcom/estrongs/io/archive/h;)Lcom/estrongs/io/archive/h;

    iget-object v0, p0, Lcom/estrongs/android/view/r;->b:Lcom/estrongs/android/view/e;

    invoke-static {v0}, Lcom/estrongs/android/view/e;->e(Lcom/estrongs/android/view/e;)V

    iget-boolean v0, p0, Lcom/estrongs/android/view/r;->a:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/r;->b:Lcom/estrongs/android/view/e;

    iget-object v0, v0, Lcom/estrongs/android/view/e;->T:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/view/s;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/s;-><init>(Lcom/estrongs/android/view/r;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/view/r;->b:Lcom/estrongs/android/view/e;

    iget-object v0, v0, Lcom/estrongs/android/view/e;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/r;->b:Lcom/estrongs/android/view/e;

    invoke-static {v0}, Lcom/estrongs/android/view/e;->f(Lcom/estrongs/android/view/e;)Lcom/estrongs/io/archive/h;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/r;->b:Lcom/estrongs/android/view/e;

    iget-object v1, v1, Lcom/estrongs/android/view/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/h;->f(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/r;->b:Lcom/estrongs/android/view/e;

    invoke-static {v0}, Lcom/estrongs/android/view/e;->f(Lcom/estrongs/android/view/e;)Lcom/estrongs/io/archive/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/io/archive/h;->b()V

    iget-boolean v0, p0, Lcom/estrongs/android/view/r;->a:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/r;->b:Lcom/estrongs/android/view/e;

    iget-object v0, v0, Lcom/estrongs/android/view/e;->T:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/view/s;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/s;-><init>(Lcom/estrongs/android/view/r;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/estrongs/android/view/r;->b:Lcom/estrongs/android/view/e;

    iget-object v1, p0, Lcom/estrongs/android/view/r;->b:Lcom/estrongs/android/view/e;

    invoke-static {v1}, Lcom/estrongs/android/view/e;->f(Lcom/estrongs/android/view/e;)Lcom/estrongs/io/archive/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/io/archive/h;->h()Lcom/estrongs/io/model/ArchiveEntryFile;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/view/e;->a(Lcom/estrongs/android/view/e;Ljava/io/File;)Ljava/io/File;

    iget-boolean v0, p0, Lcom/estrongs/android/view/r;->a:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/view/r;->b:Lcom/estrongs/android/view/e;

    iget-object v0, v0, Lcom/estrongs/android/view/e;->T:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/view/s;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/s;-><init>(Lcom/estrongs/android/view/r;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/estrongs/android/view/r;->b:Lcom/estrongs/android/view/e;

    invoke-static {v0}, Lcom/estrongs/android/view/e;->g(Lcom/estrongs/android/view/e;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/view/r;->b:Lcom/estrongs/android/view/e;

    iget-object v0, v0, Lcom/estrongs/android/view/e;->T:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/view/s;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/s;-><init>(Lcom/estrongs/android/view/r;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    const-string v1, "ArchiveFileGridViewWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open the archive file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-boolean v1, p0, Lcom/estrongs/android/view/r;->a:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/view/r;->b:Lcom/estrongs/android/view/e;

    iget-object v0, v0, Lcom/estrongs/android/view/e;->T:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/view/s;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/s;-><init>(Lcom/estrongs/android/view/r;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_4
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "NOT_SUPPORTED_ENC_ALG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    sget-object v2, Lcom/estrongs/io/archive/sevenzip/f;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/estrongs/io/archive/sevenzip/f;->a(Ljava/lang/Runnable;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v0, Lcom/estrongs/io/archive/f;->d:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/view/r;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/view/r;->b:Lcom/estrongs/android/view/e;

    iget-object v0, v0, Lcom/estrongs/android/view/e;->T:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/view/s;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/s;-><init>(Lcom/estrongs/android/view/r;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_5
    :try_start_6
    const-string v1, "NOT_SUPPORTED_ENC_ALG"

    iget-object v2, p0, Lcom/estrongs/android/view/r;->b:Lcom/estrongs/android/view/e;

    const v3, 0x7f0b023a

    invoke-virtual {v2, v3}, Lcom/estrongs/android/view/e;->l(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/r;->b:Lcom/estrongs/android/view/e;

    invoke-static {v1}, Lcom/estrongs/android/view/e;->g(Lcom/estrongs/android/view/e;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/view/r;->b:Lcom/estrongs/android/view/e;

    invoke-static {v2}, Lcom/estrongs/android/view/e;->g(Lcom/estrongs/android/view/e;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/view/r;->b:Lcom/estrongs/android/view/e;

    iget-object v0, v0, Lcom/estrongs/android/view/e;->T:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/view/s;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/s;-><init>(Lcom/estrongs/android/view/r;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_7
    :try_start_7
    const-string v1, "NOT_SUPPORTED_ENC_ALG_STRENGTH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "NOT_SUPPORTED_ENC_ALG"

    iget-object v2, p0, Lcom/estrongs/android/view/r;->b:Lcom/estrongs/android/view/e;

    const v3, 0x7f0b023b

    invoke-virtual {v2, v3}, Lcom/estrongs/android/view/e;->l(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_8
    const-string v1, "not a WinZip AES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x0

    sget-object v1, Lcom/estrongs/io/archive/sevenzip/f;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/io/archive/sevenzip/f;->a(Ljava/lang/Runnable;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/estrongs/io/archive/f;->d:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/view/r;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/view/r;->b:Lcom/estrongs/android/view/e;

    iget-object v0, v0, Lcom/estrongs/android/view/e;->T:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/view/s;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/s;-><init>(Lcom/estrongs/android/view/r;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_9
    :try_start_8
    iget-object v0, p0, Lcom/estrongs/android/view/r;->b:Lcom/estrongs/android/view/e;

    const v1, 0x7f0b023a

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/e;->l(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_a
    const-string v1, "rarEncryptedException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, 0x0

    sget-object v1, Lcom/estrongs/io/archive/sevenzip/f;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/io/archive/sevenzip/f;->a(Ljava/lang/Runnable;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/estrongs/android/view/r;->b:Lcom/estrongs/android/view/e;

    invoke-static {v0, p1}, Lcom/estrongs/android/view/e;->b(Lcom/estrongs/android/view/e;Ljava/lang/String;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/view/r;->b:Lcom/estrongs/android/view/e;

    iget-object v0, v0, Lcom/estrongs/android/view/e;->T:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/view/s;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/s;-><init>(Lcom/estrongs/android/view/r;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_b
    :try_start_9
    sget-object v0, Lcom/estrongs/io/archive/f;->d:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/view/r;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/view/r;->b:Lcom/estrongs/android/view/e;

    iget-object v0, v0, Lcom/estrongs/android/view/e;->T:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/view/s;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/s;-><init>(Lcom/estrongs/android/view/r;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_c
    :try_start_a
    iget-object v0, p0, Lcom/estrongs/android/view/r;->b:Lcom/estrongs/android/view/e;

    const v1, 0x7f0b023a

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/e;->l(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_d
    const-string v1, "Permission denied"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {p1}, Lcom/estrongs/android/util/am;->bl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/view/r;->b:Lcom/estrongs/android/view/e;

    const v1, 0x7f0b0493

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/e;->l(I)Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/estrongs/android/view/r;->b:Lcom/estrongs/android/view/e;

    iget-object v1, v1, Lcom/estrongs/android/view/e;->T:Landroid/os/Handler;

    new-instance v2, Lcom/estrongs/android/view/s;

    invoke-direct {v2, p0}, Lcom/estrongs/android/view/s;-><init>(Lcom/estrongs/android/view/r;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method


# virtual methods
.method protected a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/view/r;->a:Z

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/r;->b:Lcom/estrongs/android/view/e;

    iget-object v0, v0, Lcom/estrongs/android/view/e;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/view/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
