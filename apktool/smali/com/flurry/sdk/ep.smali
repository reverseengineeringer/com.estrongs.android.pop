.class public Lcom/flurry/sdk/ep;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/sdk/ek$a;)Lcom/flurry/sdk/ek;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/flurry/sdk/ek$a;",
            ")",
            "Lcom/flurry/sdk/ek;"
        }
    .end annotation

    new-instance v0, Lcom/flurry/sdk/ek;

    invoke-direct {v0}, Lcom/flurry/sdk/ek;-><init>()V

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/ep$5;

    invoke-direct {v2, v0, p0, p1, p2}, Lcom/flurry/sdk/ep$5;-><init>(Lcom/flurry/sdk/ek;Ljava/lang/String;Ljava/util/Map;Lcom/flurry/sdk/ek$a;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/sdk/eq$a;)Lcom/flurry/sdk/eq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/flurry/sdk/eq$a;",
            ")",
            "Lcom/flurry/sdk/eq;"
        }
    .end annotation

    new-instance v0, Lcom/flurry/sdk/eq;

    invoke-direct {v0}, Lcom/flurry/sdk/eq;-><init>()V

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/ep$4;

    invoke-direct {v2, v0, p0, p1, p2}, Lcom/flurry/sdk/ep$4;-><init>(Lcom/flurry/sdk/eq;Ljava/lang/String;Ljava/util/Map;Lcom/flurry/sdk/eq$a;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static a(Lcom/flurry/sdk/eg;Ljava/lang/String;Lcom/flurry/sdk/eh$a;)V
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ep$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/flurry/sdk/ep$2;-><init>(Lcom/flurry/sdk/eg;Ljava/lang/String;Lcom/flurry/sdk/eh$a;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Lcom/flurry/sdk/en$a;)V
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ep$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/ep$1;-><init>(Lcom/flurry/sdk/en$a;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Lcom/flurry/sdk/er$a;)V
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ep$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/ep$3;-><init>(Lcom/flurry/sdk/er$a;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/flurry/sdk/ej$a;)V
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ep$6;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/ep$6;-><init>(Ljava/lang/String;Lcom/flurry/sdk/ej$a;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    return-void
.end method
