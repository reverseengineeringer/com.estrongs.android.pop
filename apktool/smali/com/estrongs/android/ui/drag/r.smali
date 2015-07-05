.class Lcom/estrongs/android/ui/drag/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/drag/q;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/drag/q;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/drag/r;->a:Lcom/estrongs/android/ui/drag/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/drag/r;->a:Lcom/estrongs/android/ui/drag/q;

    iget-object v0, v0, Lcom/estrongs/android/ui/drag/q;->b:Lcom/estrongs/android/ui/drag/DragWindowView;

    invoke-static {v0}, Lcom/estrongs/android/ui/drag/DragWindowView;->a(Lcom/estrongs/android/ui/drag/DragWindowView;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v2, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->x:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/ui/drag/r;->a:Lcom/estrongs/android/ui/drag/q;

    iget-object v0, v0, Lcom/estrongs/android/ui/drag/q;->b:Lcom/estrongs/android/ui/drag/DragWindowView;

    invoke-static {v0}, Lcom/estrongs/android/ui/drag/DragWindowView;->a(Lcom/estrongs/android/ui/drag/DragWindowView;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v3, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->x:Ljava/util/List;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/aw;

    iget-object v4, p0, Lcom/estrongs/android/ui/drag/r;->a:Lcom/estrongs/android/ui/drag/q;

    iget-object v4, v4, Lcom/estrongs/android/ui/drag/q;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/estrongs/android/ui/d/e;->a()I

    move-result v4

    if-ne v1, v4, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->g()V

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/estrongs/android/view/aw;->i(Z)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/estrongs/android/ui/drag/r;->a:Lcom/estrongs/android/ui/drag/q;

    iget-object v0, v0, Lcom/estrongs/android/ui/drag/q;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->ba(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h(Z)V

    :cond_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method
