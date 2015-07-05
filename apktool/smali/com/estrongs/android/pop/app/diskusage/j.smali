.class Lcom/estrongs/android/pop/app/diskusage/j;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/diskusage/h;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/diskusage/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/j;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    const-wide/16 v8, 0x7d0

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/j;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/h;->d(Lcom/estrongs/android/pop/app/diskusage/h;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v4, v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/j;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/h;->e(Lcom/estrongs/android/pop/app/diskusage/h;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/j;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/diskusage/h;->f(Lcom/estrongs/android/pop/app/diskusage/h;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v2, v0, v8

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/j;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/diskusage/h;->g(Lcom/estrongs/android/pop/app/diskusage/h;)Landroid/os/Handler;

    move-result-object v2

    sub-long v0, v8, v0

    invoke-virtual {v2, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/j;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/estrongs/android/pop/app/diskusage/h;->b(Lcom/estrongs/android/pop/app/diskusage/h;J)J

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/j;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/h;->h(Lcom/estrongs/android/pop/app/diskusage/h;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/j;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/h;->i(Lcom/estrongs/android/pop/app/diskusage/h;)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x3

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/j;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/h;->j(Lcom/estrongs/android/pop/app/diskusage/h;)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x5

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_9

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    check-cast v0, Lcom/estrongs/android/pop/app/diskusage/u;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/diskusage/u;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/j;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/diskusage/h;->k(Lcom/estrongs/android/pop/app/diskusage/h;)Lcom/estrongs/android/pop/app/diskusage/e;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/estrongs/android/pop/app/diskusage/e;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    new-instance v2, Lcom/estrongs/fs/util/i;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/diskusage/j;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/diskusage/h;->a(Lcom/estrongs/android/pop/app/diskusage/h;)J

    move-result-wide v4

    invoke-direct {v2, v0, v4, v5}, Lcom/estrongs/fs/util/i;-><init>(Ljava/io/File;J)V

    if-eqz v2, :cond_7

    iget-object v3, p0, Lcom/estrongs/android/pop/app/diskusage/j;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v3, v2}, Lcom/estrongs/android/pop/app/diskusage/h;->a(Lcom/estrongs/android/pop/app/diskusage/h;Lcom/estrongs/fs/util/g;)V

    :cond_7
    iget-object v3, p0, Lcom/estrongs/android/pop/app/diskusage/j;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/diskusage/h;->k(Lcom/estrongs/android/pop/app/diskusage/h;)Lcom/estrongs/android/pop/app/diskusage/e;

    move-result-object v3

    iget-object v3, v3, Lcom/estrongs/android/pop/app/diskusage/e;->i:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/j;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    new-instance v1, Lcom/estrongs/android/ui/a/k;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/j;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/diskusage/h;->l(Lcom/estrongs/android/pop/app/diskusage/h;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/diskusage/j;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/diskusage/h;->k(Lcom/estrongs/android/pop/app/diskusage/h;)Lcom/estrongs/android/pop/app/diskusage/e;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/estrongs/android/ui/a/k;-><init>(Landroid/content/Context;Lcom/estrongs/android/pop/app/diskusage/e;)V

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/diskusage/h;->a(Lcom/estrongs/android/pop/app/diskusage/h;Lcom/estrongs/android/ui/a/k;)Lcom/estrongs/android/ui/a/k;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/j;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/h;->n(Lcom/estrongs/android/pop/app/diskusage/h;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/j;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/h;->m(Lcom/estrongs/android/pop/app/diskusage/h;)Lcom/estrongs/android/ui/a/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/j;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v0, v6}, Lcom/estrongs/android/pop/app/diskusage/h;->a(Lcom/estrongs/android/pop/app/diskusage/h;Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/j;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-virtual {v0, v6}, Lcom/estrongs/android/pop/app/diskusage/h;->d(Z)[J

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x4

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    goto/16 :goto_0
.end method
