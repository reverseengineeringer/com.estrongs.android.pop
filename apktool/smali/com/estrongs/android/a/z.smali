.class public Lcom/estrongs/android/a/z;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/estrongs/android/a/aa;

    invoke-direct {v0}, Lcom/estrongs/android/a/aa;-><init>()V

    sput-object v0, Lcom/estrongs/android/a/z;->a:Ljava/util/Comparator;

    return-void
.end method

.method public static a(Lcom/estrongs/android/a/a/k;I)Lcom/estrongs/android/a/b/a;
    .locals 6

    invoke-virtual {p0, p1}, Lcom/estrongs/android/a/a/k;->a(I)Lcom/estrongs/android/a/a/m;

    move-result-object v4

    iget v0, v4, Lcom/estrongs/android/a/a/m;->b:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/a/b/a;

    invoke-direct {v0}, Lcom/estrongs/android/a/b/a;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, v4, Lcom/estrongs/android/a/a/m;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, v4, Lcom/estrongs/android/a/a/m;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/q;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/q;->a()Lcom/estrongs/fs/h;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/estrongs/android/a/b/a;

    const/4 v2, 0x0

    iget v3, v4, Lcom/estrongs/android/a/a/m;->b:I

    iget-wide v4, v4, Lcom/estrongs/android/a/a/m;->c:J

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/a/b/a;-><init>(Ljava/util/List;IIJ)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/estrongs/android/a/a/k;)Lcom/estrongs/android/a/b/a;
    .locals 8

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/estrongs/android/a/a/k;->e()Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    :goto_0
    const-wide/16 v4, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/q;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/q;->h()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/q;->d()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/q;->a()Lcom/estrongs/fs/h;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->V(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Lcom/estrongs/android/a/b/p;

    :goto_2
    invoke-virtual {p1, v0}, Lcom/estrongs/android/a/a/k;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->aY(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->X(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const-class v0, Lcom/estrongs/android/a/b/o;

    goto :goto_2

    :cond_4
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->Z(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-class v0, Lcom/estrongs/android/a/b/w;

    goto :goto_2

    :cond_5
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ae(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-class v0, Lcom/estrongs/android/a/b/e;

    goto :goto_2

    :cond_6
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->ag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-class v0, Lcom/estrongs/android/a/b/b;

    goto :goto_2

    :cond_7
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-class v0, Lcom/estrongs/android/a/b/k;

    goto :goto_2

    :cond_8
    new-instance v0, Lcom/estrongs/android/a/b/a;

    invoke-direct {v0}, Lcom/estrongs/android/a/b/a;-><init>()V

    :goto_3
    return-object v0

    :cond_9
    new-instance v0, Lcom/estrongs/android/a/b/a;

    const/4 v2, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/a/b/a;-><init>(Ljava/util/List;IIJ)V

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;Lcom/estrongs/android/a/a/v;)Lcom/estrongs/android/a/b/u;
    .locals 12

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {p1}, Lcom/estrongs/android/a/a/v;->c()Ljava/util/Map;

    move-result-object v6

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v3, v8

    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/r;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/r;->h()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/r;->d()J

    move-result-wide v10

    add-long/2addr v4, v10

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/r;->a()Lcom/estrongs/fs/h;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/estrongs/android/a/z;->a:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Lcom/estrongs/android/a/b/u;

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/a/b/u;-><init>(Ljava/util/List;IIJ)V

    return-object v0
.end method
