.class Lcom/estrongs/android/ui/c/b/d;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/c/b/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/c/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/b/d;->a:Lcom/estrongs/android/ui/c/b/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const-wide/16 v0, 0x0

    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    iget-object v2, p0, Lcom/estrongs/android/ui/c/b/d;->a:Lcom/estrongs/android/ui/c/b/a;

    invoke-static {v2}, Lcom/estrongs/android/ui/c/b/a;->a(Lcom/estrongs/android/ui/c/b/a;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/ai;->b(Landroid/content/Context;)Lcom/estrongs/android/pop/ai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/ai;->y()J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/ui/c/b/d;->a:Lcom/estrongs/android/ui/c/b/a;

    invoke-static {v2}, Lcom/estrongs/android/ui/c/b/a;->g(Lcom/estrongs/android/ui/c/b/a;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-wide v2, v0

    move-wide v4, v0

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/estrongs/fs/util/j;->k(Ljava/lang/String;)[J

    move-result-object v0

    aget-wide v8, v0, v12

    aget-wide v10, v0, v13

    sub-long/2addr v8, v10

    aget-wide v10, v0, v14

    mul-long/2addr v8, v10

    add-long/2addr v4, v8

    aget-wide v8, v0, v12

    aget-wide v0, v0, v14

    mul-long/2addr v0, v8

    add-long/2addr v0, v2

    move-wide v2, v4

    :goto_1
    move-wide v4, v2

    move-wide v2, v0

    goto :goto_0

    :cond_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v13, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/d;->a:Lcom/estrongs/android/ui/c/b/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/b/a;->h(Lcom/estrongs/android/ui/c/b/a;)Lcom/estrongs/android/ui/c/a/b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/d;->a:Lcom/estrongs/android/ui/c/b/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/b/a;->h(Lcom/estrongs/android/ui/c/b/a;)Lcom/estrongs/android/ui/c/a/b;

    move-result-object v1

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/c/a/b;->a(Ljava/lang/String;)V

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/d;->a:Lcom/estrongs/android/ui/c/b/a;

    invoke-static {v0, v2, v3}, Lcom/estrongs/android/ui/c/b/a;->a(Lcom/estrongs/android/ui/c/b/a;J)J

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/d;->a:Lcom/estrongs/android/ui/c/b/a;

    invoke-static {v0, v4, v5}, Lcom/estrongs/android/ui/c/b/a;->b(Lcom/estrongs/android/ui/c/b/a;J)J

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/d;->a:Lcom/estrongs/android/ui/c/b/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/b/a;->i(Lcom/estrongs/android/ui/c/b/a;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/d;->a:Lcom/estrongs/android/ui/c/b/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/b/a;->h(Lcom/estrongs/android/ui/c/b/a;)Lcom/estrongs/android/ui/c/a/b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/d;->a:Lcom/estrongs/android/ui/c/b/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/b/a;->h(Lcom/estrongs/android/ui/c/b/a;)Lcom/estrongs/android/ui/c/a/b;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/b;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-wide v0, v2

    move-wide v2, v4

    goto :goto_1
.end method
