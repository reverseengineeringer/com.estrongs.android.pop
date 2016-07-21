.class Lcom/flurry/sdk/aa$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/am$a;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/af;

.field final synthetic b:Lcom/flurry/sdk/aa;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/aa;Lcom/flurry/sdk/af;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/aa$4;->b:Lcom/flurry/sdk/aa;

    iput-object p2, p0, Lcom/flurry/sdk/aa$4;->a:Lcom/flurry/sdk/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/am;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/flurry/sdk/aa$4;->b:Lcom/flurry/sdk/aa;

    invoke-static {v0}, Lcom/flurry/sdk/aa;->c(Lcom/flurry/sdk/aa;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/aa$4;->b:Lcom/flurry/sdk/aa;

    invoke-static {v0}, Lcom/flurry/sdk/aa;->c(Lcom/flurry/sdk/aa;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/flurry/sdk/aa$4;->a:Lcom/flurry/sdk/af;

    invoke-virtual {v2}, Lcom/flurry/sdk/af;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/flurry/sdk/aa$4;->b:Lcom/flurry/sdk/aa;

    iget-object v1, p0, Lcom/flurry/sdk/aa$4;->a:Lcom/flurry/sdk/af;

    invoke-static {v0, v1}, Lcom/flurry/sdk/aa;->a(Lcom/flurry/sdk/aa;Lcom/flurry/sdk/af;)V

    invoke-virtual {p1}, Lcom/flurry/sdk/am;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/flurry/sdk/am;->c()J

    move-result-wide v0

    invoke-static {}, Lcom/flurry/sdk/aa;->l()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Precaching: Download success: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/aa$4;->a:Lcom/flurry/sdk/af;

    invoke-virtual {v4}, Lcom/flurry/sdk/af;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v2, v3}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/sdk/aa$4;->a:Lcom/flurry/sdk/af;

    invoke-virtual {v2, v0, v1}, Lcom/flurry/sdk/af;->a(J)V

    iget-object v0, p0, Lcom/flurry/sdk/aa$4;->b:Lcom/flurry/sdk/aa;

    iget-object v1, p0, Lcom/flurry/sdk/aa$4;->a:Lcom/flurry/sdk/af;

    sget-object v2, Lcom/flurry/sdk/al;->d:Lcom/flurry/sdk/al;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/aa;->a(Lcom/flurry/sdk/aa;Lcom/flurry/sdk/af;Lcom/flurry/sdk/al;)V

    invoke-static {}, Lcom/flurry/sdk/f;->a()Lcom/flurry/sdk/f;

    move-result-object v0

    const-string v1, "precachingDownloadSuccess"

    invoke-virtual {v0, v1, v5}, Lcom/flurry/sdk/f;->a(Ljava/lang/String;I)V

    :goto_0
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/aa$4$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/aa$4$1;-><init>(Lcom/flurry/sdk/aa$4;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    invoke-static {}, Lcom/flurry/sdk/aa;->l()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Precaching: Download error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/aa$4;->a:Lcom/flurry/sdk/af;

    invoke-virtual {v2}, Lcom/flurry/sdk/af;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/aa$4;->b:Lcom/flurry/sdk/aa;

    iget-object v1, p0, Lcom/flurry/sdk/aa$4;->a:Lcom/flurry/sdk/af;

    sget-object v2, Lcom/flurry/sdk/al;->g:Lcom/flurry/sdk/al;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/aa;->a(Lcom/flurry/sdk/aa;Lcom/flurry/sdk/af;Lcom/flurry/sdk/al;)V

    invoke-static {}, Lcom/flurry/sdk/f;->a()Lcom/flurry/sdk/f;

    move-result-object v0

    const-string v1, "precachingDownloadError"

    invoke-virtual {v0, v1, v5}, Lcom/flurry/sdk/f;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method
