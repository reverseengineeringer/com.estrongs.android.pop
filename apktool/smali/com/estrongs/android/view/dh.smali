.class Lcom/estrongs/android/view/dh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/b/al;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/estrongs/android/view/dg;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/dg;Lcom/estrongs/fs/b/al;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/dh;->c:Lcom/estrongs/android/view/dg;

    iput-object p2, p0, Lcom/estrongs/android/view/dh;->a:Lcom/estrongs/fs/b/al;

    iput-object p3, p0, Lcom/estrongs/android/view/dh;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/dh;->c:Lcom/estrongs/android/view/dg;

    iget-object v0, v0, Lcom/estrongs/android/view/dg;->a:Lcom/estrongs/android/view/dp;

    iget-object v1, v0, Lcom/estrongs/android/view/dp;->e:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/dh;->c:Lcom/estrongs/android/view/dg;

    iget-object v0, v0, Lcom/estrongs/android/view/dg;->a:Lcom/estrongs/android/view/dp;

    iget-object v0, v0, Lcom/estrongs/android/view/dp;->e:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/view/dh;->c:Lcom/estrongs/android/view/dg;

    iget-object v0, v0, Lcom/estrongs/android/view/dg;->b:Lcom/estrongs/android/view/cr;

    iget-object v1, p0, Lcom/estrongs/android/view/dh;->a:Lcom/estrongs/fs/b/al;

    iget-object v2, p0, Lcom/estrongs/android/view/dh;->b:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/view/cr;->a(Lcom/estrongs/fs/b/al;Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/view/dh;->a:Lcom/estrongs/fs/b/al;

    iget-object v0, v0, Lcom/estrongs/fs/b/al;->b:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/view/dh;->c:Lcom/estrongs/android/view/dg;

    iget-object v0, v0, Lcom/estrongs/android/view/dg;->b:Lcom/estrongs/android/view/cr;

    iget-object v0, v0, Lcom/estrongs/android/view/cr;->M:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/view/dh;->c:Lcom/estrongs/android/view/dg;

    iget-object v2, v2, Lcom/estrongs/android/view/dg;->b:Lcom/estrongs/android/view/cr;

    iget-object v2, v2, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/view/dh;->c:Lcom/estrongs/android/view/dg;

    iget-object v1, v1, Lcom/estrongs/android/view/dg;->b:Lcom/estrongs/android/view/cr;

    iget-object v1, v1, Lcom/estrongs/android/view/cr;->g:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/GridLayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

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
