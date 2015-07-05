.class Lcom/estrongs/android/pop/app/diskusage/k;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/estrongs/android/pop/app/diskusage/h;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/diskusage/h;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/k;->b:Lcom/estrongs/android/pop/app/diskusage/h;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/diskusage/k;->a:Ljava/util/List;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Lcom/estrongs/android/view/aj;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/k;->b:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/h;->o(Lcom/estrongs/android/pop/app/diskusage/h;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/aj;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/k;->b:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/h;->o(Lcom/estrongs/android/pop/app/diskusage/h;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/app/diskusage/l;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/app/diskusage/l;-><init>(Lcom/estrongs/android/pop/app/diskusage/k;Lcom/estrongs/android/view/aj;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/k;->b:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/h;->p(Lcom/estrongs/android/pop/app/diskusage/h;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/k;->b:Lcom/estrongs/android/pop/app/diskusage/h;

    new-instance v3, Lcom/estrongs/android/pop/app/diskusage/e;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/diskusage/k;->b:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/diskusage/h;->q(Lcom/estrongs/android/pop/app/diskusage/h;)Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/estrongs/android/pop/app/diskusage/e;-><init>(Landroid/content/ContextWrapper;)V

    invoke-static {v2, v3}, Lcom/estrongs/android/pop/app/diskusage/h;->a(Lcom/estrongs/android/pop/app/diskusage/h;Lcom/estrongs/android/pop/app/diskusage/e;)Lcom/estrongs/android/pop/app/diskusage/e;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/k;->b:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/h;->r(Lcom/estrongs/android/pop/app/diskusage/h;)Lcom/estrongs/android/pop/app/diskusage/e;

    move-result-object v1

    iget-object v1, v1, Lcom/estrongs/android/pop/app/diskusage/e;->i:Ljava/util/Map;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/k;->b:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/diskusage/h;->k(Lcom/estrongs/android/pop/app/diskusage/h;)Lcom/estrongs/android/pop/app/diskusage/e;

    move-result-object v2

    iget-object v2, v2, Lcom/estrongs/android/pop/app/diskusage/e;->i:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/k;->b:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/h;->r(Lcom/estrongs/android/pop/app/diskusage/h;)Lcom/estrongs/android/pop/app/diskusage/e;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/k;->b:Lcom/estrongs/android/pop/app/diskusage/h;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/diskusage/h;->a:Lcom/estrongs/fs/util/h;

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/diskusage/e;->a(Lcom/estrongs/fs/util/h;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/k;->b:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/h;->r(Lcom/estrongs/android/pop/app/diskusage/h;)Lcom/estrongs/android/pop/app/diskusage/e;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/k;->b:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/diskusage/h;->s(Lcom/estrongs/android/pop/app/diskusage/h;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/pop/app/diskusage/e;->a(J)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/k;->b:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/h;->r(Lcom/estrongs/android/pop/app/diskusage/h;)Lcom/estrongs/android/pop/app/diskusage/e;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/k;->b:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/diskusage/h;->a(Lcom/estrongs/android/pop/app/diskusage/h;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/pop/app/diskusage/e;->b(J)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/k;->b:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/h;->r(Lcom/estrongs/android/pop/app/diskusage/h;)Lcom/estrongs/android/pop/app/diskusage/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/diskusage/e;->a([Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/k;->b:Lcom/estrongs/android/pop/app/diskusage/h;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/k;->b:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/h;->o(Lcom/estrongs/android/pop/app/diskusage/h;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/k;->b:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/h;->t(Lcom/estrongs/android/pop/app/diskusage/h;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/k;->b:Lcom/estrongs/android/pop/app/diskusage/h;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/diskusage/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/k;->b:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/h;->g(Lcom/estrongs/android/pop/app/diskusage/h;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/k;->b:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/h;->y(Lcom/estrongs/android/pop/app/diskusage/h;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/esclasses/ESActivity;

    new-instance v1, Lcom/estrongs/android/pop/app/diskusage/m;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/diskusage/m;-><init>(Lcom/estrongs/android/pop/app/diskusage/k;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->a(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    :try_start_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/k;->b:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/h;->r(Lcom/estrongs/android/pop/app/diskusage/h;)Lcom/estrongs/android/pop/app/diskusage/e;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/k;->b:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/h;->u(Lcom/estrongs/android/pop/app/diskusage/h;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->aV()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/diskusage/e;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/k;->b:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/h;->v(Lcom/estrongs/android/pop/app/diskusage/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/k;->b:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/h;->w(Lcom/estrongs/android/pop/app/diskusage/h;)V
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/k;->b:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/h;->A(Lcom/estrongs/android/pop/app/diskusage/h;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/esclasses/ESActivity;

    new-instance v1, Lcom/estrongs/android/pop/app/diskusage/n;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/diskusage/n;-><init>(Lcom/estrongs/android/pop/app/diskusage/k;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->a(Ljava/lang/Runnable;)V

    goto :goto_1
.end method
