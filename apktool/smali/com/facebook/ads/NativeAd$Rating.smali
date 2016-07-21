.class public Lcom/facebook/ads/NativeAd$Rating;
.super Ljava/lang/Object;


# instance fields
.field private final a:D

.field private final b:D


# direct methods
.method private constructor <init>(DD)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/facebook/ads/NativeAd$Rating;->a:D

    iput-wide p3, p0, Lcom/facebook/ads/NativeAd$Rating;->b:D

    return-void
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/facebook/ads/NativeAd$Rating;
    .locals 8

    const/4 v0, 0x0

    const-wide/16 v6, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "value"

    invoke-virtual {p0, v1, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    const-string v1, "scale"

    invoke-virtual {p0, v1, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    cmpl-double v1, v2, v6

    if-eqz v1, :cond_0

    cmpl-double v1, v4, v6

    if-eqz v1, :cond_0

    new-instance v0, Lcom/facebook/ads/NativeAd$Rating;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/facebook/ads/NativeAd$Rating;-><init>(DD)V

    goto :goto_0
.end method


# virtual methods
.method public getScale()D
    .locals 2

    iget-wide v0, p0, Lcom/facebook/ads/NativeAd$Rating;->b:D

    return-wide v0
.end method

.method public getValue()D
    .locals 2

    iget-wide v0, p0, Lcom/facebook/ads/NativeAd$Rating;->a:D

    return-wide v0
.end method
