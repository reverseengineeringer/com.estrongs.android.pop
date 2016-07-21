.class public Lcom/estrongs/android/scanner/c/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/scanner/c/g;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/estrongs/android/scanner/b/b;

.field private final c:Lcom/estrongs/android/scanner/d/m;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/estrongs/android/scanner/b/b;->a()Lcom/estrongs/android/scanner/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/scanner/c/i;->b:Lcom/estrongs/android/scanner/b/b;

    new-instance v0, Lcom/estrongs/android/scanner/d/m;

    invoke-direct {v0}, Lcom/estrongs/android/scanner/d/m;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/scanner/c/i;->c:Lcom/estrongs/android/scanner/d/m;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/scanner/c/i;->d:Ljava/util/Map;

    invoke-static {}, Lcom/estrongs/android/scanner/x;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/scanner/c/i;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;I)Lcom/estrongs/android/scanner/a/c;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/scanner/a/d;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/estrongs/android/scanner/a/a;)V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/a;->c()I

    move-result v0

    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/a;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PrepareHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleExtra\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xf

    if-eq v0, v2, :cond_0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/estrongs/android/scanner/c/i;->b:Lcom/estrongs/android/scanner/b/b;

    invoke-virtual {v2, v1}, Lcom/estrongs/android/scanner/b/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "PrepareHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6b64\u76ee\u5f55\u4e0d\u7b97\u505a\u65e5\u5fd7\u76ee\u5f55\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/estrongs/android/scanner/c/i;->b:Lcom/estrongs/android/scanner/b/b;

    invoke-virtual {v2, v1}, Lcom/estrongs/android/scanner/b/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v0, "PrepareHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6b64\u76ee\u5f55\u5df2\u7ecf\u6309\u7167logName\u8bbe\u7f6e\uff0c\u65e0\u9700\u505a\u4efb\u4f55\u4fee\u6539\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v2, 0xd

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/scanner/c/i;->b:Lcom/estrongs/android/scanner/b/b;

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/b/b;->b()V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/scanner/c/i;->c:Lcom/estrongs/android/scanner/d/m;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/scanner/d/m;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const-string v2, "PrepareHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleExtra->pids\u4e3a\u7a7a:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1, v0}, Lcom/estrongs/android/scanner/a/a;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_6
    const/16 v2, 0xe

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/scanner/c/i;->b:Lcom/estrongs/android/scanner/b/b;

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/b/b;->b()V

    iget-object v0, p0, Lcom/estrongs/android/scanner/c/i;->b:Lcom/estrongs/android/scanner/b/b;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/scanner/b/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1, v0}, Lcom/estrongs/android/scanner/a/a;->a(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Lcom/estrongs/android/scanner/a/a;->a(Z)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/scanner/c/i;->b:Lcom/estrongs/android/scanner/b/b;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/scanner/b/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Lcom/estrongs/android/scanner/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/c/i;->b:Lcom/estrongs/android/scanner/b/b;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/scanner/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1, v5}, Lcom/estrongs/android/scanner/a/a;->a(Z)V

    goto :goto_1
.end method

