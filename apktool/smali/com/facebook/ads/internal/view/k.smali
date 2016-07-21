.class public Lcom/facebook/ads/internal/view/k;
.super Landroid/widget/TextView;


# instance fields
.field private a:I

.field private b:F

.field private c:F


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/facebook/ads/internal/view/k;->c:F

    invoke-virtual {p0, p2}, Lcom/facebook/ads/internal/view/k;->setMaxLines(I)V

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/k;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    iget v0, p0, Lcom/facebook/ads/internal/view/k;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-super {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    iget v0, p0, Lcom/facebook/ads/internal/view/k;->b:F

    invoke-super {p0, v0}, Landroid/widget/TextView;->setTextSize(F)V

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/facebook/ads/internal/view/k;->measure(II)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/k;->getMeasuredHeight()I

    move-result v0

    if-le v0, v2, :cond_1

    iget v0, p0, Lcom/facebook/ads/internal/view/k;->b:F

    :cond_0
    iget v3, p0, Lcom/facebook/ads/internal/view/k;->c:F

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v0, v3

    invoke-super {p0, v0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0, v3, v5}, Lcom/facebook/ads/internal/view/k;->measure(II)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/k;->getMeasuredHeight()I

    move-result v3

    if-gt v3, v2, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/k;->getLineCount()I

    move-result v3

    iget v4, p0, Lcom/facebook/ads/internal/view/k;->a:I

    if-gt v3, v4, :cond_0

    :cond_1
    iget v0, p0, Lcom/facebook/ads/internal/view/k;->a:I

    invoke-super {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {p0, v1, v2}, Lcom/facebook/ads/internal/view/k;->setMeasuredDimension(II)V

    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    return-void
.end method

.method public setMaxLines(I)V
    .locals 0

    iput p1, p0, Lcom/facebook/ads/internal/view/k;->a:I

    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    return-void
.end method

.method public setMinTextSize(F)V
    .locals 0

    iput p1, p0, Lcom/facebook/ads/internal/view/k;->c:F

    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    iput p1, p0, Lcom/facebook/ads/internal/view/k;->b:F

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method
