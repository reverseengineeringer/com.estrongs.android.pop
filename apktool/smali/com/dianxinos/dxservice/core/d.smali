.class Lcom/dianxinos/dxservice/core/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/dianxinos/dxservice/core/c;


# direct methods
.method constructor <init>(Lcom/dianxinos/dxservice/core/c;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/dxservice/core/d;->a:Lcom/dianxinos/dxservice/core/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    sget-boolean v0, Lcom/dianxinos/dxservice/a/c;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "stat.DXServiceInterator"

    const-string v1, "Service is connected!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/dxservice/core/d;->a:Lcom/dianxinos/dxservice/core/c;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/dianxinos/dxservice/core/c;->a(Lcom/dianxinos/dxservice/core/c;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lcom/dianxinos/dxservice/core/d;->a:Lcom/dianxinos/dxservice/core/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dianxinos/dxservice/core/c;->a(Lcom/dianxinos/dxservice/core/c;Z)Z

    iget-object v0, p0, Lcom/dianxinos/dxservice/core/d;->a:Lcom/dianxinos/dxservice/core/c;

    invoke-static {v0}, Lcom/dianxinos/dxservice/core/c;->a(Lcom/dianxinos/dxservice/core/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dianxinos/dxservice/core/d;->a:Lcom/dianxinos/dxservice/core/c;

    invoke-virtual {v0}, Lcom/dianxinos/dxservice/core/c;->b()Z

    :cond_1
    iget-object v0, p0, Lcom/dianxinos/dxservice/core/d;->a:Lcom/dianxinos/dxservice/core/c;

    invoke-static {v0}, Lcom/dianxinos/dxservice/core/c;->b(Lcom/dianxinos/dxservice/core/c;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/dxservice/stat/t;

    iget-object v2, p0, Lcom/dianxinos/dxservice/core/d;->a:Lcom/dianxinos/dxservice/core/c;

    invoke-virtual {v2, v0}, Lcom/dianxinos/dxservice/core/c;->a(Lcom/dianxinos/dxservice/stat/t;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/dianxinos/dxservice/core/d;->a:Lcom/dianxinos/dxservice/core/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dianxinos/dxservice/core/c;->b(Lcom/dianxinos/dxservice/core/c;Z)Z

    iget-object v0, p0, Lcom/dianxinos/dxservice/core/d;->a:Lcom/dianxinos/dxservice/core/c;

    invoke-static {v0}, Lcom/dianxinos/dxservice/core/c;->b(Lcom/dianxinos/dxservice/core/c;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    sget-boolean v0, Lcom/dianxinos/dxservice/a/c;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "stat.DXServiceInterator"

    const-string v1, "Service is Disconnected!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/dxservice/core/d;->a:Lcom/dianxinos/dxservice/core/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dianxinos/dxservice/core/c;->a(Lcom/dianxinos/dxservice/core/c;Z)Z

    return-void
.end method
