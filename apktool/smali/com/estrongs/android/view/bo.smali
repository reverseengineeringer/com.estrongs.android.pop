.class Lcom/estrongs/android/view/bo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/fs/b/ak;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/bu;

.field final synthetic b:Lcom/estrongs/android/view/aw;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/aw;Lcom/estrongs/android/view/bu;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/bo;->b:Lcom/estrongs/android/view/aw;

    iput-object p2, p0, Lcom/estrongs/android/view/bo;->a:Lcom/estrongs/android/view/bu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/fs/b/aj;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/fs/b/aj;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/estrongs/fs/b/aj;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v0

    iget v0, v0, Lcom/estrongs/a/p;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/bo;->a:Lcom/estrongs/android/view/bu;

    iget-object v0, v0, Lcom/estrongs/android/view/bu;->e:Ljava/util/List;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/bo;->a:Lcom/estrongs/android/view/bu;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/estrongs/android/view/bu;->e:Ljava/util/List;

    :cond_1
    new-instance v0, Lcom/estrongs/android/view/bp;

    invoke-direct {v0, p0, p1, p2}, Lcom/estrongs/android/view/bp;-><init>(Lcom/estrongs/android/view/bo;Lcom/estrongs/fs/b/aj;Ljava/util/List;)V

    iget-object v1, p0, Lcom/estrongs/android/view/bo;->a:Lcom/estrongs/android/view/bu;

    iget-object v1, v1, Lcom/estrongs/android/view/bu;->e:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/estrongs/android/view/bo;->a:Lcom/estrongs/android/view/bu;

    iget-object v2, v2, Lcom/estrongs/android/view/bu;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/estrongs/android/view/bo;->b:Lcom/estrongs/android/view/aw;

    iget-object v1, v1, Lcom/estrongs/android/view/aw;->T:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
