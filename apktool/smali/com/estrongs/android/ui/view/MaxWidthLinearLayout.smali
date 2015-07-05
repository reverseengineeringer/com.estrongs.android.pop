.class public Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->a:I

    iput v0, p0, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->a:I

    iput v0, p0, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->a:I

    iput v0, p0, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->b:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->a:I

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, -0x80000000

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-static {}, Lcom/estrongs/android/pop/esclasses/e;->b()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->a:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->b:I

    if-lez v0, :cond_5

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_1
    iget v1, p0, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->a:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->a:I

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_2
    iget v1, p0, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->b:I

    if-lez v1, :cond_3

    iget v1, p0, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->b:I

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->measureChildren(II)V

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->setMeasuredDimension(II)V

    :cond_4
    return-void

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method
