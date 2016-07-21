.class public Lcom/dianxinos/dxservice/core/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/dianxinos/dxservice/a/c;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    sget-object v0, Lcom/dianxinos/dxservice/a/c;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "dev"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sput-boolean v1, Lcom/dianxinos/dxservice/a/c;->b:Z

    sput-boolean v1, Lcom/dianxinos/dxservice/a/c;->c:Z

    sget-boolean v0, Lcom/dianxinos/dxservice/a/c;->c:Z

    sput-boolean v0, Lcom/dianxinos/dxservice/a/c;->e:Z

    sget-boolean v0, Lcom/dianxinos/dxservice/a/c;->c:Z

    sput-boolean v0, Lcom/dianxinos/dxservice/a/c;->d:Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "test"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sput-boolean v1, Lcom/dianxinos/dxservice/a/c;->b:Z

    sput-boolean v1, Lcom/dianxinos/dxservice/a/c;->c:Z

    sget-boolean v0, Lcom/dianxinos/dxservice/a/c;->c:Z

    sput-boolean v0, Lcom/dianxinos/dxservice/a/c;->e:Z

    sget-boolean v0, Lcom/dianxinos/dxservice/a/c;->c:Z

    sput-boolean v0, Lcom/dianxinos/dxservice/a/c;->d:Z

    goto :goto_0

    :cond_1
    const-string v0, "prod"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sput-boolean v2, Lcom/dianxinos/dxservice/a/c;->b:Z

    sput-boolean v2, Lcom/dianxinos/dxservice/a/c;->c:Z

    sget-boolean v0, Lcom/dianxinos/dxservice/a/c;->c:Z

    sput-boolean v0, Lcom/dianxinos/dxservice/a/c;->e:Z

    sget-boolean v0, Lcom/dianxinos/dxservice/a/c;->c:Z

    sput-boolean v0, Lcom/dianxinos/dxservice/a/c;->d:Z

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong environment type!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
