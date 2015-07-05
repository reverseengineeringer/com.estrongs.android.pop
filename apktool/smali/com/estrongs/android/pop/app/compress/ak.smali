.class Lcom/estrongs/android/pop/app/compress/ak;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/ai;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/ai;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/ak;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v0, 0x0

    const/4 v8, 0x2

    :try_start_0
    const-string v1, "7z"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/ak;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/ai;->i(Lcom/estrongs/android/pop/app/compress/ai;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    sget-object v2, Lcom/estrongs/io/archive/sevenzip/f;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/estrongs/io/archive/sevenzip/f;->a(Ljava/lang/Runnable;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ak;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/ai;->p(Lcom/estrongs/android/pop/app/compress/ai;)Lcom/estrongs/io/archive/d;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ak;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/ai;->p(Lcom/estrongs/android/pop/app/compress/ai;)Lcom/estrongs/io/archive/d;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0xa

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/estrongs/io/archive/d;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/d;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ak;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/ai;->a()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ak;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/ai;->g(Lcom/estrongs/android/pop/app/compress/ai;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ak;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/ai;->p(Lcom/estrongs/android/pop/app/compress/ai;)Lcom/estrongs/io/archive/d;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/estrongs/io/archive/d;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ak;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/ai;->l(Lcom/estrongs/android/pop/app/compress/ai;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/HashMap;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    const-string v4, "zip"

    iget-object v5, p0, Lcom/estrongs/android/pop/app/compress/ak;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v5}, Lcom/estrongs/android/pop/app/compress/ai;->i(Lcom/estrongs/android/pop/app/compress/ai;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ak;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/ai;->o(Lcom/estrongs/android/pop/app/compress/ai;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v4, p0, Lcom/estrongs/android/pop/app/compress/ak;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/compress/ai;->m(Lcom/estrongs/android/pop/app/compress/ai;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "compress_level"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ak;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/ai;->o(Lcom/estrongs/android/pop/app/compress/ai;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v4, p0, Lcom/estrongs/android/pop/app/compress/ak;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/compress/ai;->m(Lcom/estrongs/android/pop/app/compress/ai;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "compress_level"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ak;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/ai;->o(Lcom/estrongs/android/pop/app/compress/ai;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v4, p0, Lcom/estrongs/android/pop/app/compress/ak;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/compress/ai;->m(Lcom/estrongs/android/pop/app/compress/ai;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "compress_level"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ak;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/ai;->o(Lcom/estrongs/android/pop/app/compress/ai;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v4, p0, Lcom/estrongs/android/pop/app/compress/ak;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/compress/ai;->m(Lcom/estrongs/android/pop/app/compress/ai;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "compress_level"

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    const-string v0, "password"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ak;->a:Lcom/estrongs/android/pop/app/compress/ai;

    new-instance v1, Lcom/estrongs/io/archive/aeszip/k;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/compress/ak;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/compress/ai;->a(Lcom/estrongs/android/pop/app/compress/ai;)Lcom/estrongs/io/a/a/b;

    move-result-object v4

    invoke-direct {v1, v2, v4, v3}, Lcom/estrongs/io/archive/aeszip/k;-><init>(Ljava/lang/String;Lcom/estrongs/io/a/d;Ljava/util/Map;)V

    iput-object v1, v0, Lcom/estrongs/android/pop/app/compress/ai;->b:Lcom/estrongs/io/archive/i;

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ak;->a:Lcom/estrongs/android/pop/app/compress/ai;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/ai;->b:Lcom/estrongs/io/archive/i;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ak;->a:Lcom/estrongs/android/pop/app/compress/ai;

    new-instance v1, Lcom/estrongs/io/archive/i;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/compress/ak;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/compress/ai;->a(Lcom/estrongs/android/pop/app/compress/ai;)Lcom/estrongs/io/a/a/b;

    move-result-object v4

    invoke-direct {v1, v2, v4, v3}, Lcom/estrongs/io/archive/i;-><init>(Ljava/lang/String;Lcom/estrongs/io/a/d;Ljava/util/Map;)V

    iput-object v1, v0, Lcom/estrongs/android/pop/app/compress/ai;->b:Lcom/estrongs/io/archive/i;

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ak;->a:Lcom/estrongs/android/pop/app/compress/ai;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/ai;->b:Lcom/estrongs/io/archive/i;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ak;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/ai;->q(Lcom/estrongs/android/pop/app/compress/ai;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/i;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ak;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/ai;->a(Lcom/estrongs/android/pop/app/compress/ai;)Lcom/estrongs/io/a/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/io/a/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ak;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/ai;->p(Lcom/estrongs/android/pop/app/compress/ai;)Lcom/estrongs/io/archive/d;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ak;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/ai;->p(Lcom/estrongs/android/pop/app/compress/ai;)Lcom/estrongs/io/archive/d;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0xa

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/estrongs/io/archive/d;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/d;->sendMessage(Landroid/os/Message;)Z

    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ak;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/ai;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ak;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/ai;->p(Lcom/estrongs/android/pop/app/compress/ai;)Lcom/estrongs/io/archive/d;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/ak;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/ai;->p(Lcom/estrongs/android/pop/app/compress/ai;)Lcom/estrongs/io/archive/d;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lcom/estrongs/io/archive/d;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/io/archive/d;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ak;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/ai;->a()V

    goto/16 :goto_0

    :cond_7
    :try_start_1
    const-string v4, "7z"

    iget-object v5, p0, Lcom/estrongs/android/pop/app/compress/ak;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v5}, Lcom/estrongs/android/pop/app/compress/ai;->i(Lcom/estrongs/android/pop/app/compress/ai;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/estrongs/android/pop/app/compress/ak;->a:Lcom/estrongs/android/pop/app/compress/ai;

    new-instance v5, Lcom/estrongs/io/archive/sevenzip/x;

    iget-object v6, p0, Lcom/estrongs/android/pop/app/compress/ak;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v6}, Lcom/estrongs/android/pop/app/compress/ai;->a(Lcom/estrongs/android/pop/app/compress/ai;)Lcom/estrongs/io/a/a/b;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_8

    :goto_3
    invoke-direct {v5, v2, v6, v0}, Lcom/estrongs/io/archive/sevenzip/x;-><init>(Ljava/lang/String;Lcom/estrongs/io/a/d;Ljava/lang/String;)V

    iput-object v5, v4, Lcom/estrongs/android/pop/app/compress/ai;->b:Lcom/estrongs/io/archive/i;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ak;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/ai;->p(Lcom/estrongs/android/pop/app/compress/ai;)Lcom/estrongs/io/archive/d;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/ak;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/ai;->p(Lcom/estrongs/android/pop/app/compress/ai;)Lcom/estrongs/io/archive/d;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lcom/estrongs/io/archive/d;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/io/archive/d;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ak;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/ai;->a()V

    goto/16 :goto_0

    :cond_8
    move-object v0, v1

    goto :goto_3

    :cond_9
    :try_start_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ak;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/ai;->p(Lcom/estrongs/android/pop/app/compress/ai;)Lcom/estrongs/io/archive/d;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ak;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/ai;->p(Lcom/estrongs/android/pop/app/compress/ai;)Lcom/estrongs/io/archive/d;

    move-result-object v1

    const/4 v3, 0x1

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/estrongs/io/archive/d;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/d;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ak;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/ai;->p(Lcom/estrongs/android/pop/app/compress/ai;)Lcom/estrongs/io/archive/d;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/ak;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/ai;->p(Lcom/estrongs/android/pop/app/compress/ai;)Lcom/estrongs/io/archive/d;

    move-result-object v2

    invoke-virtual {v0}, Lcom/estrongs/fs/FileSystemException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lcom/estrongs/io/archive/d;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/io/archive/d;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {v0}, Lcom/estrongs/fs/FileSystemException;->printStackTrace()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ak;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/ai;->a()V

    goto/16 :goto_0
.end method
