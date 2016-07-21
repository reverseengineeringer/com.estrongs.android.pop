.class public Lcom/estrongs/android/pop/app/analysis/b/ac;
.super Lcom/estrongs/android/pop/app/analysis/b/v;


# instance fields
.field private r:Lcom/estrongs/fs/impl/c/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/b/v;-><init>()V

    return-void
.end method

.method private a(Lcom/estrongs/fs/h;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/fs/h;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ac;->r:Lcom/estrongs/fs/impl/c/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/fs/impl/c/a;

    invoke-direct {v0}, Lcom/estrongs/fs/impl/c/a;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ac;->r:Lcom/estrongs/fs/impl/c/a;

    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v0

    sget-object v2, Lcom/estrongs/fs/w;->a:Lcom/estrongs/fs/w;

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ac;->r:Lcom/estrongs/fs/impl/c/a;

    sget-object v2, Lcom/estrongs/fs/i;->c:Lcom/estrongs/fs/i;

    sget-object v3, Lcom/estrongs/android/util/TypedMap;->EMPTY:Lcom/estrongs/android/util/TypedMap;

    invoke-virtual {v0, p1, v2, v3}, Lcom/estrongs/fs/impl/c/a;->a(Lcom/estrongs/fs/h;Lcom/estrongs/fs/i;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/analysis/b/ac;->a(Lcom/estrongs/fs/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-object v1

    :cond_2
    :try_start_1
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method protected r()V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ac;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/ac;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/ac;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/app/analysis/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ac;->y:Lcom/estrongs/android/a/b/a;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ac;->y:Lcom/estrongs/android/a/b/a;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ac;->x:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ac;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/ac;->y:Lcom/estrongs/android/a/b/a;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/ac;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/app/analysis/a;->a(Ljava/lang/String;Lcom/estrongs/android/a/b/a;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/analysis/b/ac;->a(Lcom/estrongs/fs/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    new-instance v4, Lcom/estrongs/android/pop/app/analysis/b/g;

    invoke-direct {v4, p0}, Lcom/estrongs/android/pop/app/analysis/b/g;-><init>(Lcom/estrongs/android/pop/app/analysis/b/a;)V

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/estrongs/android/pop/app/analysis/b/g;->a:Z

    iput-object v0, v4, Lcom/estrongs/android/pop/app/analysis/b/g;->b:Lcom/estrongs/fs/h;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ac;->x:Ljava/util/List;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2
.end method

.method public w()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
