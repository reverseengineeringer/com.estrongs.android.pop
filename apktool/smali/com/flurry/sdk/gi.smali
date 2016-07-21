.class public Lcom/flurry/sdk/gi;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Lcom/flurry/sdk/gj;Lcom/flurry/sdk/s;Lcom/flurry/sdk/gt$a;)Lcom/flurry/sdk/gh;
    .locals 2

    sget-object v0, Lcom/flurry/sdk/gi$1;->a:[I

    invoke-virtual {p1}, Lcom/flurry/sdk/gj;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/flurry/sdk/gg;

    invoke-direct {v0, p0, p2, p3}, Lcom/flurry/sdk/gg;-><init>(Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/gt$a;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/flurry/sdk/gd;

    invoke-direct {v0, p0, p2, p3}, Lcom/flurry/sdk/gd;-><init>(Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/gt$a;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/flurry/sdk/gb;

    invoke-direct {v0, p0, p2, p3}, Lcom/flurry/sdk/gb;-><init>(Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/gt$a;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/flurry/sdk/gc;

    invoke-direct {v0, p0, p2, p3}, Lcom/flurry/sdk/gc;-><init>(Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/gt$a;)V

    invoke-virtual {v0}, Lcom/flurry/sdk/gc;->d()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
