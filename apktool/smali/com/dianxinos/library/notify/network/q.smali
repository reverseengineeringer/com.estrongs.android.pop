.class Lcom/dianxinos/library/notify/network/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dianxinos/library/notify/network/o;


# direct methods
.method constructor <init>(Lcom/dianxinos/library/notify/network/o;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/library/notify/network/q;->a:Lcom/dianxinos/library/notify/network/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/library/notify/network/q;->a:Lcom/dianxinos/library/notify/network/o;

    iget-object v1, p0, Lcom/dianxinos/library/notify/network/q;->a:Lcom/dianxinos/library/notify/network/o;

    invoke-static {v1}, Lcom/dianxinos/library/notify/network/o;->a(Lcom/dianxinos/library/notify/network/o;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/dianxinos/library/notify/network/q;->a:Lcom/dianxinos/library/notify/network/o;

    invoke-static {v4}, Lcom/dianxinos/library/notify/network/o;->b(Lcom/dianxinos/library/notify/network/o;)Lcom/dianxinos/library/notify/network/l;

    move-result-object v4

    invoke-interface {v4}, Lcom/dianxinos/library/notify/network/l;->h()J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/dianxinos/library/notify/network/d;->a(Ljava/io/File;IIJ)Lcom/dianxinos/library/notify/network/d;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dianxinos/library/notify/network/o;->a(Lcom/dianxinos/library/notify/network/o;Lcom/dianxinos/library/notify/network/d;)Lcom/dianxinos/library/notify/network/d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initialize disk cache for network: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/library/notify/network/q;->a:Lcom/dianxinos/library/notify/network/o;

    invoke-static {v1}, Lcom/dianxinos/library/notify/network/o;->a(Lcom/dianxinos/library/notify/network/o;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/dianxinos/library/notify/network/q;->a:Lcom/dianxinos/library/notify/network/o;

    invoke-static {v0}, Lcom/dianxinos/library/notify/network/o;->a(Lcom/dianxinos/library/notify/network/o;)Ljava/io/File;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/dianxinos/library/notify/network/q;->a:Lcom/dianxinos/library/notify/network/o;

    invoke-static {v0}, Lcom/dianxinos/library/notify/network/o;->a(Lcom/dianxinos/library/notify/network/o;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to open disk cache dir:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/library/notify/network/q;->a:Lcom/dianxinos/library/notify/network/o;

    invoke-static {v1}, Lcom/dianxinos/library/notify/network/o;->a(Lcom/dianxinos/library/notify/network/o;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/q;->a:Lcom/dianxinos/library/notify/network/o;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dianxinos/library/notify/network/o;->a(Lcom/dianxinos/library/notify/network/o;Lcom/dianxinos/library/notify/network/d;)Lcom/dianxinos/library/notify/network/d;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
