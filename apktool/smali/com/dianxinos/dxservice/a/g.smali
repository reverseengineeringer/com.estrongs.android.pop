.class public final Lcom/dianxinos/dxservice/a/g;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)Ljava/util/Map;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    invoke-static {p0}, Lcom/dianxinos/DXStatService/a/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/dianxinos/DXStatService/a/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/dianxinos/DXStatService/a/a;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/dianxinos/DXStatService/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/dianxinos/DXStatService/a/a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0}, Lcom/dianxinos/DXStatService/a/a;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0}, Lcom/dianxinos/DXStatService/a/a;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0}, Lcom/dianxinos/DXStatService/a/a;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p0}, Lcom/dianxinos/DXStatService/a/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p0}, Lcom/dianxinos/DXStatService/a/a;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {p0}, Lcom/dianxinos/DXStatService/a/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-static {p0}, Lcom/dianxinos/DXStatService/a/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/dianxinos/DXStatService/a/a;->a()Ljava/lang/String;

    move-result-object v13

    const-string v14, "a"

    invoke-static {v0, v1, v14}, Lcom/dianxinos/dxservice/a/g;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "b"

    invoke-static {v0, v2, v1}, Lcom/dianxinos/dxservice/a/g;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "c"

    invoke-static {v0, v3, v1}, Lcom/dianxinos/dxservice/a/g;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "d"

    invoke-static {v0, v4, v1}, Lcom/dianxinos/dxservice/a/g;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "e"

    invoke-static {v0, v5, v1}, Lcom/dianxinos/dxservice/a/g;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "f"

    invoke-static {v0, v6, v1}, Lcom/dianxinos/dxservice/a/g;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "k"

    invoke-static {v0, v7, v1}, Lcom/dianxinos/dxservice/a/g;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "m"

    invoke-static {v0, v8, v1}, Lcom/dianxinos/dxservice/a/g;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "g"

    invoke-static {v0, v9, v1}, Lcom/dianxinos/dxservice/a/g;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "h"

    invoke-static {v0, v10, v1}, Lcom/dianxinos/dxservice/a/g;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "i"

    invoke-static {v0, v11, v1}, Lcom/dianxinos/dxservice/a/g;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "j"

    invoke-static {v0, v12, v1}, Lcom/dianxinos/dxservice/a/g;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mmcid"

    invoke-static {v0, v13, v1}, Lcom/dianxinos/dxservice/a/g;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/dianxinos/DXStatService/stat/TokenManager;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "etcunid"

    invoke-static {v0, v1, v2}, Lcom/dianxinos/dxservice/a/g;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "NewToken"

    const-string v2, "etcunname"

    invoke-static {v0, v1, v2}, Lcom/dianxinos/dxservice/a/g;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/dianxinos/DXStatService/stat/TokenManager;->b(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dt"

    invoke-static {v0, v1, v2}, Lcom/dianxinos/dxservice/a/g;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
