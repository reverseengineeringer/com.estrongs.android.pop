.class public Lcom/estrongs/android/widget/RealViewSwitcher;
.super Landroid/widget/ViewAnimator;


# instance fields
.field private A:I

.field private B:Z

.field private C:Z

.field private a:Landroid/view/VelocityTracker;

.field private b:I

.field protected c:Landroid/widget/Scroller;

.field public d:I

.field protected e:I

.field protected f:I

.field protected g:Z

.field protected h:Lcom/estrongs/android/widget/bc;

.field i:F

.field private j:I

.field private k:F

.field private l:F

.field private m:I

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, -0x2

    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;)V

    iput v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->b:I

    iput v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->j:I

    iput v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    iput v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->f:I

    iput v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->m:I

    iput-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->n:Z

    iput v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->o:I

    iput v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->p:I

    iput v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->q:I

    iput-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->r:Z

    iput-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->s:Z

    iput-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->t:Z

    iput-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->g:Z

    iput-boolean v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->u:Z

    iput-boolean v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->v:Z

    iput-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->w:Z

    iput-boolean v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->x:Z

    iput-boolean v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->y:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->h:Lcom/estrongs/android/widget/bc;

    iput v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->z:I

    iput v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->A:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->i:F

    iput-boolean v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->B:Z

    iput-boolean v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->C:Z

    invoke-direct {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, -0x2

    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->b:I

    iput v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->j:I

    iput v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    iput v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->f:I

    iput v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->m:I

    iput-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->n:Z

    iput v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->o:I

    iput v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->p:I

    iput v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->q:I

    iput-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->r:Z

    iput-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->s:Z

    iput-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->t:Z

    iput-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->g:Z

    iput-boolean v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->u:Z

    iput-boolean v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->v:Z

    iput-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->w:Z

    iput-boolean v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->x:Z

    iput-boolean v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->y:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->h:Lcom/estrongs/android/widget/bc;

    iput v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->z:I

    iput v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->A:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->i:F

    iput-boolean v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->B:Z

    iput-boolean v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->C:Z

    invoke-direct {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->a()V

    return-void
.end method

.method private a()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->c:Landroid/widget/Scroller;

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->c:Landroid/widget/Scroller;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->setFriction(F)V

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->d:I

    return-void
.end method

.method private b()V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->p:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Lcom/estrongs/android/widget/RealViewSwitcher;->c(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->p:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4}, Lcom/estrongs/android/widget/RealViewSwitcher;->c(I)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->v:Z

    goto :goto_0
.end method

.method private c(I)I
    .locals 3

    const/4 v0, 0x0

    if-gez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->p:I

    if-lt p1, v1, :cond_1

    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->o:I

    mul-int/2addr v0, v1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->o:I

    mul-int/2addr v1, p1

    iget-boolean v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->g:Z

    if-eqz v2, :cond_2

    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->o:I

    :cond_2
    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private c()V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/estrongs/android/widget/RealViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->o:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->o:I

    add-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    iput-boolean v5, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->v:Z

    goto :goto_0
.end method

.method private d(I)I
    .locals 0

    return p1
.end method

.method private d()V
    .locals 5

    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->p:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->u:Z

    goto :goto_0
.end method

.method private e()V
    .locals 5

    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->p:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->p:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->c(I)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->p:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4}, Lcom/estrongs/android/widget/RealViewSwitcher;->c(I)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->u:Z

    goto :goto_0
.end method

.method private f()V
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->p:I

    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->p:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->g:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->r:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->g:Z

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->a(IZ)V

    return-void
.end method

.method public a(II)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->z:I

    iput p2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->A:I

    return-void
.end method

.method public a(IZ)V
    .locals 2

    invoke-super {p0}, Landroid/widget/ViewAnimator;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ViewAnimator;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/estrongs/android/widget/RealViewSwitcher;->d(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    :goto_0
    return-void

    :cond_2
    if-eqz p2, :cond_3

    iput v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->m:I

    :cond_3
    iput v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    invoke-direct {p0, v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->c(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->invalidate()V

    goto :goto_0
.end method

.method public a(Lcom/estrongs/android/widget/bc;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->h:Lcom/estrongs/android/widget/bc;

    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1

    const/4 v0, -0x2

    iput v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->m:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->w:Z

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-super {p0, p1, p2}, Landroid/widget/ViewAnimator;->addView(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->f()V

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->requestLayout()V

    return-void
.end method

.method public b(I)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->c:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->f:I

    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->f:I

    if-gez v0, :cond_2

    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->p:I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    iget-object v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->h:Lcom/estrongs/android/widget/bc;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->h:Lcom/estrongs/android/widget/bc;

    invoke-interface {v1, v0}, Lcom/estrongs/android/widget/bc;->d(I)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/estrongs/android/widget/RealViewSwitcher;->c(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getScrollX()I

    move-result v1

    sub-int v3, v0, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iget v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->o:I

    div-int/2addr v0, v1

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget-object v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->c:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getScrollX()I

    move-result v1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->invalidate()V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->f:I

    iget v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->p:I

    if-lt v0, v1, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, p1

    goto :goto_1
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->x:Z

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->r:Z

    iput-boolean p1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->g:Z

    return-void
.end method

.method public computeScroll()V
    .locals 6

    const/4 v2, 0x1

    const/4 v5, -0x2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->c:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->c:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->c:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->postInvalidate()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->f:I

    if-eq v0, v5, :cond_0

    const/4 v0, -0x1

    iget v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->f:I

    iput v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    iget v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    if-gez v3, :cond_6

    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->p:I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    iget-boolean v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->v:Z

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->c()V

    :cond_2
    iget-boolean v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->u:Z

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->e()V

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->a(IZ)V

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->h:Lcom/estrongs/android/widget/bc;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->h:Lcom/estrongs/android/widget/bc;

    iget v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    invoke-interface {v0, v2}, Lcom/estrongs/android/widget/bc;->b(I)V

    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->m:I

    iget v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    if-eq v0, v2, :cond_5

    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    iput v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->m:I

    iget-object v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->h:Lcom/estrongs/android/widget/bc;

    iget v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    invoke-interface {v0, v2}, Lcom/estrongs/android/widget/bc;->c(I)V

    :cond_5
    iput v5, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->f:I

    iput-boolean v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->y:Z

    goto :goto_0

    :cond_6
    iget v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    iget v4, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->p:I

    if-lt v3, v4, :cond_7

    move v0, v1

    goto :goto_1

    :cond_7
    move v2, v1

    goto :goto_1
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->t:Z

    return-void
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->s:Z

    return-void
.end method

.method public f(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->B:Z

    return-void
.end method

.method public g()V
    .locals 3

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getScrollX()I

    move-result v1

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    div-int v0, v1, v0

    iget-boolean v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->g:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->b(I)V

    return-void
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    return v0
.end method

.method public i()I
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->h()I

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->B:Z

    return v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->C:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getChildCount()I

    move-result v2

    if-ne v2, v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->a:Landroid/view/VelocityTracker;

    if-nez v3, :cond_2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->a:Landroid/view/VelocityTracker;

    iget-object v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->a:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    :cond_2
    iget-object v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->a:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    if-nez v2, :cond_3

    iput v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->i:F

    :cond_3
    iget v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->i:F

    iget v4, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->z:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-lez v3, :cond_0

    iget v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->i:F

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->A:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gez v3, :cond_0

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    :cond_4
    :goto_1
    iget v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->j:I

    if-eqz v2, :cond_d

    :goto_2
    move v1, v0

    goto :goto_0

    :pswitch_0
    iget v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->b:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-eq v2, v6, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v4, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->k:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->j()Z

    move-result v5

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->k:F

    cmpl-float v5, v3, v5

    if-gtz v5, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->k()Z

    move-result v5

    if-eqz v5, :cond_6

    iget v5, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->k:F

    cmpg-float v3, v3, v5

    if-ltz v3, :cond_0

    :cond_6
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->l:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->d:I

    if-le v4, v3, :cond_8

    if-lt v4, v2, :cond_8

    move v2, v0

    :goto_3
    if-eqz v2, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ne v2, v0, :cond_9

    iput v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->j:I

    iget-object v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->h:Lcom/estrongs/android/widget/bc;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->h:Lcom/estrongs/android/widget/bc;

    iget v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    invoke-interface {v2, v3}, Lcom/estrongs/android/widget/bc;->a(I)V

    :cond_7
    iput-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->y:Z

    goto :goto_1

    :cond_8
    move v2, v1

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getWidth()I

    move-result v3

    rem-int/2addr v2, v3

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->g()V

    goto :goto_1

    :pswitch_1
    iget-boolean v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->x:Z

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->y:Z

    if-eqz v2, :cond_a

    move v1, v0

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->k:F

    iput v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->l:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->b:I

    iget-object v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->c:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->c:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    iput-boolean v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->y:Z

    :cond_b
    iput v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->j:I

    goto/16 :goto_1

    :pswitch_2
    iget-boolean v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->x:Z

    if-eqz v2, :cond_c

    iget-boolean v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->y:Z

    if-eqz v2, :cond_c

    move v1, v0

    goto/16 :goto_0

    :cond_c
    iput v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->j:I

    iput v6, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->b:I

    iget-object v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->a:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->a:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->a:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    :cond_d
    move v0, v1

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->o:I

    :goto_0
    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getChildCount()I

    move-result v3

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Lcom/estrongs/android/widget/RealViewSwitcher;->getChildAt(I)Landroid/view/View;

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

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int v6, v0, v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v4, v0, v1, v6, v7}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v0, v5

    goto :goto_2

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    const/4 v2, 0x2

    :try_start_0
    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->o:I

    invoke-super {p0, p1, p2}, Landroid/widget/ViewAnimator;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iput v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->o:I

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getChildCount()I

    move-result v1

    if-lt v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->w:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->p:I

    if-ge v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->g:Z

    :cond_1
    iget-boolean v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->w:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->w:Z

    invoke-direct {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->f()V

    :cond_2
    iget-boolean v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->n:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->o:I

    if-eq v0, v1, :cond_4

    :cond_3
    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    invoke-direct {p0, v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->c(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->scrollTo(II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->n:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ViewAnimator;->onScrollChanged(IIII)V

    const/4 v0, 0x0

    iget v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->o:I

    iget v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->p:I

    mul-int/2addr v1, v2

    if-ne p1, v1, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    iget v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->o:I

    if-ne p1, v1, :cond_2

    iget v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->o:I

    iget v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->p:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    if-ne p3, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->h:Lcom/estrongs/android/widget/bc;

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    invoke-direct {p0, v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->c(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getWidth()I

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    :goto_0
    return-void

    :cond_4
    sub-int v0, p1, v0

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->h:Lcom/estrongs/android/widget/bc;

    iget v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    invoke-interface {v1, v2, v0}, Lcom/estrongs/android/widget/bc;->a(IF)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->a:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->a:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->a:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    if-nez v0, :cond_1

    iput v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->i:F

    :cond_1
    iget v4, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->i:F

    iget v5, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->z:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_3

    :cond_2
    :goto_0
    return v1

    :cond_3
    iget v4, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->i:F

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->A:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gez v4, :cond_2

    packed-switch v0, :pswitch_data_0

    :cond_4
    :goto_1
    move v1, v2

    goto :goto_0

    :pswitch_0
    iget-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->x:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->y:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    iput v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->q:I

    move v1, v2

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    iput v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->q:I

    goto :goto_1

    :pswitch_1
    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->j:I

    if-eq v0, v2, :cond_9

    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->k:F

    sub-float v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->j()Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->k:F

    cmpl-float v4, v3, v4

    if-gtz v4, :cond_2

    :cond_6
    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->k()Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->k:F

    cmpg-float v4, v3, v4

    if-ltz v4, :cond_2

    :cond_7
    iget v4, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->d:I

    if-le v0, v4, :cond_a

    move v0, v2

    :goto_2
    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->h:Lcom/estrongs/android/widget/bc;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->h:Lcom/estrongs/android/widget/bc;

    iget v4, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    invoke-interface {v0, v4}, Lcom/estrongs/android/widget/bc;->a(I)V

    :cond_8
    iput-boolean v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->y:Z

    iput v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->j:I

    :cond_9
    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->j:I

    if-ne v0, v2, :cond_4

    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->k:F

    sub-float/2addr v0, v3

    float-to-int v4, v0

    iput v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->k:F

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getScrollX()I

    move-result v3

    add-int v0, v3, v4

    iget v5, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    invoke-direct {p0, v5}, Lcom/estrongs/android/widget/RealViewSwitcher;->c(I)I

    move-result v5

    if-ge v0, v5, :cond_b

    iget-boolean v6, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->s:Z

    if-nez v6, :cond_b

    move v1, v2

    goto :goto_0

    :cond_a
    move v0, v1

    goto :goto_2

    :cond_b
    if-le v0, v5, :cond_c

    iget-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->t:Z

    if-nez v0, :cond_c

    move v1, v2

    goto/16 :goto_0

    :cond_c
    if-gez v4, :cond_11

    if-lez v3, :cond_e

    iget-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->g:Z

    if-eqz v0, :cond_d

    add-int v0, v3, v4

    invoke-direct {p0, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->c(I)I

    move-result v5

    if-ge v0, v5, :cond_10

    iget-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->u:Z

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->d()V

    :cond_d
    :goto_3
    neg-int v0, v3

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->scrollBy(II)V

    :cond_e
    :goto_4
    iget-object v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->h:Lcom/estrongs/android/widget/bc;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->o:I

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getScrollX()I

    move-result v3

    div-int/lit8 v4, v0, 0x2

    add-int/2addr v3, v4

    div-int v0, v3, v0

    iget-boolean v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->g:Z

    if-eqz v3, :cond_18

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_17

    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->p:I

    add-int/lit8 v1, v0, -0x1

    :cond_f
    :goto_5
    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->q:I

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->p:I

    if-ge v1, v0, :cond_4

    if-ltz v1, :cond_4

    iput v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->q:I

    goto/16 :goto_1

    :cond_10
    invoke-direct {p0, v2}, Lcom/estrongs/android/widget/RealViewSwitcher;->c(I)I

    move-result v5

    if-ge v0, v5, :cond_d

    iget-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->v:Z

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->c()V

    goto :goto_3

    :cond_11
    if-lez v4, :cond_e

    iget-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->g:Z

    if-eqz v0, :cond_12

    add-int v0, v3, v4

    iget v5, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->p:I

    add-int/lit8 v5, v5, -0x1

    invoke-direct {p0, v5}, Lcom/estrongs/android/widget/RealViewSwitcher;->c(I)I

    move-result v5

    if-le v0, v5, :cond_13

    iget-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->v:Z

    if-nez v0, :cond_12

    invoke-direct {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->b()V

    :cond_12
    :goto_6
    :try_start_0
    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->p:I

    if-lez v0, :cond_16

    iget-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->v:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_7
    sub-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getWidth()I

    move-result v3

    sub-int/2addr v0, v3

    if-lez v0, :cond_e

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->scrollBy(II)V

    goto :goto_4

    :cond_13
    iget v5, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->p:I

    add-int/lit8 v5, v5, -0x1

    invoke-direct {p0, v5}, Lcom/estrongs/android/widget/RealViewSwitcher;->c(I)I

    move-result v5

    iget v6, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->o:I

    sub-int/2addr v5, v6

    if-le v0, v5, :cond_12

    iget-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->u:Z

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->e()V

    goto :goto_6

    :cond_14
    :try_start_1
    iget-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->u:Z

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->p:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->c(I)I

    move-result v0

    iget v5, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->o:I

    add-int/2addr v0, v5

    goto :goto_7

    :cond_15
    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->p:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_7

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_16
    move v0, v1

    goto :goto_7

    :cond_17
    iget v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->p:I

    if-ge v0, v3, :cond_f

    :cond_18
    move v1, v0

    goto/16 :goto_5

    :pswitch_2
    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->j:I

    if-ne v0, v2, :cond_1a

    iget-object v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->a:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    float-to-int v0, v0

    const/16 v3, 0x12c

    if-le v0, v3, :cond_1c

    iget-boolean v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->g:Z

    if-eqz v3, :cond_1b

    iget v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    if-ltz v3, :cond_1c

    :cond_19
    :try_start_2
    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getScrollX()I

    move-result v3

    if-le v0, v3, :cond_1e

    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->b(I)V

    :goto_8
    iget-object v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->a:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->a:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v7, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->a:Landroid/view/VelocityTracker;

    :cond_1a
    iput v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->j:I

    goto/16 :goto_1

    :cond_1b
    iget v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    if-gtz v3, :cond_19

    :cond_1c
    const/16 v3, -0x12c

    if-ge v0, v3, :cond_20

    iget-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->g:Z

    if-eqz v0, :cond_1f

    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    iget v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->p:I

    if-ge v0, v3, :cond_20

    :cond_1d
    :try_start_3
    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getScrollX()I

    move-result v3

    if-ge v0, v3, :cond_21

    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->b(I)V

    goto :goto_8

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->g()V

    move v1, v2

    goto/16 :goto_0

    :cond_1e
    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->g()V

    goto :goto_8

    :cond_1f
    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    iget v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->p:I

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_1d

    :cond_20
    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->g()V

    goto :goto_8

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->g()V

    move v1, v2

    goto/16 :goto_0

    :cond_21
    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->g()V

    goto :goto_8

    :pswitch_3
    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->g()V

    iget-object v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->a:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->a:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v7, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->a:Landroid/view/VelocityTracker;

    :cond_22
    iput v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->j:I

    goto/16 :goto_1

    nop

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

    const/4 v0, -0x2

    iput v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->m:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->w:Z

    invoke-super {p0, p1}, Landroid/widget/ViewAnimator;->removeViewAt(I)V

    invoke-direct {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->f()V

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->requestLayout()V

    return-void
.end method
