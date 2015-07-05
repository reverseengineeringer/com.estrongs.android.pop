.class Lcom/estrongs/android/d/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/d/k;


# direct methods
.method private constructor <init>(Lcom/estrongs/android/d/k;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/d/n;->a:Lcom/estrongs/android/d/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/d/k;Lcom/estrongs/android/d/l;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/d/n;-><init>(Lcom/estrongs/android/d/k;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/d/n;->a:Lcom/estrongs/android/d/k;

    invoke-static {v0}, Lcom/estrongs/android/d/k;->a(Lcom/estrongs/android/d/k;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/d/n;->a:Lcom/estrongs/android/d/k;

    invoke-static {v0}, Lcom/estrongs/android/d/k;->b(Lcom/estrongs/android/d/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/d/n;->a:Lcom/estrongs/android/d/k;

    iget-boolean v0, v0, Lcom/estrongs/android/d/k;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/d/n;->a:Lcom/estrongs/android/d/k;

    invoke-static {v0}, Lcom/estrongs/android/d/k;->a(Lcom/estrongs/android/d/k;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
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

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/estrongs/android/d/n;->a:Lcom/estrongs/android/d/k;

    invoke-static {v0}, Lcom/estrongs/android/d/k;->a(Lcom/estrongs/android/d/k;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v2, p0, Lcom/estrongs/android/d/n;->a:Lcom/estrongs/android/d/k;

    iget-object v0, p0, Lcom/estrongs/android/d/n;->a:Lcom/estrongs/android/d/k;

    invoke-static {v0}, Lcom/estrongs/android/d/k;->a(Lcom/estrongs/android/d/k;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/d/m;

    iput-object v0, v2, Lcom/estrongs/android/d/k;->c:Lcom/estrongs/android/d/m;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/d/n;->a:Lcom/estrongs/android/d/k;

    iget-object v0, v0, Lcom/estrongs/android/d/k;->c:Lcom/estrongs/android/d/m;

    iget-object v0, v0, Lcom/estrongs/android/d/m;->c:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/d/n;->a:Lcom/estrongs/android/d/k;

    iget-object v2, p0, Lcom/estrongs/android/d/n;->a:Lcom/estrongs/android/d/k;

    iget-object v2, v2, Lcom/estrongs/android/d/k;->c:Lcom/estrongs/android/d/m;

    invoke-virtual {v1, v2}, Lcom/estrongs/android/d/k;->a(Lcom/estrongs/android/d/m;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/d/n;->a:Lcom/estrongs/android/d/k;

    iget-object v1, v1, Lcom/estrongs/android/d/k;->c:Lcom/estrongs/android/d/m;

    iget-object v2, p0, Lcom/estrongs/android/d/n;->a:Lcom/estrongs/android/d/k;

    iget-object v2, v2, Lcom/estrongs/android/d/k;->c:Lcom/estrongs/android/d/m;

    iget-object v2, v2, Lcom/estrongs/android/d/m;->c:Lcom/estrongs/fs/h;

    iput-object v2, v1, Lcom/estrongs/android/d/m;->d:Lcom/estrongs/fs/h;

    iget-object v1, p0, Lcom/estrongs/android/d/n;->a:Lcom/estrongs/android/d/k;

    iget-object v1, v1, Lcom/estrongs/android/d/k;->c:Lcom/estrongs/android/d/m;

    iget-object v1, v1, Lcom/estrongs/android/d/m;->c:Lcom/estrongs/fs/h;

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/d/n;->a:Lcom/estrongs/android/d/k;

    iget-object v1, v1, Lcom/estrongs/android/d/k;->c:Lcom/estrongs/android/d/m;

    iget-object v1, v1, Lcom/estrongs/android/d/m;->c:Lcom/estrongs/fs/h;

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->aG(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/d/n;->a:Lcom/estrongs/android/d/k;

    iget-object v1, v1, Lcom/estrongs/android/d/k;->c:Lcom/estrongs/android/d/m;

    iget-object v1, v1, Lcom/estrongs/android/d/m;->c:Lcom/estrongs/fs/h;

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->aO(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/d/n;->a:Lcom/estrongs/android/d/k;

    iget-object v1, v1, Lcom/estrongs/android/d/k;->c:Lcom/estrongs/android/d/m;

    iget-object v2, p0, Lcom/estrongs/android/d/n;->a:Lcom/estrongs/android/d/k;

    iget-object v2, v2, Lcom/estrongs/android/d/k;->c:Lcom/estrongs/android/d/m;

    iget-object v2, v2, Lcom/estrongs/android/d/m;->c:Lcom/estrongs/fs/h;

    invoke-static {v2, v4}, Lcom/estrongs/android/view/cd;->a(Lcom/estrongs/fs/h;Z)Lcom/estrongs/fs/h;

    move-result-object v2

    iput-object v2, v1, Lcom/estrongs/android/d/m;->d:Lcom/estrongs/fs/h;

    :cond_3
    iget-object v1, p0, Lcom/estrongs/android/d/n;->a:Lcom/estrongs/android/d/k;

    iget-object v1, v1, Lcom/estrongs/android/d/k;->c:Lcom/estrongs/android/d/m;

    iget-object v1, v1, Lcom/estrongs/android/d/m;->d:Lcom/estrongs/fs/h;

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    new-array v1, v1, [Z

    aput-boolean v4, v1, v4

    iget-object v2, p0, Lcom/estrongs/android/d/n;->a:Lcom/estrongs/android/d/k;

    iget-object v2, v2, Lcom/estrongs/android/d/k;->c:Lcom/estrongs/android/d/m;

    iget-object v3, p0, Lcom/estrongs/android/d/n;->a:Lcom/estrongs/android/d/k;

    iget-object v3, v3, Lcom/estrongs/android/d/k;->c:Lcom/estrongs/android/d/m;

    iget-object v3, v3, Lcom/estrongs/android/d/m;->d:Lcom/estrongs/fs/h;

    invoke-static {v3, v4, v1}, Lcom/estrongs/android/d/f;->a(Lcom/estrongs/fs/h;Z[Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Lcom/estrongs/android/d/m;->e:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/estrongs/android/d/n;->a:Lcom/estrongs/android/d/k;

    iget-object v2, v2, Lcom/estrongs/android/d/k;->c:Lcom/estrongs/android/d/m;

    aget-boolean v1, v1, v4

    iput-boolean v1, v2, Lcom/estrongs/android/d/m;->a:Z

    iget-object v1, p0, Lcom/estrongs/android/d/n;->a:Lcom/estrongs/android/d/k;

    iget-object v1, v1, Lcom/estrongs/android/d/k;->c:Lcom/estrongs/android/d/m;

    iget-object v1, v1, Lcom/estrongs/android/d/m;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/d/n;->a:Lcom/estrongs/android/d/k;

    iget-object v2, p0, Lcom/estrongs/android/d/n;->a:Lcom/estrongs/android/d/k;

    iget-object v2, v2, Lcom/estrongs/android/d/k;->c:Lcom/estrongs/android/d/m;

    invoke-virtual {v1, v2}, Lcom/estrongs/android/d/k;->b(Lcom/estrongs/android/d/m;)Z

    :cond_4
    iget-object v1, p0, Lcom/estrongs/android/d/n;->a:Lcom/estrongs/android/d/k;

    invoke-static {v1}, Lcom/estrongs/android/d/k;->c(Lcom/estrongs/android/d/k;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/d/n;->a:Lcom/estrongs/android/d/k;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/estrongs/android/d/k;->c:Lcom/estrongs/android/d/m;

    goto/16 :goto_0

    :cond_5
    :try_start_4
    iget-object v0, p0, Lcom/estrongs/android/d/n;->a:Lcom/estrongs/android/d/k;

    invoke-static {v0}, Lcom/estrongs/android/d/k;->a(Lcom/estrongs/android/d/k;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_1
.end method
