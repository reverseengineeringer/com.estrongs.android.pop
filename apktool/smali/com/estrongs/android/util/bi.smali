.class final Lcom/estrongs/android/util/bi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/util/af;


# instance fields
.field final synthetic a:Lcom/estrongs/android/util/bj;

.field final synthetic b:Ljava/lang/String;

.field private c:I


# direct methods
.method constructor <init>(Lcom/estrongs/android/util/bj;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/util/bi;->a:Lcom/estrongs/android/util/bj;

    iput-object p2, p0, Lcom/estrongs/android/util/bi;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/util/bi;->c:I

    return-void
.end method


# virtual methods
.method public downloadCompleted(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/estrongs/android/util/aa;

    invoke-virtual {p1}, Lcom/estrongs/android/util/aa;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    invoke-static {}, Lcom/estrongs/android/util/bh;->a()Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/util/bh;->a()Ljava/util/Map;

    move-result-object v3

    iget-object v0, p1, Lcom/estrongs/android/util/aa;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/util/bi;->a:Lcom/estrongs/android/util/bj;

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/estrongs/android/util/bh;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/util/bi;->a:Lcom/estrongs/android/util/bj;

    iget-object v2, p0, Lcom/estrongs/android/util/bi;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/estrongs/android/util/bj;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public downloadError(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 4

    const-wide/16 v2, 0x0

    const-string v0, "image"

    const-string v1, "download image error!"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/estrongs/android/util/bi;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/util/bi;->c:I

    check-cast p1, Lcom/estrongs/android/util/aa;

    invoke-virtual {p1}, Lcom/estrongs/android/util/aa;->g()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/estrongs/android/util/aa;->a()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/estrongs/android/util/bi;->c:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/estrongs/android/util/aa;->f()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/estrongs/android/util/aa;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public downloadProgress(Ljava/lang/Object;JJ)V
    .locals 0

    return-void
.end method

.method public downloadStarted(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
