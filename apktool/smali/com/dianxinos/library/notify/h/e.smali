.class public Lcom/dianxinos/library/notify/h/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/dianxinos/library/b/b/b;

.field private static b:Lcom/dianxinos/library/b/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/dianxinos/library/notify/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notify_items"

    invoke-static {}, Lcom/dianxinos/library/notify/data/k;->b()[C

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dianxinos/library/b/b/b;->a(Landroid/content/Context;Ljava/lang/String;[C)Lcom/dianxinos/library/b/b/b;

    move-result-object v0

    sput-object v0, Lcom/dianxinos/library/notify/h/e;->a:Lcom/dianxinos/library/b/b/b;

    sget-object v0, Lcom/dianxinos/library/notify/h/e;->a:Lcom/dianxinos/library/b/b/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dianxinos/library/notify/h/e;->a:Lcom/dianxinos/library/b/b/b;

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Lcom/dianxinos/library/b/b/b;->a(Ljava/lang/String;)Lcom/dianxinos/library/b/b/a;

    move-result-object v0

    sput-object v0, Lcom/dianxinos/library/notify/h/e;->b:Lcom/dianxinos/library/b/b/a;

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lcom/dianxinos/library/notify/h/e;->b:Lcom/dianxinos/library/b/b/a;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    sget-object v2, Lcom/dianxinos/library/notify/h/e;->b:Lcom/dianxinos/library/b/b/a;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, p0, v0}, Lcom/dianxinos/library/b/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "notify_set"

    invoke-static {v0}, Lcom/dianxinos/library/notify/h/e;->c(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/dianxinos/library/notify/h/e;->b:Lcom/dianxinos/library/b/b/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dianxinos/library/notify/h/e;->b:Lcom/dianxinos/library/b/b/a;

    invoke-interface {v0, p0, p1}, Lcom/dianxinos/library/b/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/util/Set;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    sget-object v0, Lcom/dianxinos/library/notify/h/e;->b:Lcom/dianxinos/library/b/b/a;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/dianxinos/library/notify/h/e;->b:Lcom/dianxinos/library/b/b/a;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/dianxinos/library/b/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_1
    return v0

    :cond_2
    sget-object v0, Lcom/dianxinos/library/notify/h/e;->b:Lcom/dianxinos/library/b/b/a;

    invoke-interface {v0, p0}, Lcom/dianxinos/library/b/b/a;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "notify_set"

    invoke-static {v0, p0}, Lcom/dianxinos/library/notify/h/e;->a(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method public static b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "splash_set"

    invoke-static {v0}, Lcom/dianxinos/library/notify/h/e;->c(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/dianxinos/library/notify/h/e;->b:Lcom/dianxinos/library/b/b/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dianxinos/library/notify/h/e;->b:Lcom/dianxinos/library/b/b/a;

    invoke-interface {v0, p0}, Lcom/dianxinos/library/b/b/a;->a(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "splash_set"

    invoke-static {v0, p0}, Lcom/dianxinos/library/notify/h/e;->a(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method public static c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "pandora_set"

    invoke-static {v0}, Lcom/dianxinos/library/notify/h/e;->c(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    sget-object v0, Lcom/dianxinos/library/notify/h/e;->b:Lcom/dianxinos/library/b/b/a;

    if-eqz v0, :cond_0

    sget-object v2, Lcom/dianxinos/library/notify/h/e;->b:Lcom/dianxinos/library/b/b/a;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, p0, v0}, Lcom/dianxinos/library/b/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\\|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static c(Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "pandora_set"

    invoke-static {v0, p0}, Lcom/dianxinos/library/notify/h/e;->a(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method public static d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "data_pipe_set"

    invoke-static {v0}, Lcom/dianxinos/library/notify/h/e;->c(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "data_pipe_set"

    invoke-static {v0, p0}, Lcom/dianxinos/library/notify/h/e;->a(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method public static e()V
    .locals 1

    sget-object v0, Lcom/dianxinos/library/notify/h/e;->b:Lcom/dianxinos/library/b/b/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dianxinos/library/notify/h/e;->b:Lcom/dianxinos/library/b/b/a;

    invoke-interface {v0}, Lcom/dianxinos/library/b/b/a;->a()V

    :cond_0
    return-void
.end method
