.class Landroid/support/design/widget/by;
.super Landroid/support/v4/widget/dc;


# instance fields
.field final synthetic a:Landroid/support/design/widget/bx;

.field private b:I


# direct methods
.method constructor <init>(Landroid/support/design/widget/bx;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/by;->a:Landroid/support/design/widget/bx;

    invoke-direct {p0}, Landroid/support/v4/widget/dc;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;F)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    cmpl-float v0, p2, v5

    if-eqz v0, :cond_6

    invoke-static {p1}, Landroid/support/v4/view/cn;->h(Landroid/view/View;)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Landroid/support/design/widget/by;->a:Landroid/support/design/widget/bx;

    invoke-static {v3}, Landroid/support/design/widget/bx;->c(Landroid/support/design/widget/bx;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/support/design/widget/by;->a:Landroid/support/design/widget/bx;

    invoke-static {v3}, Landroid/support/design/widget/bx;->c(Landroid/support/design/widget/bx;)I

    move-result v3

    if-nez v3, :cond_4

    if-eqz v0, :cond_3

    cmpg-float v0, p2, v5

    if-ltz v0, :cond_0

    move v1, v2

    goto :goto_1

    :cond_3
    cmpl-float v0, p2, v5

    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_1

    :cond_4
    iget-object v3, p0, Landroid/support/design/widget/by;->a:Landroid/support/design/widget/bx;

    invoke-static {v3}, Landroid/support/design/widget/bx;->c(Landroid/support/design/widget/bx;)I

    move-result v3

    if-ne v3, v1, :cond_7

    if-eqz v0, :cond_5

    cmpl-float v0, p2, v5

    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_1

    :cond_5
    cmpg-float v0, p2, v5

    if-ltz v0, :cond_0

    move v1, v2

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v3, p0, Landroid/support/design/widget/by;->b:I

    sub-int/2addr v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Landroid/support/design/widget/by;->a:Landroid/support/design/widget/bx;

    invoke-static {v4}, Landroid/support/design/widget/bx;->d(Landroid/support/design/widget/bx;)F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_7
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/view/View;II)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/by;->a:Landroid/support/design/widget/bx;

    invoke-static {v0}, Landroid/support/design/widget/bx;->a(Landroid/support/design/widget/bx;)Landroid/support/design/widget/bz;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/by;->a:Landroid/support/design/widget/bx;

    invoke-static {v0}, Landroid/support/design/widget/bx;->a(Landroid/support/design/widget/bx;)Landroid/support/design/widget/bz;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/design/widget/bz;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;FF)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/by;->a(Landroid/view/View;F)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v2, p0, Landroid/support/design/widget/by;->b:I

    if-ge v0, v2, :cond_2

    iget v0, p0, Landroid/support/design/widget/by;->b:I

    sub-int/2addr v0, v1

    :goto_0
    const/4 v1, 0x1

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_1
    iget-object v2, p0, Landroid/support/design/widget/by;->a:Landroid/support/design/widget/bx;

    invoke-static {v2}, Landroid/support/design/widget/bx;->b(Landroid/support/design/widget/bx;)Landroid/support/v4/widget/cz;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/support/v4/widget/cz;->a(II)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Landroid/support/design/widget/ca;

    iget-object v2, p0, Landroid/support/design/widget/by;->a:Landroid/support/design/widget/bx;

    invoke-direct {v1, v2, p1, v0}, Landroid/support/design/widget/ca;-><init>(Landroid/support/design/widget/bx;Landroid/view/View;Z)V

    invoke-static {p1, v1}, Landroid/support/v4/view/cn;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget v0, p0, Landroid/support/design/widget/by;->b:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_3
    iget v1, p0, Landroid/support/design/widget/by;->b:I

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/by;->a:Landroid/support/design/widget/bx;

    invoke-static {v0}, Landroid/support/design/widget/bx;->a(Landroid/support/design/widget/bx;)Landroid/support/design/widget/bz;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/by;->a:Landroid/support/design/widget/bx;

    invoke-static {v0}, Landroid/support/design/widget/bx;->a(Landroid/support/design/widget/bx;)Landroid/support/design/widget/bz;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/design/widget/bz;->a(Landroid/view/View;)V

    goto :goto_2
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 6

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    iget v0, p0, Landroid/support/design/widget/by;->b:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/design/widget/by;->a:Landroid/support/design/widget/bx;

    invoke-static {v2}, Landroid/support/design/widget/bx;->e(Landroid/support/design/widget/bx;)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Landroid/support/design/widget/by;->b:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/design/widget/by;->a:Landroid/support/design/widget/bx;

    invoke-static {v3}, Landroid/support/design/widget/bx;->f(Landroid/support/design/widget/bx;)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    int-to-float v2, p2

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_0

    invoke-static {p1, v4}, Landroid/support/v4/view/cn;->c(Landroid/view/View;F)V

    :goto_0
    return-void

    :cond_0
    int-to-float v2, p2

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_1

    invoke-static {p1, v5}, Landroid/support/v4/view/cn;->c(Landroid/view/View;F)V

    goto :goto_0

    :cond_1
    int-to-float v2, p2

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/bx;->a(FFF)F

    move-result v0

    sub-float v0, v4, v0

    invoke-static {v5, v0, v4}, Landroid/support/design/widget/bx;->b(FFF)F

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/cn;->c(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;I)Z
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/by;->a:Landroid/support/design/widget/bx;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/bx;->a(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public b(Landroid/view/View;II)I
    .locals 3

    const/4 v1, 0x1

    invoke-static {p1}, Landroid/support/v4/view/cn;->h(Landroid/view/View;)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Landroid/support/design/widget/by;->a:Landroid/support/design/widget/bx;

    invoke-static {v2}, Landroid/support/design/widget/bx;->c(Landroid/support/design/widget/bx;)I

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/design/widget/by;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    iget v0, p0, Landroid/support/design/widget/by;->b:I

    :goto_1
    invoke-static {v1, p2, v0}, Landroid/support/design/widget/bx;->a(III)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v1, p0, Landroid/support/design/widget/by;->b:I

    iget v0, p0, Landroid/support/design/widget/by;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/support/design/widget/by;->a:Landroid/support/design/widget/bx;

    invoke-static {v2}, Landroid/support/design/widget/bx;->c(Landroid/support/design/widget/bx;)I

    move-result v2

    if-ne v2, v1, :cond_4

    if-eqz v0, :cond_3

    iget v1, p0, Landroid/support/design/widget/by;->b:I

    iget v0, p0, Landroid/support/design/widget/by;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    :cond_3
    iget v0, p0, Landroid/support/design/widget/by;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    iget v0, p0, Landroid/support/design/widget/by;->b:I

    goto :goto_1

    :cond_4
    iget v0, p0, Landroid/support/design/widget/by;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    iget v0, p0, Landroid/support/design/widget/by;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1
.end method

.method public b(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/by;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method