.method public a(Lcom/estrongs/android/scanner/a/f;)V
    .locals 12

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/f;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/scanner/c/i;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/f;->d()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/estrongs/android/scanner/c/i;->c:Lcom/estrongs/android/scanner/d/m;

    invoke-virtual {v0, v6}, Lcom/estrongs/android/scanner/d/m;->e(Ljava/lang/String;)Lcom/estrongs/android/scanner/d/q;

    move-result-object v7

    invoke-virtual {v7}, Lcom/estrongs/android/scanner/d/q;->a()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/estrongs/android/scanner/a/f;->a(J)V

    invoke-virtual {v7}, Lcom/estrongs/android/scanner/d/q;->b()Z

    move-result v5

    iget-object v0, p0, Lcom/estrongs/android/scanner/c/i;->a:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    iget-object v0, p0, Lcom/estrongs/android/scanner/c/i;->d:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-nez v0, :cond_4

    move-object v1, v4

    :goto_0
    if-nez v0, :cond_5

    move-object v0, v4

    :goto_1
    if-nez v8, :cond_f

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/estrongs/android/scanner/c/i;->b:Lcom/estrongs/android/scanner/b/b;

    invoke-virtual {v1, v6}, Lcom/estrongs/android/scanner/b/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    if-nez v4, :cond_d

    iget-object v0, p0, Lcom/estrongs/android/scanner/c/i;->b:Lcom/estrongs/android/scanner/b/b;

    invoke-virtual {v0, v6}, Lcom/estrongs/android/scanner/b/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    if-nez v5, :cond_8

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/scanner/c/i;->b:Lcom/estrongs/android/scanner/b/b;

    invoke-virtual {v0, v6}, Lcom/estrongs/android/scanner/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    :goto_4
    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/scanner/c/i;->b:Lcom/estrongs/android/scanner/b/b;

    invoke-virtual {v0, v6}, Lcom/estrongs/android/scanner/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v3, v2

    :cond_2
    invoke-virtual {p1, v2}, Lcom/estrongs/android/scanner/a/f;->b(Z)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/c/i;->d:Ljava/util/Map;

    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v4, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lcom/estrongs/android/scanner/a/f;->b(Z)V

    invoke-virtual {p1, v1}, Lcom/estrongs/android/scanner/a/f;->a(Ljava/lang/String;)V

    move-object v2, v4

    :goto_5
    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/f;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/scanner/a/d;

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/estrongs/android/scanner/a/d;->a(I)V

    invoke-virtual {v7}, Lcom/estrongs/android/scanner/d/q;->a()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Lcom/estrongs/android/scanner/a/d;->c(J)V

    or-int v5, v3, v8

    invoke-virtual {v0, v5}, Lcom/estrongs/android/scanner/a/d;->a(Z)V

    if-eqz v2, :cond_9

    invoke-virtual {v0, v2}, Lcom/estrongs/android/scanner/a/d;->b(Ljava/lang/String;)V

    goto :goto_6

    :cond_4
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_5
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_6
    move v0, v3

    goto :goto_4

    :cond_7
    if-eqz v4, :cond_c

    move v0, v2

    goto :goto_4

    :cond_8
    if-nez v1, :cond_c

    if-nez v4, :cond_c

    move v0, v3

    goto :goto_4

    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {v0, v1}, Lcom/estrongs/android/scanner/a/d;->b(Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    if-eqz v8, :cond_3

    const-string v5, "SDCards"

    invoke-virtual {v0, v5}, Lcom/estrongs/android/scanner/a/d;->b(Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    move-object v2, v4

    move v3, v0

    goto :goto_5

    :cond_c
    move v0, v5

    goto :goto_4

    :cond_d
    move-object v1, v0

    goto :goto_3

    :cond_e
    move-object v4, v1

    goto/16 :goto_2

    :cond_f
    move-object v2, v1

    move v3, v5

    move-object v1, v0

    goto :goto_5
.end method

.method public a(Lcom/estrongs/android/scanner/a/g;)V
    .locals 12

    const/4 v5, 0x0

    const/4 v11, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/g;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/scanner/c/i;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/g;->d()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/estrongs/android/util/ap;->bB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/estrongs/android/scanner/c/i;->c:Lcom/estrongs/android/scanner/d/m;

    invoke-virtual {v0, v8}, Lcom/estrongs/android/scanner/d/m;->e(Ljava/lang/String;)Lcom/estrongs/android/scanner/d/q;

    move-result-object v9

    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/g;->a()Lcom/estrongs/android/scanner/a/c;

    move-result-object v2

    instance-of v0, v2, Lcom/estrongs/android/scanner/a/b;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/g;->c()I

    move-result v0

    if-eq v0, v11, :cond_0

    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/g;->c()I

    move-result v0

    if-ne v0, v3, :cond_2

    :cond_2
    invoke-virtual {v9}, Lcom/estrongs/android/scanner/d/q;->b()Z

    move-result v6

    iget-object v0, p0, Lcom/estrongs/android/scanner/c/i;->a:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    iget-object v0, p0, Lcom/estrongs/android/scanner/c/i;->d:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-nez v0, :cond_5

    move-object v1, v5

    :goto_1
    if-nez v0, :cond_6

    move-object v0, v5

    :goto_2
    if-nez v10, :cond_11

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/estrongs/android/scanner/c/i;->b:Lcom/estrongs/android/scanner/b/b;

    invoke-virtual {v1, v7}, Lcom/estrongs/android/scanner/b/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_3
    if-nez v5, :cond_f

    iget-object v0, p0, Lcom/estrongs/android/scanner/c/i;->b:Lcom/estrongs/android/scanner/b/b;

    invoke-virtual {v0, v7}, Lcom/estrongs/android/scanner/b/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    if-nez v6, :cond_9

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/scanner/c/i;->b:Lcom/estrongs/android/scanner/b/b;

    invoke-virtual {v0, v7}, Lcom/estrongs/android/scanner/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v3

    :goto_5
    if-eqz v1, :cond_d

    iget-object v0, p0, Lcom/estrongs/android/scanner/c/i;->b:Lcom/estrongs/android/scanner/b/b;

    invoke-virtual {v0, v7}, Lcom/estrongs/android/scanner/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v4, v3

    :cond_3
    invoke-virtual {p1, v3}, Lcom/estrongs/android/scanner/a/g;->b(Z)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/c/i;->d:Ljava/util/Map;

    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v5, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v4

    move-object v4, v5

    :goto_6
    invoke-static {v7}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9}, Lcom/estrongs/android/scanner/d/q;->c()I

    move-result v5

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    if-ne v5, v11, :cond_4

    const/16 v3, 0x65

    :cond_4
    :goto_7
    invoke-virtual {v2, v3}, Lcom/estrongs/android/scanner/a/c;->a(I)V

    or-int/2addr v0, v10

    invoke-virtual {v2, v0}, Lcom/estrongs/android/scanner/a/c;->a(Z)V

    instance-of v0, v2, Lcom/estrongs/android/scanner/a/d;

    if-eqz v0, :cond_0

    move-object v0, v2

    check-cast v0, Lcom/estrongs/android/scanner/a/d;

    invoke-virtual {v9}, Lcom/estrongs/android/scanner/d/q;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/scanner/a/d;->c(J)V

    if-eqz v4, :cond_a

    invoke-virtual {v0, v4}, Lcom/estrongs/android/scanner/a/d;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_6
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    :cond_7
    move v0, v4

    goto :goto_5

    :cond_8
    if-eqz v5, :cond_e

    move v0, v3

    goto :goto_5

    :cond_9
    if-nez v1, :cond_e

    if-nez v5, :cond_e

    move v0, v4

    goto :goto_5

    :cond_a
    if-eqz v1, :cond_b

    invoke-virtual {v0, v1}, Lcom/estrongs/android/scanner/a/d;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    if-eqz v10, :cond_0

    const-string v1, "SDCards"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/scanner/a/d;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    move v3, v5

    goto :goto_7

    :cond_d
    move-object v4, v5

    goto :goto_6

    :cond_e
    move v0, v6

    goto :goto_5

    :cond_f
    move-object v1, v0

    goto/16 :goto_4

    :cond_10
    move-object v5, v1

    goto/16 :goto_3

    :cond_11
    move-object v4, v1

    move-object v1, v0

    move v0, v6

    goto :goto_6
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/c/i;->b:Lcom/estrongs/android/scanner/b/b;

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/b/b;->d()V

    return-void
.end method
