.class public Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/design/widget/CoordinatorLayout$Behavior",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private A:I

.field private B:Landroid/view/animation/Animation;

.field private C:Z

.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:F

.field private q:F

.field private r:F

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const v2, 0x7fffffff

    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/estrongs/android/pop/ah;->EasyCoordinatorView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->b:I

    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->a:I

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->c:I

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->d:I

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->e:I

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->f:I

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->s:I

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->t:I

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->u:I

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->v:I

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->w:I

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->x:F

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->y:F

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->z:F

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->A:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;F)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;F)V"
        }
    .end annotation

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v1, 0x0

    const v7, 0x7f7fffff    # Float.MAX_VALUE

    const v6, 0x7fffffff

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->B:Landroid/view/animation/Animation;

    if-nez v0, :cond_8

    iget v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->s:I

    if-ne v0, v6, :cond_6

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->t:I

    if-ne v2, v6, :cond_7

    :goto_1
    iget v2, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->u:I

    if-ne v2, v6, :cond_0

    iget v2, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->v:I

    if-eq v2, v6, :cond_1

    :cond_0
    iget v2, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->m:I

    int-to-float v2, v2

    iget v3, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->u:I

    iget v4, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->m:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iget v3, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->n:I

    int-to-float v3, v3

    iget v4, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->v:I

    iget v5, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->n:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->m:I

    int-to-float v4, v4

    div-float v4, v2, v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    iget v4, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->n:I

    int-to-float v4, v4

    div-float v4, v3, v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleY(F)V

    iget v4, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->m:I

    int-to-float v4, v4

    sub-float v2, v4, v2

    div-float/2addr v2, v8

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->n:I

    int-to-float v2, v2

    sub-float/2addr v2, v3

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    iget v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->x:F

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->p:F

    iget v1, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->x:F

    iget v2, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->p:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    iget v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->w:I

    if-eq v0, v6, :cond_3

    iget v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->o:I

    if-eqz v0, :cond_3

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iget v1, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->o:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->w:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3
    iget v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->y:F

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->q:F

    iget v1, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->y:F

    iget v2, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->q:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationX(F)V

    :cond_4
    iget v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->z:F

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->r:F

    iget v1, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->z:F

    iget v2, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->r:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationX(F)V

    :cond_5
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void

    :cond_6
    iget v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->s:I

    iget v2, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->k:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, p2

    goto/16 :goto_0

    :cond_7
    iget v1, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->t:I

    iget v2, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->l:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p2

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->B:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartTime(J)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->B:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->B:Landroid/view/animation/Animation;

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v2, p2

    float-to-long v2, v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    new-instance v1, Lcom/estrongs/android/pop/app/cleaner/al;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/app/cleaner/al;-><init>(Landroid/view/animation/Transformation;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2
.end method

.method public a(Landroid/view/View;Landroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const/high16 v3, 0x4f000000

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    iget v2, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->a:I

    packed-switch v2, :pswitch_data_0

    move v2, v3

    move v4, v1

    move v5, v1

    :goto_0
    cmpl-float v3, v2, v3

    if-eqz v3, :cond_0

    sub-float v1, v4, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v1, v2

    :cond_0
    cmpl-float v2, v1, v0

    if-lez v2, :cond_1

    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->a(Landroid/view/View;F)V

    return-void

    :pswitch_0
    iget v2, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->i:I

    int-to-float v5, v2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v4, v2

    iget v2, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->e:I

    int-to-float v2, v2

    goto :goto_0

    :pswitch_1
    iget v2, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->j:I

    int-to-float v5, v2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v4, v2

    iget v2, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->f:I

    int-to-float v2, v2

    goto :goto_0

    :pswitch_2
    iget v2, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->g:I

    int-to-float v5, v2

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v4

    iget v2, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->c:I

    int-to-float v2, v2

    goto :goto_0

    :pswitch_3
    iget v2, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->h:I

    int-to-float v5, v2

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v4

    iget v2, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->d:I

    int-to-float v2, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->C:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->d(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, p2, v0}, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->a(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    return v1
.end method

.method public b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->b:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->C:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->e(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->k:I

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->l:I

    invoke-virtual {p0, p2, p3}, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->a(Landroid/view/View;Landroid/view/View;)V

    const/4 v0, 0x0

    return v0
.end method

.method protected e(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->g:I

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->h:I

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->i:I

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->j:I

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->k:I

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->l:I

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->m:I

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->n:I

    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->p:F

    invoke-virtual {p2}, Landroid/view/View;->getRotationX()F

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->q:F

    invoke-virtual {p2}, Landroid/view/View;->getRotationY()F

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->r:F

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->o:I

    :cond_0
    iget v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->A:I

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->A:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->B:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->B:Landroid/view/animation/Animation;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-le v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getFitsSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->t:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_2
    iget v1, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->t:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->t:I

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/cleaner/SimpleViewBehavior;->C:Z

    return-void
.end method
