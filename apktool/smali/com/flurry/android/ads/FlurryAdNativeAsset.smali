.class public final Lcom/flurry/android/ads/FlurryAdNativeAsset;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/flurry/sdk/da;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/android/ads/FlurryAdNativeAsset;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/ads/FlurryAdNativeAsset;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/flurry/sdk/da;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "asset cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/flurry/android/ads/FlurryAdNativeAsset;->b:Lcom/flurry/sdk/da;

    iput p2, p0, Lcom/flurry/android/ads/FlurryAdNativeAsset;->c:I

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/flurry/android/ads/FlurryAdNativeAsset;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->j()Lcom/flurry/sdk/m;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/ads/FlurryAdNativeAsset;->b:Lcom/flurry/sdk/da;

    iget v2, p0, Lcom/flurry/android/ads/FlurryAdNativeAsset;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/m;->a(Lcom/flurry/sdk/da;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/flurry/android/ads/FlurryAdNativeAsset;->a:Ljava/lang/String;

    const-string v1, "Cannot call getValue() this is video ad. Please look for video asset."

    invoke-static {v0, v1}, Lcom/flurry/sdk/kg;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Z
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNativeAsset;->b:Lcom/flurry/sdk/da;

    iget-object v0, v0, Lcom/flurry/sdk/da;->f:Ljava/util/Map;

    iget-object v2, p0, Lcom/flurry/android/ads/FlurryAdNativeAsset;->b:Lcom/flurry/sdk/da;

    iget-object v2, v2, Lcom/flurry/sdk/da;->a:Ljava/lang/String;

    sget-object v3, Lcom/flurry/sdk/fg;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/flurry/android/ads/FlurryAdNativeAsset;->b:Lcom/flurry/sdk/da;

    iget-object v2, v2, Lcom/flurry/sdk/da;->a:Ljava/lang/String;

    sget-object v3, Lcom/flurry/sdk/fg;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/flurry/android/ads/FlurryAdNativeAsset;->b:Lcom/flurry/sdk/da;

    iget-object v2, v2, Lcom/flurry/sdk/da;->a:Ljava/lang/String;

    sget-object v3, Lcom/flurry/sdk/fg;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    sget-object v2, Lcom/flurry/sdk/fg;->p:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/flurry/sdk/fg;->p:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getAssetView(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->j()Lcom/flurry/sdk/m;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/ads/FlurryAdNativeAsset;->b:Lcom/flurry/sdk/da;

    iget v2, p0, Lcom/flurry/android/ads/FlurryAdNativeAsset;->c:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/flurry/sdk/m;->a(Landroid/content/Context;Lcom/flurry/sdk/da;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNativeAsset;->b:Lcom/flurry/sdk/da;

    iget-object v0, v0, Lcom/flurry/sdk/da;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/flurry/android/ads/FlurryAdNativeAssetType;
    .locals 2

    sget-object v0, Lcom/flurry/android/ads/FlurryAdNativeAsset$1;->a:[I

    iget-object v1, p0, Lcom/flurry/android/ads/FlurryAdNativeAsset;->b:Lcom/flurry/sdk/da;

    iget-object v1, v1, Lcom/flurry/sdk/da;->b:Lcom/flurry/sdk/db;

    invoke-virtual {v1}, Lcom/flurry/sdk/db;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/flurry/android/ads/FlurryAdNativeAssetType;->TEXT:Lcom/flurry/android/ads/FlurryAdNativeAssetType;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/flurry/android/ads/FlurryAdNativeAssetType;->IMAGE:Lcom/flurry/android/ads/FlurryAdNativeAssetType;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getValue()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/flurry/android/ads/FlurryAdNativeAsset$1;->a:[I

    iget-object v2, p0, Lcom/flurry/android/ads/FlurryAdNativeAsset;->b:Lcom/flurry/sdk/da;

    iget-object v2, v2, Lcom/flurry/sdk/da;->b:Lcom/flurry/sdk/db;

    invoke-virtual {v2}, Lcom/flurry/sdk/db;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdNativeAsset;->b:Lcom/flurry/sdk/da;

    iget-object v0, v0, Lcom/flurry/sdk/da;->c:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/flurry/android/ads/FlurryAdNativeAsset;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/flurry/android/ads/FlurryAdNativeAsset;->a:Ljava/lang/String;

    const-string v2, "Cannot call getValue() on video type."

    invoke-static {v1, v2}, Lcom/flurry/sdk/kg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public loadAssetIntoView(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->j()Lcom/flurry/sdk/m;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/ads/FlurryAdNativeAsset;->b:Lcom/flurry/sdk/da;

    iget v2, p0, Lcom/flurry/android/ads/FlurryAdNativeAsset;->c:I

    invoke-virtual {v0, v1, p1, v2}, Lcom/flurry/sdk/m;->a(Lcom/flurry/sdk/da;Landroid/view/View;I)V

    return-void
.end method
