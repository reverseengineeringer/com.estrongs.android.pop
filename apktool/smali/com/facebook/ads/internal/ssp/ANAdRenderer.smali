.class public Lcom/facebook/ads/internal/ssp/ANAdRenderer;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSupportedCapabilities()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/facebook/ads/internal/d;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTemplateID(II)I
    .locals 2

    invoke-static {p0, p1}, Lcom/facebook/ads/AdSize;->fromWidthAndHeight(II)Lcom/facebook/ads/AdSize;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/ads/internal/e;->a:Lcom/facebook/ads/internal/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/e;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/facebook/ads/internal/ssp/ANAdRenderer$1;->a:[I

    invoke-virtual {v0}, Lcom/facebook/ads/AdSize;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/facebook/ads/internal/e;->b:Lcom/facebook/ads/internal/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/e;->a()I

    move-result v0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/facebook/ads/internal/e;->f:Lcom/facebook/ads/internal/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/e;->a()I

    move-result v0

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/facebook/ads/internal/e;->e:Lcom/facebook/ads/internal/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/e;->a()I

    move-result v0

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/facebook/ads/internal/e;->d:Lcom/facebook/ads/internal/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/e;->a()I

    move-result v0

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/facebook/ads/internal/e;->c:Lcom/facebook/ads/internal/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/e;->a()I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static renderAd(Landroid/content/Context;Lorg/json/JSONObject;IIILcom/facebook/ads/internal/ssp/ANAdRenderer$Listener;)Landroid/view/View;
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/facebook/ads/internal/adapters/l;->a(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/adapters/l;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/internal/view/c;

    invoke-direct {v0, p0, v1, p4, p5}, Lcom/facebook/ads/internal/view/c;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/l;ILcom/facebook/ads/internal/ssp/ANAdRenderer$Listener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-interface {p5, v0}, Lcom/facebook/ads/internal/ssp/ANAdRenderer$Listener;->onAdError(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
