.class public Lcom/estrongs/android/ui/topclassify/ExpandableLayout;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Landroid/view/View;

.field private k:Lcom/estrongs/android/ui/topclassify/s;

.field private l:Landroid/view/animation/Interpolator;

.field private m:Landroid/view/animation/Interpolator;

.field private n:I

.field private o:Z

.field private p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x32

    iput v0, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->n:I

    iput-boolean v1, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->o:Z

    iput-boolean v1, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->p:Z

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 v0, 0x32

    iput v0, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->n:I

    iput-boolean v1, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->o:Z

    iput-boolean v1, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->p:Z

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(II)I
    .locals 2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    sparse-switch v1, :sswitch_data_0

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private a(Landroid/view/View;II)Landroid/animation/ValueAnimator;
    .locals 2

    if-ge p2, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->c:I

    if-nez v1, :cond_1

    const/16 v0, 0x12c

    :goto_1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->a(Landroid/view/View;III)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    iget v0, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->d:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->e:I

    goto :goto_1
.end method

.method private a(Landroid/view/View;III)Landroid/animation/ValueAnimator;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/estrongs/android/ui/topclassify/o;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/topclassify/o;-><init>(Lcom/estrongs/android/ui/topclassify/ExpandableLayout;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/topclassify/ExpandableLayout;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->j:Landroid/view/View;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->e()V

    iget-boolean v0, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->i:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/topclassify/m;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/topclassify/m;-><init>(Lcom/estrongs/android/ui/topclassify/ExpandableLayout;)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->g:Z

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->getOrientation()I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->a:I

    :goto_1
    iget v1, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->n:I

    invoke-direct {p0, p1, v1, v0}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->a(Landroid/view/View;II)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->l:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/estrongs/android/ui/topclassify/p;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/topclassify/p;-><init>(Lcom/estrongs/android/ui/topclassify/ExpandableLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->f:I

    goto :goto_1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/topclassify/ExpandableLayout;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->setExecuting(Z)V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/ui/topclassify/ExpandableLayout;)Lcom/estrongs/android/ui/topclassify/s;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->k:Lcom/estrongs/android/ui/topclassify/s;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->g:Z

    invoke-virtual {p0}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->getOrientation()I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->a:I

    :goto_1
    iget v1, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->n:I

    invoke-direct {p0, p1, v0, v1}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->a(Landroid/view/View;II)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->m:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/estrongs/android/ui/topclassify/q;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/topclassify/q;-><init>(Lcom/estrongs/android/ui/topclassify/ExpandableLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->f:I

    goto :goto_1
.end method

.method private d()V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->getChildCount()I

    move-result v2

    const/4 v1, 0x2

    if-gt v2, v1, :cond_1

    iget v0, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->b:I

    iput v0, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->n:I

    :cond_0
    iput-boolean v4, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->p:Z

    return-void

    :cond_1
    move v1, v0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v1, v3

    if-ne v0, v4, :cond_2

    iput v1, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->n:I

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private e()V
    .locals 2

    const/16 v1, 0x12c

    iget v0, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->c:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->d:I

    iget v0, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->c:I

    if-nez v0, :cond_1

    :goto_1
    iput v1, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->e:I

    return-void

    :cond_0
    iget v0, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->c:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->c:I

    goto :goto_1
.end method

.method private f()V
    .locals 6

    const/4 v2, 0x0

    const/high16 v3, -0x3ccc0000    # -180.0f

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->j:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->c:I

    if-nez v0, :cond_1

    const/16 v0, 0x12c

    :goto_0
    const/4 v1, 0x2

    new-array v4, v1, [F

    const/4 v5, 0x0

    iget-boolean v1, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->g:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    aput v1, v4, v5

    const/4 v1, 0x1

    iget-boolean v5, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->g:Z

    if-eqz v5, :cond_4

    :goto_2
    aput v3, v4, v1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->j:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/estrongs/android/ui/topclassify/n;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/topclassify/n;-><init>(Lcom/estrongs/android/ui/topclassify/ExpandableLayout;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->g:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->d:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->e:I

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    move v3, v2

    goto :goto_2
.end method

.method private g()I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->getChildCount()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private setExecuting(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->h:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->g:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->h:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->o:Z

    invoke-direct {p0, p0}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->a(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->f()V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->h:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->o:Z

    invoke-direct {p0, p0}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->b(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->f()V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->b()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->a()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-direct {p0, p1, p1}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->a(II)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->a:I

    invoke-direct {p0}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->g()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->b:I

    iget-boolean v0, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->p:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->d()V

    iget v0, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->b:I

    iput v0, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->f:I

    :cond_0
    iget-boolean v0, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->h:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->o:Z

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->a:I

    iget v1, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->n:I

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public setClickToToggle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->i:Z

    return-void
.end method

.method public setCollapseDuration(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->e:I

    return-void
.end method

.method public setCollapseInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->m:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->c:I

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->setExpandDuration(I)V

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->setCollapseDuration(I)V

    return-void
.end method

.method public setExpand(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->g:Z

    invoke-virtual {p0}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->requestLayout()V

    return-void
.end method

.method public setExpandDuration(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->d:I

    return-void
.end method

.method public setExpandInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->l:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->setExpandInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->setCollapseInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setOnStateChangedListener(Lcom/estrongs/android/ui/topclassify/s;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->k:Lcom/estrongs/android/ui/topclassify/s;

    return-void
.end method

.method public setShowViews(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->removeAllViews()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->requestLayout()V

    invoke-static {}, Lcom/estrongs/android/util/bk;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/estrongs/android/ui/topclassify/r;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/topclassify/r;-><init>(Lcom/estrongs/android/ui/topclassify/ExpandableLayout;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public setSwitcher(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->j:Landroid/view/View;

    return-void
.end method
