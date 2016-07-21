.class public Lcom/facebook/ads/NativeAdViewAttributes;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/graphics/Typeface;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const v1, -0xbd8719

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/facebook/ads/NativeAdViewAttributes;->a:Landroid/graphics/Typeface;

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/NativeAdViewAttributes;->b:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/facebook/ads/NativeAdViewAttributes;->c:I

    const v0, -0xb1a99b

    iput v0, p0, Lcom/facebook/ads/NativeAdViewAttributes;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/NativeAdViewAttributes;->e:I

    iput v1, p0, Lcom/facebook/ads/NativeAdViewAttributes;->f:I

    iput v1, p0, Lcom/facebook/ads/NativeAdViewAttributes;->g:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/NativeAdViewAttributes;->h:Z

    return-void
.end method


# virtual methods
.method public getAutoplay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/NativeAdViewAttributes;->h:Z

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/NativeAdViewAttributes;->b:I

    return v0
.end method

.method public getButtonBorderColor()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/NativeAdViewAttributes;->g:I

    return v0
.end method

.method public getButtonColor()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/NativeAdViewAttributes;->e:I

    return v0
.end method

.method public getButtonTextColor()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/NativeAdViewAttributes;->f:I

    return v0
.end method

.method public getDescriptionTextColor()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/NativeAdViewAttributes;->d:I

    return v0
.end method

.method public getDescriptionTextSize()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public getTitleTextColor()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/NativeAdViewAttributes;->c:I

    return v0
.end method

.method public getTitleTextSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAdViewAttributes;->a:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public setAutoplay(Z)Lcom/facebook/ads/NativeAdViewAttributes;
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/NativeAdViewAttributes;->h:Z

    return-object p0
.end method

.method public setBackgroundColor(I)Lcom/facebook/ads/NativeAdViewAttributes;
    .locals 0

    iput p1, p0, Lcom/facebook/ads/NativeAdViewAttributes;->b:I

    return-object p0
.end method

.method public setButtonBorderColor(I)Lcom/facebook/ads/NativeAdViewAttributes;
    .locals 0

    iput p1, p0, Lcom/facebook/ads/NativeAdViewAttributes;->g:I

    return-object p0
.end method

.method public setButtonColor(I)Lcom/facebook/ads/NativeAdViewAttributes;
    .locals 0

    iput p1, p0, Lcom/facebook/ads/NativeAdViewAttributes;->e:I

    return-object p0
.end method

.method public setButtonTextColor(I)Lcom/facebook/ads/NativeAdViewAttributes;
    .locals 0

    iput p1, p0, Lcom/facebook/ads/NativeAdViewAttributes;->f:I

    return-object p0
.end method

.method public setDescriptionTextColor(I)Lcom/facebook/ads/NativeAdViewAttributes;
    .locals 0

    iput p1, p0, Lcom/facebook/ads/NativeAdViewAttributes;->d:I

    return-object p0
.end method

.method public setTitleTextColor(I)Lcom/facebook/ads/NativeAdViewAttributes;
    .locals 0

    iput p1, p0, Lcom/facebook/ads/NativeAdViewAttributes;->c:I

    return-object p0
.end method

.method public setTypeface(Landroid/graphics/Typeface;)Lcom/facebook/ads/NativeAdViewAttributes;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/NativeAdViewAttributes;->a:Landroid/graphics/Typeface;

    return-object p0
.end method
