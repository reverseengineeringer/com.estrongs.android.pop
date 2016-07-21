.class public Lcom/flurry/sdk/fa;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/flurry/sdk/bb;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/au;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/bb;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/flurry/sdk/s;",
            "Lcom/flurry/sdk/au;",
            "I)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/flurry/sdk/b;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/b;-><init>(Lcom/flurry/sdk/bb;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/au;)V

    new-instance v1, Lcom/flurry/sdk/c;

    invoke-direct {v1}, Lcom/flurry/sdk/c;-><init>()V

    iput-object v0, v1, Lcom/flurry/sdk/c;->a:Lcom/flurry/sdk/b;

    iput p5, v1, Lcom/flurry/sdk/c;->b:I

    invoke-virtual {v1}, Lcom/flurry/sdk/c;->b()V

    goto :goto_0
.end method
