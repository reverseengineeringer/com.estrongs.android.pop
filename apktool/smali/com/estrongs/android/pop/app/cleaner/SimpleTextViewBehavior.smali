.class public Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewBehavior;
.super Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior",
        "<",
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/estrongs/android/pop/ah;->EasyCoordinatorView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0xe

    const/high16 v2, 0x4f000000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewBehavior;->a:F

    const/16 v1, 0xf

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewBehavior;->c:I

    return-void
.end method


# virtual methods
.method protected a(Landroid/support/design/widget/CoordinatorLayout;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->e(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p2}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewBehavior;->b:F

    invoke-virtual {p2}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewBehavior;->d:I

    return-void
.end method

.method public bridge synthetic a(Landroid/view/View;F)V
    .locals 0

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewBehavior;->a(Landroid/widget/TextView;F)V

    return-void
.end method

.method public a(Landroid/widget/TextView;F)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->a(Landroid/view/View;F)V

    iget v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewBehavior;->a:F

    const/high16 v1, 0x4f000000

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewBehavior;->b:F

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewBehavior;->c:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewBehavior;->d:I

    if-eqz v0, :cond_0

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iget v1, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewBehavior;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewBehavior;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewBehavior;->b:F

    iget v1, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewBehavior;->a:F

    iget v2, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewBehavior;->b:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method protected synthetic e(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/widget/TextView;Landroid/view/View;)V

    return-void
.end method
