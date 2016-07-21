.class public Lcom/facebook/ads/internal/view/l;
.super Landroid/widget/TextView;


# instance fields
.field private a:F

.field private b:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/facebook/ads/internal/view/l;->b:F

    invoke-super {p0}, Landroid/widget/TextView;->setSingleLine()V

    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/l;->getTextSize()F

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/internal/view/l;->a:F

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/l;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    sub-int v1, p4, p2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/l;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/l;->getMeasuredWidth()I

    move-result v3

    iget v0, p0, Lcom/facebook/ads/internal/view/l;->a:F

    :goto_0
    iget v4, p0, Lcom/facebook/ads/internal/view/l;->b:F

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_0

    invoke-super {p0, v0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0, v5, v5}, Lcom/facebook/ads/internal/view/l;->measure(II)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/l;->getMeasuredWidth()I

    move-result v4

    if-gt v4, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/l;->getMeasuredWidth()I

    move-result v0

    if-le v0, v1, :cond_1

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/internal/view/l;->measure(II)V

    :cond_1
    invoke-virtual {p0, v3, v2}, Lcom/facebook/ads/internal/view/l;->setMeasuredDimension(II)V

    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    return-void

    :cond_2
    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v0, v4

    goto :goto_0
.end method

.method public setMaxLines(I)V
    .locals 0

    return-void
.end method

.method public setMinTextSize(F)V
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/view/l;->a:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iput p1, p0, Lcom/facebook/ads/internal/view/l;->b:F

    :cond_0
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 0

    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    iput p1, p0, Lcom/facebook/ads/internal/view/l;->a:F

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method
