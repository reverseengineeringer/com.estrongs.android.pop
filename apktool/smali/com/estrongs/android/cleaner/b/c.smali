.class public Lcom/estrongs/android/cleaner/b/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)Lcom/estrongs/android/cleaner/b/a;
    .locals 11

    const-string v0, "context"

    const-string v1, "create scanner context"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/estrongs/android/cleaner/b/a;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Lcom/estrongs/android/cleaner/b/a;-><init>(Lcom/estrongs/android/cleaner/b/b;)V

    new-instance v0, Lcom/estrongs/android/cleaner/scandisk/a/d;

    invoke-direct {v0}, Lcom/estrongs/android/cleaner/scandisk/a/d;-><init>()V

    invoke-static {v2, v0}, Lcom/estrongs/android/cleaner/b/a;->a(Lcom/estrongs/android/cleaner/b/a;Lcom/estrongs/android/cleaner/f;)V

    invoke-virtual {v2}, Lcom/estrongs/android/cleaner/b/a;->a()Lcom/estrongs/android/cleaner/i;

    move-result-object v3

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/estrongs/android/cleaner/j;->c()Ljava/util/List;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/estrongs/android/cleaner/scandisk/a/i;

    invoke-direct {v7, v3}, Lcom/estrongs/android/cleaner/scandisk/a/i;-><init>(Lcom/estrongs/android/cleaner/i;)V

    invoke-interface {v6}, Ljava/util/List;->clear()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "/Download"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/estrongs/android/cleaner/scandisk/a/c;->g()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/estrongs/android/cleaner/scandisk/a/c;

    invoke-direct {v8, v3, v6}, Lcom/estrongs/android/cleaner/scandisk/a/c;-><init>(Lcom/estrongs/android/cleaner/i;Ljava/util/List;)V

    invoke-interface {v6}, Ljava/util/List;->clear()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "/DCIM/.thumbnails"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/.thumbnails"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/estrongs/android/cleaner/scandisk/a/l;

    invoke-direct {v9, v3, v6}, Lcom/estrongs/android/cleaner/scandisk/a/l;-><init>(Lcom/estrongs/android/cleaner/i;Ljava/util/List;)V

    invoke-static {}, Lcom/estrongs/android/util/bk;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/estrongs/android/cleaner/scandisk/a/g;

    invoke-direct {v0, v3}, Lcom/estrongs/android/cleaner/scandisk/a/g;-><init>(Lcom/estrongs/android/cleaner/i;)V

    move-object v1, v0

    :goto_2
    invoke-interface {v6}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/estrongs/android/cleaner/j;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->co(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    invoke-interface {v6}, Ljava/util/List;->clear()V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lcom/estrongs/android/cleaner/scandisk/a/f;

    invoke-direct {v0, v3, v6}, Lcom/estrongs/android/cleaner/scandisk/a/f;-><init>(Lcom/estrongs/android/cleaner/i;Ljava/util/List;)V

    move-object v1, v0

    goto :goto_2

    :cond_3
    invoke-static {v4}, Lcom/estrongs/android/util/ap;->co(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Lcom/estrongs/android/cleaner/j;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v6, Lcom/estrongs/android/cleaner/scandisk/a/h;

    invoke-direct {v6, v3, v0}, Lcom/estrongs/android/cleaner/scandisk/a/h;-><init>(Lcom/estrongs/android/cleaner/i;Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v10}, Lcom/estrongs/android/cleaner/scandisk/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v5}, Lcom/estrongs/android/cleaner/scandisk/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v4, Lcom/estrongs/android/cleaner/scandisk/a/b;

    invoke-direct {v4, v3, v0}, Lcom/estrongs/android/cleaner/scandisk/a/b;-><init>(Lcom/estrongs/android/cleaner/i;Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {v2, v6}, Lcom/estrongs/android/cleaner/b/a;->b(Lcom/estrongs/android/cleaner/b/a;Lcom/estrongs/android/cleaner/f;)V

    invoke-static {v2, v7}, Lcom/estrongs/android/cleaner/b/a;->c(Lcom/estrongs/android/cleaner/b/a;Lcom/estrongs/android/cleaner/f;)V

    invoke-static {}, Lcom/estrongs/android/util/bk;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v2, v1}, Lcom/estrongs/android/cleaner/b/a;->c(Lcom/estrongs/android/cleaner/b/a;Lcom/estrongs/android/cleaner/f;)V

    :goto_4
    invoke-static {v2, v4}, Lcom/estrongs/android/cleaner/b/a;->b(Lcom/estrongs/android/cleaner/b/a;Lcom/estrongs/android/cleaner/f;)V

    invoke-static {v2, v8}, Lcom/estrongs/android/cleaner/b/a;->b(Lcom/estrongs/android/cleaner/b/a;Lcom/estrongs/android/cleaner/f;)V

    invoke-static {v2, v9}, Lcom/estrongs/android/cleaner/b/a;->b(Lcom/estrongs/android/cleaner/b/a;Lcom/estrongs/android/cleaner/f;)V

    return-object v2

    :cond_4
    invoke-static {v2, v1}, Lcom/estrongs/android/cleaner/b/a;->b(Lcom/estrongs/android/cleaner/b/a;Lcom/estrongs/android/cleaner/f;)V

    goto :goto_4
.end method
