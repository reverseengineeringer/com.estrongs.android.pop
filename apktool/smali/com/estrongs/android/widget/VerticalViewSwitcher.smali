.class public Lcom/estrongs/android/widget/VerticalViewSwitcher;
.super Landroid/widget/FrameLayout;


# instance fields
.field protected a:Landroid/widget/Scroller;

.field public b:I

.field protected c:I

.field protected d:I

.field protected e:Z

.field private f:Landroid/view/VelocityTracker;

.field private g:I

.field private h:I

.field private i:F

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Lcom/estrongs/android/widget/bw;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v3, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->g:I

    iput v1, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->h:I

    iput v1, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->c:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->d:I

    iput-boolean v2, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->j:Z

    iput v1, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->k:I

    iput v1, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->l:I

    iput v3, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->m:I

    iput-boolean v2, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->n:Z

    iput-boolean v2, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->e:Z

    iput-boolean v1, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->o:Z

    iput-boolean v1, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->p:Z

    iput-boolean v2, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->q:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->r:Lcom/estrongs/android/widget/bw;

    invoke-direct {p0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->a:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->b:I

    return-void
.end method

.method private b(I)I
    .locals 3

    const/4 v0, 0x0

    if-gez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->l:I

    if-lt p1, v1, :cond_1

    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->k:I

    mul-int/2addr v0, v1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->k:I

    mul-int/2addr v1, p1

    iget-boolean v2, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->e:Z

    if-eqz v2, :cond_2

    iget v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->k:I

    :cond_2
    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private b()V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->l:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v3}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->b(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->l:I

    add-int/lit8 v5, v5, -0x1

    invoke-direct {p0, v5}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->b(I)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->p:Z

    goto :goto_0
.end method

.method private c()V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->k:I

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->k:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    iput-boolean v6, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->p:Z

    return-void
.end method

.method private d()V
    .locals 5

    iget v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->l:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->o:Z

    goto :goto_0
.end method

.method private e()V
    .locals 6

    iget v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->l:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->l:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->b(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->l:I

    add-int/lit8 v5, v5, -0x1

    invoke-direct {p0, v5}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->b(I)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->o:Z

    goto :goto_0
.end method

.method private f()V
    .locals 3

    invoke-virtual {p0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->getScrollY()I

    move-result v1

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    div-int v0, v1, v0

    iget-boolean v1, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->e:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->a(I)V

    return-void
.end method

.method private g()V
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->l:I

    iget v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->l:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->e:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->e:Z

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->d:I

    invoke-direct {p0, p1}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->b(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->getScrollY()I

    move-result v2

    sub-int v4, v0, v2

    iget-object v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->a:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->getScrollY()I

    move-result v2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit8 v5, v3, 0x2

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->invalidate()V

    goto :goto_0
.end method

.method public addView(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->q:Z

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->g()V

    invoke-virtual {p0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->requestLayout()V

    return-void
.end method

.method public computeScroll()V
    .locals 7

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v5, -0x2

    iget-object v1, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->a:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->a:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->postInvalidate()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->d:I

    if-eq v1, v5, :cond_0

    const/4 v1, -0x1

    iget v3, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->d:I

    iput v3, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->c:I

    iget v3, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->c:I

    if-gez v3, :cond_6

    iget v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->l:I

    add-int/lit8 v0, v0, -0x1

    move v1, v2

    :goto_1
    iget-boolean v2, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->p:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->c()V

    :cond_2
    iget-boolean v2, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->o:Z

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->e()V

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->setCurrentScreen(I)V

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->r:Lcom/estrongs/android/widget/bw;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->r:Lcom/estrongs/android/widget/bw;

    iget v1, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->c:I

    invoke-interface {v0, v1}, Lcom/estrongs/android/widget/bw;->a(I)V

    :cond_5
    iput v5, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->d:I

    goto :goto_0

    :cond_6
    iget v3, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->c:I

    iget v4, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->l:I

    if-lt v3, v4, :cond_7

    move v1, v2

    goto :goto_1

    :cond_7
    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_1
.end method

.method public getCurrentChildIndex()I
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->getCurrentScreen()I

    move-result v0

    return v0
.end method

.method public getCurrentScreen()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->c:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->f:Landroid/view/VelocityTracker;

    if-nez v3, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->f:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v3, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->f:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget v3, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->h:I

    if-eqz v3, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    :cond_3
    :goto_1
    :pswitch_0
    iget v2, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->h:I

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :pswitch_1
    iget v2, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->g:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iget v2, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->i:F

    sub-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    iget v4, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->b:I

    if-le v2, v4, :cond_5

    move v2, v0

    :goto_2
    if-eqz v2, :cond_3

    iput v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->h:I

    iput v3, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->i:F

    goto :goto_1

    :cond_5
    move v2, v1

    goto :goto_2

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->i:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->g:I

    iget-object v2, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->a:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->a:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_6
    iput v1, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->h:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->p:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->o:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->e:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->k:I

    :goto_0
    invoke-virtual {p0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->getChildCount()I

    move-result v3

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int v7, v0, v5

    invoke-virtual {v4, v1, v0, v6, v7}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v0, v5

    goto :goto_2

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    const/4 v4, 0x2

    const/4 v1, 0x0

    iget v2, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->k:I

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->k:I

    invoke-virtual {p0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->getChildCount()I

    move-result v3

    if-lt v3, v4, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->q:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->l:I

    if-ge v0, v4, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->e:Z

    :cond_1
    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_2

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Landroid/view/View;->measure(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->q:Z

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->q:Z

    invoke-direct {p0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->g()V

    :cond_3
    iget-boolean v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->j:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->k:I

    if-eq v2, v0, :cond_5

    :cond_4
    iget v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->c:I

    invoke-direct {p0, v0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->b(I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->scrollTo(II)V

    iput-boolean v1, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->j:Z

    :cond_5
    return-void

    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method protected onScrollChanged(IIII)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->r:Lcom/estrongs/android/widget/bw;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->c:I

    invoke-direct {p0, v0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->b(I)I

    move-result v0

    sub-int v0, p2, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->r:Lcom/estrongs/android/widget/bw;

    iget v2, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->c:I

    invoke-interface {v1, v2, v0}, Lcom/estrongs/android/widget/bw;->a(IF)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->f:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->f:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->f:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    return v2

    :pswitch_0
    iget v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->c:I

    iput v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->m:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->i:F

    sub-float v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    iget v4, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->b:I

    if-le v0, v4, :cond_6

    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    iput v2, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->h:I

    :cond_2
    iget v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->h:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->i:F

    sub-float/2addr v0, v3

    float-to-int v4, v0

    iput v3, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->i:F

    invoke-virtual {p0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->getScrollY()I

    move-result v3

    if-gez v4, :cond_8

    if-lez v3, :cond_4

    iget-boolean v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->e:Z

    if-eqz v0, :cond_3

    add-int v0, v3, v4

    invoke-direct {p0, v1}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->b(I)I

    move-result v5

    if-ge v0, v5, :cond_7

    iget-boolean v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->o:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->d()V

    :cond_3
    :goto_2
    neg-int v0, v3

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->scrollBy(II)V

    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->r:Lcom/estrongs/android/widget/bw;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->getScrollY()I

    move-result v3

    div-int/lit8 v4, v0, 0x2

    add-int/2addr v3, v4

    div-int v0, v3, v0

    iget-boolean v3, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->e:Z

    if-eqz v3, :cond_e

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_d

    iget v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->l:I

    add-int/lit8 v1, v0, -0x1

    :cond_5
    :goto_4
    iget v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->m:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->l:I

    if-ge v1, v0, :cond_1

    if-ltz v1, :cond_1

    iput v1, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->m:I

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1

    :cond_7
    invoke-direct {p0, v2}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->b(I)I

    move-result v5

    if-ge v0, v5, :cond_3

    iget-boolean v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->p:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->c()V

    goto :goto_2

    :cond_8
    if-lez v4, :cond_4

    iget-boolean v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->e:Z

    if-eqz v0, :cond_9

    add-int v0, v3, v4

    iget v5, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->l:I

    add-int/lit8 v5, v5, -0x1

    invoke-direct {p0, v5}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->b(I)I

    move-result v5

    if-le v0, v5, :cond_a

    iget-boolean v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->p:Z

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->b()V

    :cond_9
    :goto_5
    :try_start_0
    iget-boolean v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->p:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_6
    sub-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    if-lez v0, :cond_4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->scrollBy(II)V

    goto :goto_3

    :cond_a
    iget v5, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->l:I

    add-int/lit8 v5, v5, -0x1

    invoke-direct {p0, v5}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->b(I)I

    move-result v5

    iget v6, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->k:I

    sub-int/2addr v5, v6

    if-le v0, v5, :cond_9

    iget-boolean v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->o:Z

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->e()V

    goto :goto_5

    :cond_b
    :try_start_1
    iget-boolean v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->o:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->l:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->b(I)I

    move-result v0

    iget v5, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->k:I

    add-int/2addr v0, v5

    goto :goto_6

    :cond_c
    iget v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->l:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_6

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_6

    :cond_d
    iget v3, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->l:I

    if-ge v0, v3, :cond_5

    :cond_e
    move v1, v0

    goto/16 :goto_4

    :pswitch_2
    iget v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->h:I

    if-ne v0, v2, :cond_10

    iget-object v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->f:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    const/16 v3, 0x12c

    if-le v0, v3, :cond_12

    iget-boolean v3, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->e:Z

    if-eqz v3, :cond_11

    iget v3, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->c:I

    if-ltz v3, :cond_12

    :cond_f
    iget v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->c:I

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->getScrollY()I

    move-result v3

    if-le v0, v3, :cond_14

    iget v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->c:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->a(I)V

    :goto_7
    iget-object v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->f:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->f:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->f:Landroid/view/VelocityTracker;

    :cond_10
    iput v1, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->h:I

    goto/16 :goto_0

    :cond_11
    iget v3, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->c:I

    if-gtz v3, :cond_f

    :cond_12
    const/16 v3, -0x12c

    if-ge v0, v3, :cond_16

    iget-boolean v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->e:Z

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->c:I

    iget v3, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->l:I

    if-ge v0, v3, :cond_16

    :cond_13
    iget v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->c:I

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->getScrollY()I

    move-result v3

    if-ge v0, v3, :cond_17

    iget v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->a(I)V

    goto :goto_7

    :cond_14
    invoke-direct {p0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->f()V

    goto :goto_7

    :cond_15
    iget v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->c:I

    iget v3, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->l:I

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_13

    :cond_16
    invoke-direct {p0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->f()V

    goto :goto_7

    :cond_17
    invoke-direct {p0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->f()V

    goto :goto_7

    :pswitch_3
    iput v1, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->h:I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public removeViewAt(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->q:Z

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    invoke-direct {p0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->g()V

    invoke-virtual {p0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->requestLayout()V

    return-void
.end method

.method public setCurrentScreen(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->c:I

    const/4 v0, 0x0

    iget v1, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->c:I

    invoke-direct {p0, v1}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->b(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/estrongs/android/widget/VerticalViewSwitcher;->invalidate()V

    goto :goto_0
.end method

.method public setOnScreenSwitchListener(Lcom/estrongs/android/widget/bw;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/VerticalViewSwitcher;->r:Lcom/estrongs/android/widget/bw;

    return-void
.end method
