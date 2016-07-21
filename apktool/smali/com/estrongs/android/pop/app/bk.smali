.class Lcom/estrongs/android/pop/app/bk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/bi;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/bi;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/bk;->a:Lcom/estrongs/android/pop/app/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bk;->a:Lcom/estrongs/android/pop/app/bi;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/bi;->c(Lcom/estrongs/android/pop/app/bi;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/bk;->a:Lcom/estrongs/android/pop/app/bi;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/bi;->d(Lcom/estrongs/android/pop/app/bi;)Lcom/estrongs/android/pop/zeroconf/w;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/bk;->a:Lcom/estrongs/android/pop/app/bi;

    new-instance v2, Lcom/estrongs/android/pop/zeroconf/w;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/estrongs/android/pop/zeroconf/w;-><init>(Landroid/content/Context;I)V

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/app/bi;->a(Lcom/estrongs/android/pop/app/bi;Lcom/estrongs/android/pop/zeroconf/w;)Lcom/estrongs/android/pop/zeroconf/w;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bk;->a:Lcom/estrongs/android/pop/app/bi;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/bi;->d(Lcom/estrongs/android/pop/app/bi;)Lcom/estrongs/android/pop/zeroconf/w;

    move-result-object v0

    sget-object v2, Lcom/estrongs/android/pop/zeroconf/w;->b:Ljava/lang/String;

    sget-object v3, Lcom/estrongs/android/pop/app/bi;->b:Ljava/lang/String;

    sget v4, Lcom/estrongs/android/pop/app/bi;->a:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/estrongs/android/pop/zeroconf/w;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bk;->a:Lcom/estrongs/android/pop/app/bi;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/bi;->d(Lcom/estrongs/android/pop/app/bi;)Lcom/estrongs/android/pop/zeroconf/w;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/bk;->a:Lcom/estrongs/android/pop/app/bi;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/zeroconf/w;->a(Lcom/estrongs/android/pop/zeroconf/v;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_4
    iget-object v2, p0, Lcom/estrongs/android/pop/app/bk;->a:Lcom/estrongs/android/pop/app/bi;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/estrongs/android/pop/app/bi;->a(Lcom/estrongs/android/pop/app/bi;Lcom/estrongs/android/pop/zeroconf/w;)Lcom/estrongs/android/pop/zeroconf/w;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method
