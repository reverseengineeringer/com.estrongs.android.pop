.class Lcom/flurry/sdk/am$4;
.super Lcom/flurry/sdk/kp$b;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/flurry/sdk/am;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/am;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/am$4;->c:Lcom/flurry/sdk/am;

    iput-object p2, p0, Lcom/flurry/sdk/am$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/sdk/am$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/flurry/sdk/kp$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/kp;)V
    .locals 6

    const/4 v5, 0x3

    iget-object v0, p0, Lcom/flurry/sdk/am$4;->c:Lcom/flurry/sdk/am;

    invoke-virtual {v0}, Lcom/flurry/sdk/am;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/flurry/sdk/kp;->h()I

    move-result v1

    invoke-static {}, Lcom/flurry/sdk/am;->i()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Downloader: Download status code is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/am$4;->c:Lcom/flurry/sdk/am;

    invoke-static {v3}, Lcom/flurry/sdk/am;->f(Lcom/flurry/sdk/am;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " chunk: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/am$4;->c:Lcom/flurry/sdk/am;

    invoke-static {v3}, Lcom/flurry/sdk/am;->l(Lcom/flurry/sdk/am;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v0, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v2, "Content-Range"

    invoke-virtual {p1, v2}, Lcom/flurry/sdk/kp;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/flurry/sdk/am;->i()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Downloader: Content range is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/am$4;->c:Lcom/flurry/sdk/am;

    invoke-static {v4}, Lcom/flurry/sdk/am;->f(Lcom/flurry/sdk/am;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " chunk: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/am$4;->c:Lcom/flurry/sdk/am;

    invoke-static {v4}, Lcom/flurry/sdk/am;->l(Lcom/flurry/sdk/am;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/flurry/sdk/kp;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xce

    if-ne v1, v2, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/flurry/sdk/am$4;->b:Ljava/lang/String;

    const-string v2, "="

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/sdk/am$4;->c:Lcom/flurry/sdk/am;

    invoke-static {v0}, Lcom/flurry/sdk/am;->m(Lcom/flurry/sdk/am;)I

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/am$4$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/am$4$1;-><init>(Lcom/flurry/sdk/am$4;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/am$4$2;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/am$4$2;-><init>(Lcom/flurry/sdk/am$4;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public a(Lcom/flurry/sdk/kp;Ljava/io/InputStream;)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/flurry/sdk/am$4;->c:Lcom/flurry/sdk/am;

    invoke-virtual {v0}, Lcom/flurry/sdk/am;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Downloader: request cancelled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/am$4;->c:Lcom/flurry/sdk/am;

    invoke-static {v0}, Lcom/flurry/sdk/am;->k(Lcom/flurry/sdk/am;)Lcom/flurry/sdk/aq;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/am$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/aq;->b(Ljava/lang/String;)Lcom/flurry/sdk/aq$c;

    move-result-object v3

    if-eqz v3, :cond_1

    :try_start_0
    new-instance v1, Lcom/flurry/sdk/at;

    iget-object v0, p0, Lcom/flurry/sdk/am$4;->c:Lcom/flurry/sdk/am;

    invoke-static {v0}, Lcom/flurry/sdk/am;->e(Lcom/flurry/sdk/am;)J

    move-result-wide v4

    invoke-direct {v1, p2, v4, v5}, Lcom/flurry/sdk/at;-><init>(Ljava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Lcom/flurry/sdk/aq$c;->a()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/sdk/lt;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v1}, Lcom/flurry/sdk/lt;->a(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/flurry/sdk/lt;->a(Ljava/io/Closeable;)V

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/flurry/sdk/am$4;->c:Lcom/flurry/sdk/am;

    invoke-static {v0}, Lcom/flurry/sdk/am;->k(Lcom/flurry/sdk/am;)Lcom/flurry/sdk/aq;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/am$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/aq;->c(Ljava/lang/String;)Z

    throw v2

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    invoke-static {v1}, Lcom/flurry/sdk/lt;->a(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/flurry/sdk/lt;->a(Ljava/io/Closeable;)V

    move-object v2, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v2}, Lcom/flurry/sdk/lt;->a(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/flurry/sdk/lt;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_2
    return-void

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method
