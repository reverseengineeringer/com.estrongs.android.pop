.class Lcom/estrongs/android/ui/c/b/f;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/c/b/a;

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
.method public constructor <init>(Lcom/estrongs/android/ui/c/b/a;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/estrongs/android/ui/c/a/a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/estrongs/android/ui/c/b/f;->a:Lcom/estrongs/android/ui/c/b/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/c/b/f;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/c/b/f;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/c/b/f;->c:Z

    return-void
.end method

.method public run()V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/c/a/d;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/c/a/d;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/estrongs/android/ui/c/b/i;

    invoke-direct {v2}, Lcom/estrongs/android/ui/c/b/i;-><init>()V

    iput-object v0, v2, Lcom/estrongs/android/ui/c/b/i;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aH(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/e;->l(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/estrongs/android/ui/c/b/i;->c:J

    iget-wide v4, v2, Lcom/estrongs/android/ui/c/b/i;->c:J

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/e;->k(Ljava/lang/String;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    iput-wide v4, v2, Lcom/estrongs/android/ui/c/b/i;->b:J

    :goto_1
    iget-boolean v0, p0, Lcom/estrongs/android/ui/c/b/f;->c:Z

    if-eqz v0, :cond_1

    :goto_2
    return-void

    :cond_0
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

    iput-wide v4, v2, Lcom/estrongs/android/ui/c/b/i;->b:J

    const/4 v3, 0x0

    aget-wide v4, v0, v3

    const/4 v3, 0x2

    aget-wide v6, v0, v3

    mul-long/2addr v4, v6

    iput-wide v4, v2, Lcom/estrongs/android/ui/c/b/i;->c:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/f;->a:Lcom/estrongs/android/ui/c/b/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/b/a;->e(Lcom/estrongs/android/ui/c/b/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/f;->a:Lcom/estrongs/android/ui/c/b/a;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/estrongs/android/ui/c/b/a;->a(Lcom/estrongs/android/ui/c/b/a;Lcom/estrongs/android/ui/c/b/f;)Lcom/estrongs/android/ui/c/b/f;

    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/f;->a:Lcom/estrongs/android/ui/c/b/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/b/a;->j(Lcom/estrongs/android/ui/c/b/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lcom/estrongs/android/ui/c/b/g;

    invoke-direct {v3, p0, v2}, Lcom/estrongs/android/ui/c/b/g;-><init>(Lcom/estrongs/android/ui/c/b/f;Lcom/estrongs/android/ui/c/b/i;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/f;->a:Lcom/estrongs/android/ui/c/b/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/b/a;->e(Lcom/estrongs/android/ui/c/b/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/f;->a:Lcom/estrongs/android/ui/c/b/a;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/estrongs/android/ui/c/b/a;->a(Lcom/estrongs/android/ui/c/b/a;Lcom/estrongs/android/ui/c/b/f;)Lcom/estrongs/android/ui/c/b/f;

    monitor-exit v1

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
.end method
