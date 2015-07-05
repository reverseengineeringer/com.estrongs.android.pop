.class Lcom/estrongs/android/pop/app/compress/ay;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/aw;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/aw;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/aw;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/aw;

    iput-boolean v1, v0, Lcom/estrongs/android/pop/app/compress/aw;->a:Z

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/aw;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/aw;->a(Lcom/estrongs/android/pop/app/compress/aw;)Lcom/estrongs/io/archive/h;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/aw;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/aw;->b(Lcom/estrongs/android/pop/app/compress/aw;)Lcom/estrongs/io/model/ArchiveEntryFile;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/app/compress/az;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/compress/az;-><init>(Lcom/estrongs/android/pop/app/compress/ay;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/io/archive/h;->d(Lcom/estrongs/io/model/ArchiveEntryFile;Lcom/estrongs/io/a/b;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/aw;

    iget-boolean v1, v1, Lcom/estrongs/android/pop/app/compress/aw;->a:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/aw;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/compress/aw;->a(Lcom/estrongs/android/pop/app/compress/aw;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/aw;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/aw;->dismiss()V

    :goto_1
    return-void

    :cond_1
    if-nez v0, :cond_4

    :try_start_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/aw;

    iget-boolean v1, v1, Lcom/estrongs/android/pop/app/compress/aw;->a:Z

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WRONG PASSWORD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/aw;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/app/compress/aw;->a(Lcom/estrongs/android/pop/app/compress/aw;Z)Z

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/aw;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/aw;->d(Lcom/estrongs/android/pop/app/compress/aw;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/app/compress/bd;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/app/compress/bd;-><init>(Lcom/estrongs/android/pop/app/compress/ay;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/aw;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/aw;->dismiss()V

    goto :goto_1

    :cond_4
    :try_start_3
    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/aw;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/aw;->d(Lcom/estrongs/android/pop/app/compress/aw;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/aw;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/aw;->d(Lcom/estrongs/android/pop/app/compress/aw;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/aw;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/compress/aw;->dismiss()V

    throw v0

    :cond_5
    if-eqz v1, :cond_2

    :try_start_4
    const-string v2, "rarEncryptedException"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    const/4 v1, 0x0

    sget-object v2, Lcom/estrongs/io/archive/sevenzip/f;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/estrongs/io/archive/sevenzip/f;->a(Ljava/lang/Runnable;Ljava/lang/String;[Z)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/aw;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/aw;->d(Lcom/estrongs/android/pop/app/compress/aw;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/compress/ba;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/compress/ba;-><init>(Lcom/estrongs/android/pop/app/compress/ay;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/aw;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/aw;->dismiss()V

    goto/16 :goto_1

    :cond_6
    :try_start_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/aw;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/aw;->d(Lcom/estrongs/android/pop/app/compress/aw;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/compress/bc;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/compress/bc;-><init>(Lcom/estrongs/android/pop/app/compress/ay;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method
