.class Lcom/estrongs/android/pop/app/c/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/c/e;


# direct methods
.method private constructor <init>(Lcom/estrongs/android/pop/app/c/e;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/c/h;->a:Lcom/estrongs/android/pop/app/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/pop/app/c/e;Lcom/estrongs/android/pop/app/c/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/c/h;-><init>(Lcom/estrongs/android/pop/app/c/e;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/h;->a:Lcom/estrongs/android/pop/app/c/e;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/c/e;->a(Lcom/estrongs/android/pop/app/c/e;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/h;->a:Lcom/estrongs/android/pop/app/c/e;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/c/e;->b(Lcom/estrongs/android/pop/app/c/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/h;->a:Lcom/estrongs/android/pop/app/c/e;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/c/e;->a(Lcom/estrongs/android/pop/app/c/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/pop/app/c/h;->a:Lcom/estrongs/android/pop/app/c/e;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/h;->a:Lcom/estrongs/android/pop/app/c/e;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/c/e;->a(Lcom/estrongs/android/pop/app/c/e;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/c/g;

    iput-object v0, v2, Lcom/estrongs/android/pop/app/c/e;->a:Lcom/estrongs/android/pop/app/c/g;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/h;->a:Lcom/estrongs/android/pop/app/c/e;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/c/e;->a:Lcom/estrongs/android/pop/app/c/g;

    iget-object v1, v0, Lcom/estrongs/android/pop/app/c/g;->b:Lcom/estrongs/android/pop/app/c/i;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/h;->a:Lcom/estrongs/android/pop/app/c/e;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/c/h;->a:Lcom/estrongs/android/pop/app/c/e;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/c/e;->a:Lcom/estrongs/android/pop/app/c/g;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/c/e;->a(Lcom/estrongs/android/pop/app/c/g;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/c/i;->d()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/h;->a:Lcom/estrongs/android/pop/app/c/e;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/c/h;->a:Lcom/estrongs/android/pop/app/c/e;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/c/e;->a:Lcom/estrongs/android/pop/app/c/g;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/c/e;->b(Lcom/estrongs/android/pop/app/c/g;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/h;->a:Lcom/estrongs/android/pop/app/c/e;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/c/e;->c(Lcom/estrongs/android/pop/app/c/e;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/h;->a:Lcom/estrongs/android/pop/app/c/e;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/estrongs/android/pop/app/c/e;->a:Lcom/estrongs/android/pop/app/c/g;

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/h;->a:Lcom/estrongs/android/pop/app/c/e;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/c/e;->a(Lcom/estrongs/android/pop/app/c/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
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

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method
