.class Lcom/estrongs/android/ui/c/b/q;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/c/b/l;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/ui/c/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/estrongs/android/ui/c/b/l;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/ui/c/a/a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/estrongs/android/ui/c/b/q;->a:Lcom/estrongs/android/ui/c/b/l;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/c/b/q;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/c/b/q;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/c/b/q;->c:Z

    return-void
.end method

.method public run()V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/q;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/q;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/c/a/f;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/c/a/f;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/estrongs/android/ui/c/b/s;

    invoke-direct {v2}, Lcom/estrongs/android/ui/c/b/s;-><init>()V

    iput-object v0, v2, Lcom/estrongs/android/ui/c/b/s;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/util/j;->k(Ljava/lang/String;)[J

    move-result-object v0

    const/4 v3, 0x0

    aget-wide v4, v0, v3

    const/4 v3, 0x1

    aget-wide v6, v0, v3

    sub-long/2addr v4, v6

    const/4 v3, 0x2

    aget-wide v6, v0, v3

    mul-long/2addr v4, v6

    iput-wide v4, v2, Lcom/estrongs/android/ui/c/b/s;->b:J

    const/4 v3, 0x0

    aget-wide v4, v0, v3

    const/4 v3, 0x2

    aget-wide v6, v0, v3

    mul-long/2addr v4, v6

    iput-wide v4, v2, Lcom/estrongs/android/ui/c/b/s;->c:J

    iget-boolean v0, p0, Lcom/estrongs/android/ui/c/b/q;->c:Z

    if-eqz v0, :cond_0

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/q;->a:Lcom/estrongs/android/ui/c/b/l;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/b/l;->e(Lcom/estrongs/android/ui/c/b/l;)Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lcom/estrongs/android/ui/c/b/r;

    invoke-direct {v3, p0, v2}, Lcom/estrongs/android/ui/c/b/r;-><init>(Lcom/estrongs/android/ui/c/b/q;Lcom/estrongs/android/ui/c/b/s;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/q;->a:Lcom/estrongs/android/ui/c/b/l;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/b/l;->b(Lcom/estrongs/android/ui/c/b/l;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/q;->a:Lcom/estrongs/android/ui/c/b/l;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/estrongs/android/ui/c/b/l;->a(Lcom/estrongs/android/ui/c/b/l;Lcom/estrongs/android/ui/c/b/q;)Lcom/estrongs/android/ui/c/b/q;

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/q;->a:Lcom/estrongs/android/ui/c/b/l;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/b/l;->b(Lcom/estrongs/android/ui/c/b/l;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/q;->a:Lcom/estrongs/android/ui/c/b/l;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/estrongs/android/ui/c/b/l;->a(Lcom/estrongs/android/ui/c/b/l;Lcom/estrongs/android/ui/c/b/q;)Lcom/estrongs/android/ui/c/b/q;

    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
