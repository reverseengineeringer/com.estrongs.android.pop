.class final Lcom/estrongs/a/b/i;
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
    .locals 5

    invoke-static {}, Lcom/estrongs/a/b/d;->f()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/estrongs/a/b/d;->g()Lcom/estrongs/android/pop/zeroconf/w;

    move-result-object v0

    if-eqz v0, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/estrongs/android/pop/zeroconf/w;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/estrongs/android/pop/zeroconf/w;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, Lcom/estrongs/a/b/d;->a(Lcom/estrongs/android/pop/zeroconf/w;)Lcom/estrongs/android/pop/zeroconf/w;

    invoke-static {}, Lcom/estrongs/a/b/d;->g()Lcom/estrongs/android/pop/zeroconf/w;

    move-result-object v0

    sget-object v2, Lcom/estrongs/android/pop/zeroconf/w;->a:Ljava/lang/String;

    sget-object v3, Lcom/estrongs/a/b/d;->b:Ljava/lang/String;

    sget v4, Lcom/estrongs/a/b/d;->a:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/estrongs/android/pop/zeroconf/w;->a(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    :try_start_3
    invoke-static {v2}, Lcom/estrongs/a/b/d;->a(Lcom/estrongs/android/pop/zeroconf/w;)Lcom/estrongs/android/pop/zeroconf/w;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
