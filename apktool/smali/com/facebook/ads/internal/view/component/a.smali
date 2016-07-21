.class public Lcom/facebook/ads/internal/view/component/a;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Lcom/facebook/ads/internal/view/k;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAdViewAttributes;)V
    .locals 4

    const/4 v3, -0x2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/component/a;->setOrientation(I)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/component/a;->setVerticalGravity(I)V

    new-instance v0, Lcom/facebook/ads/internal/view/k;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/internal/view/k;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/component/a;->a:Lcom/facebook/ads/internal/view/k;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a;->a:Lcom/facebook/ads/internal/view/k;

    invoke-virtual {p3}, Lcom/facebook/ads/NativeAdViewAttributes;->getTitleTextSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/k;->setMinTextSize(F)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a;->a:Lcom/facebook/ads/internal/view/k;

    invoke-virtual {p2}, Lcom/facebook/ads/NativeAd;->getAdTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/k;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a;->a:Lcom/facebook/ads/internal/view/k;

    invoke-static {v0, p3}, Lcom/facebook/ads/internal/view/j;->a(Landroid/widget/TextView;Lcom/facebook/ads/NativeAdViewAttributes;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a;->a:Lcom/facebook/ads/internal/view/k;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/k;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a;->a:Lcom/facebook/ads/internal/view/k;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/component/a;->addView(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/facebook/ads/NativeAd;->getAdTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x15

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/view/component/a;->b:I

    invoke-static {p1, p2, p3}, Lcom/facebook/ads/internal/view/j;->a(Landroid/content/Context;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAdViewAttributes;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/component/a;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getMinVisibleTitleCharacters()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/view/component/a;->b:I

    return v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a;->a:Lcom/facebook/ads/internal/view/k;

    return-object v0
.end method
