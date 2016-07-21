.class public Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewCleanBehavior;
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

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewCleanBehavior;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewCleanBehavior;->f:I

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewCleanBehavior;->g:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/pop/ah;->EasyCoordinatorView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0xe

    const/high16 v2, 0x4f000000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewCleanBehavior;->a:F

    const/16 v1, 0xf

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewCleanBehavior;->c:I

    return-void
.end method


# virtual methods
.method protected a(Landroid/support/design/widget/CoordinatorLayout;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->e(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p2}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewCleanBehavior;->b:F

    invoke-virtual {p2}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewCleanBehavior;->d:I

    return-void
.end method

.method public bridge synthetic a(Landroid/view/View;F)V
    .locals 0

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewCleanBehavior;->a(Landroid/widget/TextView;F)V

    return-void
.end method

.method public a(Landroid/widget/TextView;F)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1, p2}, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->a(Landroid/view/View;F)V

    iget v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewCleanBehavior;->a:F

    const/high16 v1, 0x4f000000

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewCleanBehavior;->b:F

    :goto_0
    invoke-virtual {p1, v4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewCleanBehavior;->c:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewCleanBehavior;->d:I

    if-eqz v0, :cond_0

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iget v1, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewCleanBehavior;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewCleanBehavior;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewCleanBehavior;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewCleanBehavior;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewCleanBehavior;->g:Ljava/lang/String;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewCleanBehavior;->e:I

    :cond_1
    float-to-double v0, p2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_4

    iget v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewCleanBehavior;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewCleanBehavior;->g:Ljava/lang/String;

    iget v1, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewCleanBehavior;->e:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewCleanBehavior;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewCleanBehavior;->f:I

    iget v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewCleanBehavior;->f:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewCleanBehavior;->g:Ljava/lang/String;

    const-string v2, "\n"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewCleanBehavior;->g:Ljava/lang/String;

    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_2
    iget v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewCleanBehavior;->b:F

    iget v1, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewCleanBehavior;->a:F

    iget v2, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewCleanBehavior;->b:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewCleanBehavior;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewCleanBehavior;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected synthetic e(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/estrongs/android/pop/app/cleaner/SimpleTextViewCleanBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/widget/TextView;Landroid/view/View;)V

    return-void
.end method
