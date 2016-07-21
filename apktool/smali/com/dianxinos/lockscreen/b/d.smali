.class Lcom/dianxinos/lockscreen/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dianxinos/lockscreen/a;

.field final synthetic b:Lcom/dianxinos/lockscreen/b/c;


# direct methods
.method constructor <init>(Lcom/dianxinos/lockscreen/b/c;Lcom/dianxinos/lockscreen/a;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/lockscreen/b/d;->b:Lcom/dianxinos/lockscreen/b/c;

    iput-object p2, p0, Lcom/dianxinos/lockscreen/b/d;->a:Lcom/dianxinos/lockscreen/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/dianxinos/lockscreen/b/d;->b:Lcom/dianxinos/lockscreen/b/c;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/b/c;->a(Lcom/dianxinos/lockscreen/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/b/d;->b:Lcom/dianxinos/lockscreen/b/c;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/b/c;->b(Lcom/dianxinos/lockscreen/b/c;)Lcom/dianxinos/lockscreen/b/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/b/d;->b:Lcom/dianxinos/lockscreen/b/c;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/b/c;->c(Lcom/dianxinos/lockscreen/b/c;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "LockScreenPullScheduler"

    const-string v1, "pull"

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/b/d;->b:Lcom/dianxinos/lockscreen/b/c;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/b/c;->b(Lcom/dianxinos/lockscreen/b/c;)Lcom/dianxinos/lockscreen/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/b/b;->a()Z

    iget-object v0, p0, Lcom/dianxinos/lockscreen/b/d;->a:Lcom/dianxinos/lockscreen/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/dianxinos/lockscreen/a;->b(J)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/b/d;->b:Lcom/dianxinos/lockscreen/b/c;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/b/c;->c(Lcom/dianxinos/lockscreen/b/c;)Landroid/os/Handler;

    move-result-object v0

    const-wide/32 v2, 0x1499700

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
