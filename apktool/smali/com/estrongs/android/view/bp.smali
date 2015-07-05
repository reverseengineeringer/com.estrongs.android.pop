.class Lcom/estrongs/android/view/bp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/b/aj;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/estrongs/android/view/bo;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/bo;Lcom/estrongs/fs/b/aj;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/bp;->c:Lcom/estrongs/android/view/bo;

    iput-object p2, p0, Lcom/estrongs/android/view/bp;->a:Lcom/estrongs/fs/b/aj;

    iput-object p3, p0, Lcom/estrongs/android/view/bp;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/bp;->c:Lcom/estrongs/android/view/bo;

    iget-object v0, v0, Lcom/estrongs/android/view/bo;->a:Lcom/estrongs/android/view/bu;

    iget-object v1, v0, Lcom/estrongs/android/view/bu;->e:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/bp;->c:Lcom/estrongs/android/view/bo;

    iget-object v0, v0, Lcom/estrongs/android/view/bo;->a:Lcom/estrongs/android/view/bu;

    iget-object v0, v0, Lcom/estrongs/android/view/bu;->e:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/view/bp;->c:Lcom/estrongs/android/view/bo;

    iget-object v0, v0, Lcom/estrongs/android/view/bo;->b:Lcom/estrongs/android/view/aw;

    iget-object v1, p0, Lcom/estrongs/android/view/bp;->a:Lcom/estrongs/fs/b/aj;

    iget-object v2, p0, Lcom/estrongs/android/view/bp;->b:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/view/aw;->a(Lcom/estrongs/fs/b/aj;Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/view/bp;->a:Lcom/estrongs/fs/b/aj;

    iget-object v0, v0, Lcom/estrongs/fs/b/aj;->b:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/view/bp;->c:Lcom/estrongs/android/view/bo;

    iget-object v0, v0, Lcom/estrongs/android/view/bo;->b:Lcom/estrongs/android/view/aw;

    iget-object v0, v0, Lcom/estrongs/android/view/aw;->F:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/view/bp;->c:Lcom/estrongs/android/view/bo;

    iget-object v2, v2, Lcom/estrongs/android/view/bo;->b:Lcom/estrongs/android/view/aw;

    iget-object v2, v2, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/view/bp;->c:Lcom/estrongs/android/view/bo;

    iget-object v1, v1, Lcom/estrongs/android/view/bo;->b:Lcom/estrongs/android/view/aw;

    iget-object v1, v1, Lcom/estrongs/android/view/aw;->g:Lcom/estrongs/android/widget/HeaderGridView;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/widget/HeaderGridView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
