.class public abstract Lcom/facebook/ads/internal/view/j;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAdViewAttributes;)Landroid/widget/LinearLayout;
    .locals 7

    const/4 v6, -0x2

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdStarRating()Lcom/facebook/ads/NativeAd$Rating;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAd$Rating;->getValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    new-instance v2, Landroid/widget/RatingBar;

    const/4 v3, 0x0

    const v4, 0x101007d

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setStepSize(F)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setIsIndicator(Z)V

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAd$Rating;->getScale()D

    move-result-wide v4

    double-to-int v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setNumStars(I)V

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAd$Rating;->getValue()D

    move-result-wide v4

    double-to-float v1, v4

    invoke-virtual {v2, v1}, Landroid/widget/RatingBar;->setRating(F)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/facebook/ads/internal/view/l;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/view/l;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdSocialContext()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/l;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v1, p2}, Lcom/facebook/ads/internal/view/j;->b(Landroid/widget/TextView;Lcom/facebook/ads/NativeAdViewAttributes;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static a(Landroid/widget/TextView;Lcom/facebook/ads/NativeAdViewAttributes;)V
    .locals 2

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAdViewAttributes;->getTitleTextColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAdViewAttributes;->getTitleTextSize()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAdViewAttributes;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void
.end method

.method public static b(Landroid/widget/TextView;Lcom/facebook/ads/NativeAdViewAttributes;)V
    .locals 1

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAdViewAttributes;->getDescriptionTextColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAdViewAttributes;->getDescriptionTextSize()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAdViewAttributes;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method
