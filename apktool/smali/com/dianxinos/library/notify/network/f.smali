.class Lcom/dianxinos/library/notify/network/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dianxinos/library/notify/network/d;


# direct methods
.method constructor <init>(Lcom/dianxinos/library/notify/network/d;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/library/notify/network/f;->a:Lcom/dianxinos/library/notify/network/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/dianxinos/library/notify/network/f;->a:Lcom/dianxinos/library/notify/network/d;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/dianxinos/library/notify/network/f;->a:Lcom/dianxinos/library/notify/network/d;

    invoke-static {v0}, Lcom/dianxinos/library/notify/network/d;->d(Lcom/dianxinos/library/notify/network/d;)V

    iget-object v0, p0, Lcom/dianxinos/library/notify/network/f;->a:Lcom/dianxinos/library/notify/network/d;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/dianxinos/library/notify/network/d;->a(Lcom/dianxinos/library/notify/network/d;I)I

    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
