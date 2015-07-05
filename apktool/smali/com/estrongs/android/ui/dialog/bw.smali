.class Lcom/estrongs/android/ui/dialog/bw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/bv;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/bv;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/bw;->b:Lcom/estrongs/android/ui/dialog/bv;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/bw;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bw;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/dialog/bx;

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/estrongs/android/ui/dialog/bx;->e:I

    if-ltz v1, :cond_0

    iget v1, v0, Lcom/estrongs/android/ui/dialog/bx;->e:I

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/bw;->b:Lcom/estrongs/android/ui/dialog/bv;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/bv;->a:Lcom/estrongs/android/ui/dialog/bt;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/bt;->a:Lcom/estrongs/android/ui/dialog/bj;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/bj;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/bw;->b:Lcom/estrongs/android/ui/dialog/bv;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/bv;->a:Lcom/estrongs/android/ui/dialog/bt;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/bt;->a:Lcom/estrongs/android/ui/dialog/bj;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/bj;->i:Ljava/util/ArrayList;

    iget v2, v0, Lcom/estrongs/android/ui/dialog/bx;->e:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/ui/dialog/bs;

    iget v2, v0, Lcom/estrongs/android/ui/dialog/bx;->f:I

    if-ltz v2, :cond_0

    iget v2, v0, Lcom/estrongs/android/ui/dialog/bx;->f:I

    iget-object v3, v1, Lcom/estrongs/android/ui/dialog/bs;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/bs;->c:Ljava/util/ArrayList;

    iget v2, v0, Lcom/estrongs/android/ui/dialog/bx;->f:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Lcom/estrongs/fs/impl/local/f;

    new-instance v3, Ljava/io/File;

    iget-object v4, v1, Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;->a:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/estrongs/fs/impl/local/f;-><init>(Ljava/io/File;)V

    new-instance v3, Lcom/estrongs/android/ui/dialog/hc;

    iget-object v4, p0, Lcom/estrongs/android/ui/dialog/bw;->b:Lcom/estrongs/android/ui/dialog/bv;

    iget-object v4, v4, Lcom/estrongs/android/ui/dialog/bv;->a:Lcom/estrongs/android/ui/dialog/bt;

    iget-object v4, v4, Lcom/estrongs/android/ui/dialog/bt;->a:Lcom/estrongs/android/ui/dialog/bj;

    iget-object v4, v4, Lcom/estrongs/android/ui/dialog/bj;->a:Lcom/estrongs/android/pop/esclasses/ESActivity;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v2, v5}, Lcom/estrongs/android/ui/dialog/hc;-><init>(Lcom/estrongs/android/pop/esclasses/ESActivity;Lcom/estrongs/fs/h;Z)V

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1}, Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/b/am;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/bw;->b:Lcom/estrongs/android/ui/dialog/bv;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/bv;->a:Lcom/estrongs/android/ui/dialog/bt;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/bt;->a:Lcom/estrongs/android/ui/dialog/bj;

    iget v0, v0, Lcom/estrongs/android/ui/dialog/bx;->f:I

    const/4 v4, 0x0

    invoke-static {v2, v0, v4}, Lcom/estrongs/android/ui/dialog/bj;->a(Lcom/estrongs/android/ui/dialog/bj;IZ)Lcom/estrongs/fs/b/am;

    move-result-object v2

    :cond_2
    invoke-virtual {v3, v2}, Lcom/estrongs/android/ui/dialog/hc;->a(Lcom/estrongs/fs/b/am;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Lcom/estrongs/android/ui/dialog/hc;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
