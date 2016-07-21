.class Lcom/estrongs/android/pop/app/compress/ay;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/ax;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/ax;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/ax;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x2

    const/4 v0, 0x0

    const/4 v7, 0x0

    :try_start_0
    const-string v1, "7z"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/ax;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/ax;->a(Lcom/estrongs/android/pop/app/compress/ax;)Lcom/estrongs/android/pop/app/compress/ai;

    move-result-object v2

    iget-object v2, v2, Lcom/estrongs/android/pop/app/compress/ai;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    sget-object v2, Lcom/estrongs/io/archive/sevenzip/f;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/estrongs/io/archive/sevenzip/f;->a(Ljava/lang/Runnable;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/ax;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/ax;->b(Lcom/estrongs/android/pop/app/compress/ax;)Lcom/estrongs/io/archive/c;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/ax;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/ax;->b(Lcom/estrongs/android/pop/app/compress/ax;)Lcom/estrongs/io/archive/c;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0xa

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/estrongs/io/archive/c;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/c;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/ax;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/compress/ax;->a(Lcom/estrongs/android/pop/app/compress/ax;Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/ax;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/ax;->a(Lcom/estrongs/android/pop/app/compress/ax;)Lcom/estrongs/android/pop/app/compress/ai;

    move-result-object v1

    iget-object v2, v1, Lcom/estrongs/android/pop/app/compress/ai;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/ax;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/ax;->b(Lcom/estrongs/android/pop/app/compress/ax;)Lcom/estrongs/io/archive/c;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/estrongs/io/archive/c;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/ax;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/ax;->a(Lcom/estrongs/android/pop/app/compress/ax;)Lcom/estrongs/android/pop/app/compress/ai;

    move-result-object v1

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/ai;->b:Ljava/lang/String;

    const-string v3, "zip"

    iget-object v4, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/ax;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/compress/ax;->a(Lcom/estrongs/android/pop/app/compress/ax;)Lcom/estrongs/android/pop/app/compress/ai;

    move-result-object v4

    iget-object v4, v4, Lcom/estrongs/android/pop/app/compress/ai;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/ax;

    new-instance v1, Lcom/estrongs/io/archive/aeszip/k;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/ax;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/compress/ax;->c(Lcom/estrongs/android/pop/app/compress/ax;)Lcom/estrongs/io/a/a/b;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/ax;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/compress/ax;->a(Lcom/estrongs/android/pop/app/compress/ax;)Lcom/estrongs/android/pop/app/compress/ai;

    move-result-object v4

    iget-object v4, v4, Lcom/estrongs/android/pop/app/compress/ai;->e:Ljava/util/Map;

    invoke-direct {v1, v2, v3, v4}, Lcom/estrongs/io/archive/aeszip/k;-><init>(Ljava/lang/String;Lcom/estrongs/io/a/d;Ljava/util/Map;)V

    iput-object v1, v0, Lcom/estrongs/android/pop/app/compress/ax;->a:Lcom/estrongs/io/archive/j;

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/ax;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/ax;->a:Lcom/estrongs/io/archive/j;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/ax;

    new-instance v1, Lcom/estrongs/io/archive/j;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/ax;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/compress/ax;->c(Lcom/estrongs/android/pop/app/compress/ax;)Lcom/estrongs/io/a/a/b;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/ax;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/compress/ax;->a(Lcom/estrongs/android/pop/app/compress/ax;)Lcom/estrongs/android/pop/app/compress/ai;

    move-result-object v4

    iget-object v4, v4, Lcom/estrongs/android/pop/app/compress/ai;->e:Ljava/util/Map;

    invoke-direct {v1, v2, v3, v4}, Lcom/estrongs/io/archive/j;-><init>(Ljava/lang/String;Lcom/estrongs/io/a/d;Ljava/util/Map;)V

    iput-object v1, v0, Lcom/estrongs/android/pop/app/compress/ax;->a:Lcom/estrongs/io/archive/j;

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/ax;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/ax;->a:Lcom/estrongs/io/archive/j;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/ax;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/ax;->a(Lcom/estrongs/android/pop/app/compress/ax;)Lcom/estrongs/android/pop/app/compress/ai;

    move-result-object v1

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/ai;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/j;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/ax;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/ax;->c(Lcom/estrongs/android/pop/app/compress/ax;)Lcom/estrongs/io/a/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/io/a/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/ax;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/compress/ax;->a(Lcom/estrongs/android/pop/app/compress/ax;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/ax;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/ax;->b(Lcom/estrongs/android/pop/app/compress/ax;)Lcom/estrongs/io/archive/c;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/ax;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/ax;->b(Lcom/estrongs/android/pop/app/compress/ax;)Lcom/estrongs/io/archive/c;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0xa

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/estrongs/io/archive/c;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/c;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/ax;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/ax;->b(Lcom/estrongs/android/pop/app/compress/ax;)Lcom/estrongs/io/archive/c;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/ax;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/ax;->b(Lcom/estrongs/android/pop/app/compress/ax;)Lcom/estrongs/io/archive/c;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lcom/estrongs/io/archive/c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/io/archive/c;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    :try_start_1
    const-string v3, "7z"

    iget-object v4, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/ax;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/compress/ax;->a(Lcom/estrongs/android/pop/app/compress/ax;)Lcom/estrongs/android/pop/app/compress/ai;

    move-result-object v4

    iget-object v4, v4, Lcom/estrongs/android/pop/app/compress/ai;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/ax;

    new-instance v4, Lcom/estrongs/io/archive/sevenzip/x;

    iget-object v5, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/ax;

    invoke-static {v5}, Lcom/estrongs/android/pop/app/compress/ax;->c(Lcom/estrongs/android/pop/app/compress/ax;)Lcom/estrongs/io/a/a/b;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_4

    :goto_2
    invoke-direct {v4, v2, v5, v0}, Lcom/estrongs/io/archive/sevenzip/x;-><init>(Ljava/lang/String;Lcom/estrongs/io/a/d;Ljava/lang/String;)V

    iput-object v4, v3, Lcom/estrongs/android/pop/app/compress/ax;->a:Lcom/estrongs/io/archive/j;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/ax;

    invoke-static {v1, v7}, Lcom/estrongs/android/pop/app/compress/ax;->a(Lcom/estrongs/android/pop/app/compress/ax;Z)Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/ax;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/ax;->b(Lcom/estrongs/android/pop/app/compress/ax;)Lcom/estrongs/io/archive/c;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/ax;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/ax;->b(Lcom/estrongs/android/pop/app/compress/ax;)Lcom/estrongs/io/archive/c;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lcom/estrongs/io/archive/c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/io/archive/c;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_2

    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/ax;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/compress/ax;->a(Lcom/estrongs/android/pop/app/compress/ax;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/ax;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/ax;->b(Lcom/estrongs/android/pop/app/compress/ax;)Lcom/estrongs/io/archive/c;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/ax;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/ax;->b(Lcom/estrongs/android/pop/app/compress/ax;)Lcom/estrongs/io/archive/c;

    move-result-object v1

    const/4 v3, 0x1

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/estrongs/io/archive/c;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/c;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/ax;

    invoke-static {v1, v7}, Lcom/estrongs/android/pop/app/compress/ax;->a(Lcom/estrongs/android/pop/app/compress/ax;Z)Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/ax;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/ax;->b(Lcom/estrongs/android/pop/app/compress/ax;)Lcom/estrongs/io/archive/c;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/ay;->a:Lcom/estrongs/android/pop/app/compress/ax;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/ax;->b(Lcom/estrongs/android/pop/app/compress/ax;)Lcom/estrongs/io/archive/c;

    move-result-object v2

    invoke-virtual {v0}, Lcom/estrongs/fs/FileSystemException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lcom/estrongs/io/archive/c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/io/archive/c;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {v0}, Lcom/estrongs/fs/FileSystemException;->printStackTrace()V

    goto/16 :goto_0
.end method
