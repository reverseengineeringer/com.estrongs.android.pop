.class Lcom/estrongs/android/ui/dialog/by;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/bx;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/bx;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/by;->b:Lcom/estrongs/android/ui/dialog/bx;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/by;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/by;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/dialog/bz;

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/estrongs/android/ui/dialog/bz;->e:I

    if-ltz v1, :cond_0

    iget v1, v0, Lcom/estrongs/android/ui/dialog/bz;->e:I

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/by;->b:Lcom/estrongs/android/ui/dialog/bx;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/bx;->a:Lcom/estrongs/android/ui/dialog/bv;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/bv;->a:Lcom/estrongs/android/ui/dialog/bl;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/bl;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/by;->b:Lcom/estrongs/android/ui/dialog/bx;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/bx;->a:Lcom/estrongs/android/ui/dialog/bv;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/bv;->a:Lcom/estrongs/android/ui/dialog/bl;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/bl;->i:Ljava/util/ArrayList;

    iget v2, v0, Lcom/estrongs/android/ui/dialog/bz;->e:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/ui/dialog/bu;

    iget v2, v0, Lcom/estrongs/android/ui/dialog/bz;->f:I

    if-ltz v2, :cond_0

    iget v2, v0, Lcom/estrongs/android/ui/dialog/bz;->f:I

    iget-object v3, v1, Lcom/estrongs/android/ui/dialog/bu;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/bu;->c:Ljava/util/ArrayList;

    iget v2, v0, Lcom/estrongs/android/ui/dialog/bz;->f:I

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

    new-instance v3, Lcom/estrongs/android/ui/dialog/hf;

    iget-object v4, p0, Lcom/estrongs/android/ui/dialog/by;->b:Lcom/estrongs/android/ui/dialog/bx;

    iget-object v4, v4, Lcom/estrongs/android/ui/dialog/bx;->a:Lcom/estrongs/android/ui/dialog/bv;

    iget-object v4, v4, Lcom/estrongs/android/ui/dialog/bv;->a:Lcom/estrongs/android/ui/dialog/bl;

    iget-object v4, v4, Lcom/estrongs/android/ui/dialog/bl;->a:Landroid/app/Activity;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v2, v5}, Lcom/estrongs/android/ui/dialog/hf;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/h;Z)V

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1}, Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/b/ao;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/by;->b:Lcom/estrongs/android/ui/dialog/bx;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/bx;->a:Lcom/estrongs/android/ui/dialog/bv;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/bv;->a:Lcom/estrongs/android/ui/dialog/bl;

    iget v0, v0, Lcom/estrongs/android/ui/dialog/bz;->f:I

    const/4 v4, 0x0

    invoke-static {v2, v0, v4}, Lcom/estrongs/android/ui/dialog/bl;->a(Lcom/estrongs/android/ui/dialog/bl;IZ)Lcom/estrongs/fs/b/ao;

    move-result-object v2

    :cond_2
    invoke-virtual {v3, v2}, Lcom/estrongs/android/ui/dialog/hf;->a(Lcom/estrongs/fs/b/ao;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Lcom/estrongs/android/ui/dialog/hf;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
