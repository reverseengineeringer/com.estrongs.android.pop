.class public Lcom/dianxinos/library/dxbase/o;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/os/Handler;

.field private static b:Landroid/os/HandlerThread;

.field private static c:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/dianxinos/library/dxbase/o;->a:Landroid/os/Handler;

    sput-object v0, Lcom/dianxinos/library/dxbase/o;->b:Landroid/os/HandlerThread;

    sput-object v0, Lcom/dianxinos/library/dxbase/o;->c:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/dianxinos/library/dxbase/o;->a:Landroid/os/Handler;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/dianxinos/library/dxbase/o;->b:Landroid/os/HandlerThread;

    sget-object v0, Lcom/dianxinos/library/dxbase/o;->b:Landroid/os/HandlerThread;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    sget-object v0, Lcom/dianxinos/library/dxbase/o;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/dianxinos/library/dxbase/o;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/dianxinos/library/dxbase/o;->c:Landroid/os/Handler;

    return-void
.end method

.method public static a()V
    .locals 2

    invoke-static {}, Lcom/dianxinos/library/dxbase/o;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ensureNonUiThread: thread check failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 2

    sget-boolean v0, Lcom/dianxinos/library/dxbase/e;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dianxinos/library/dxbase/o;->a:Landroid/os/Handler;

    new-instance v1, Lcom/dianxinos/library/dxbase/p;

    invoke-direct {v1, p0}, Lcom/dianxinos/library/dxbase/p;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/dianxinos/library/dxbase/o;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static a(Ljava/lang/Runnable;I)V
    .locals 4

    sget-boolean v0, Lcom/dianxinos/library/dxbase/e;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dianxinos/library/dxbase/o;->c:Landroid/os/Handler;

    new-instance v1, Lcom/dianxinos/library/dxbase/p;

    invoke-direct {v1, p0}, Lcom/dianxinos/library/dxbase/p;-><init>(Ljava/lang/Runnable;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/dianxinos/library/dxbase/o;->c:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static b(Ljava/lang/Runnable;)V
    .locals 2

    sget-boolean v0, Lcom/dianxinos/library/dxbase/e;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dianxinos/library/dxbase/o;->c:Landroid/os/Handler;

    new-instance v1, Lcom/dianxinos/library/dxbase/p;

    invoke-direct {v1, p0}, Lcom/dianxinos/library/dxbase/p;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/dianxinos/library/dxbase/o;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static b()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static c()Landroid/os/Looper;
    .locals 1

    sget-object v0, Lcom/dianxinos/library/dxbase/o;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/Runnable;)V
    .locals 2

    sget-boolean v0, Lcom/dianxinos/library/dxbase/e;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dianxinos/library/dxbase/o;->c:Landroid/os/Handler;

    new-instance v1, Lcom/dianxinos/library/dxbase/p;

    invoke-direct {v1, p0}, Lcom/dianxinos/library/dxbase/p;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/dianxinos/library/dxbase/o;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
