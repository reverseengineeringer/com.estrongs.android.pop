.class final Lcom/estrongs/a/b/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/estrongs/a/b/d;->f()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/estrongs/a/b/d;->g()Lcom/estrongs/android/pop/zeroconf/w;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/util/ak;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/a/b/d;->g()Lcom/estrongs/android/pop/zeroconf/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/zeroconf/w;->a()Z

    :cond_0
    invoke-static {}, Lcom/estrongs/a/b/d;->g()Lcom/estrongs/android/pop/zeroconf/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/zeroconf/w;->b()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/estrongs/a/b/d;->a(Lcom/estrongs/android/pop/zeroconf/w;)Lcom/estrongs/android/pop/zeroconf/w;

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
