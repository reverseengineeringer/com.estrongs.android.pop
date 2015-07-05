.class public abstract Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Landroid/widget/LinearLayout;"
    }
.end annotation


# instance fields
.field a:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:I

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:Z

.field private h:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

.field private i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

.field private j:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

.field private k:Landroid/widget/FrameLayout;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Landroid/view/animation/Interpolator;

.field private r:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

.field private s:Lcom/handmark/pulltorefresh/library/a/e;

.field private t:Lcom/handmark/pulltorefresh/library/a/e;

.field private u:Lcom/handmark/pulltorefresh/library/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/handmark/pulltorefresh/library/j",
            "<TT;>;"
        }
    .end annotation
.end field

.field private v:Lcom/handmark/pulltorefresh/library/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/handmark/pulltorefresh/library/k",
            "<TT;>;"
        }
    .end annotation
.end field

.field private w:Lcom/handmark/pulltorefresh/library/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/handmark/pulltorefresh/library/i",
            "<TT;>;"
        }
    .end annotation
.end field

.field private x:Lcom/handmark/pulltorefresh/library/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase",
            "<TT;>.com/handmark/pulltorefresh/library/m;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->g:Z

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->l:Z

    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->m:Z

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->n:Z

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->o:Z

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->p:Z

    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->r:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->g:Z

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->l:Z

    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->m:Z

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->n:Z

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->o:Z

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->p:Z

    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->r:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->g:Z

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->l:Z

    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->m:Z

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->n:Z

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->o:Z

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->p:Z

    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->r:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    iput-object p2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->g:Z

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->l:Z

    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->m:Z

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->n:Z

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->o:Z

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->p:Z

    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->r:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    iput-object p2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    iput-object p3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->r:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final a(IJ)V
    .locals 8

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(IJJLcom/handmark/pulltorefresh/library/l;)V

    return-void
.end method

.method private final a(IJJLcom/handmark/pulltorefresh/library/l;)V
    .locals 8

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->x:Lcom/handmark/pulltorefresh/library/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->x:Lcom/handmark/pulltorefresh/library/m;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/m;->a()V

    :cond_0
    sget-object v0, Lcom/handmark/pulltorefresh/library/g;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->o()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getScrollY()I

    move-result v2

    :goto_0
    if-eq v2, p1, :cond_2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->q:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->q:Landroid/view/animation/Interpolator;

    :cond_1
    new-instance v0, Lcom/handmark/pulltorefresh/library/m;

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/handmark/pulltorefresh/library/m;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIJLcom/handmark/pulltorefresh/library/l;)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->x:Lcom/handmark/pulltorefresh/library/m;

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->x:Lcom/handmark/pulltorefresh/library/m;

    invoke-virtual {p0, v0, p4, p5}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_1
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getScrollX()I

    move-result v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->x:Lcom/handmark/pulltorefresh/library/m;

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->k:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->k:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->u()V

    return-void
.end method

.method static synthetic b(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->q:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/16 v6, 0xc

    const/16 v5, 0x9

    const/4 v2, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/handmark/pulltorefresh/library/g;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->o()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setOrientation(I)V

    :goto_0
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setGravity(I)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->b:I

    sget-object v0, Lcom/estrongs/android/pop/ah;->c:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    invoke-static {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->mapIntToValue(I)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v1

    iput-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    :cond_0
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    invoke-static {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->mapIntToValue(I)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    move-result-object v1

    iput-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->r:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a:Landroid/view/View;

    invoke-direct {p0, p1, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Landroid/content/Context;Landroid/view/View;)V

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, v1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/a/e;

    move-result-object v1

    iput-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/a/e;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, v1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/a/e;

    move-result-object v1

    iput-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/a/e;

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_1
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->o:Z

    :cond_3
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->m:Z

    :cond_4
    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->f()V

    return-void

    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setOrientation(I)V

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "ptrAdapterViewBackground"

    const-string v2, "ptrRefreshableViewBackground"

    invoke-static {v1, v2}, Lcom/handmark/pulltorefresh/library/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private u()V
    .locals 2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->u:Lcom/handmark/pulltorefresh/library/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->u:Lcom/handmark/pulltorefresh/library/j;

    invoke-interface {v0, p0}, Lcom/handmark/pulltorefresh/library/j;->a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/k;

    invoke-interface {v0, p0}, Lcom/handmark/pulltorefresh/library/k;->a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/k;

    invoke-interface {v0, p0}, Lcom/handmark/pulltorefresh/library/k;->b(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V

    goto :goto_0
.end method

.method private v()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/handmark/pulltorefresh/library/g;->c:[I

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->d()Z

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->e()Z

    move-result v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->e()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private w()V
    .locals 7

    const/4 v6, 0x0

    const/high16 v5, 0x40800000    # 4.0f

    const/4 v4, 0x0

    sget-object v0, Lcom/handmark/pulltorefresh/library/g;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->o()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->f:F

    iget v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->d:F

    :goto_0
    sget-object v2, Lcom/handmark/pulltorefresh/library/g;->c:[I

    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    sub-float v0, v1, v0

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->q()I

    move-result v0

    :goto_1
    invoke-virtual {p0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(I)V

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->m()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    sget-object v3, Lcom/handmark/pulltorefresh/library/g;->c:[I

    iget-object v4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_2

    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/a/e;

    invoke-virtual {v3, v2}, Lcom/handmark/pulltorefresh/library/a/e;->b(F)V

    :goto_2
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    sget-object v3, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    sget-object v3, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    if-eq v2, v3, :cond_2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-lt v0, v2, :cond_2

    :cond_0
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    new-array v1, v6, [Z

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V

    :cond_1
    :goto_3
    return-void

    :pswitch_0
    iget v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->e:F

    iget v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->c:F

    goto :goto_0

    :pswitch_1
    sub-float v0, v1, v0

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->p()I

    move-result v0

    goto :goto_1

    :pswitch_2
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/a/e;

    invoke-virtual {v3, v2}, Lcom/handmark/pulltorefresh/library/a/e;->b(F)V

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    sget-object v3, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    if-ne v2, v3, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    new-array v1, v6, [Z

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method private x()Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    const/4 v3, -0x1

    const/4 v2, -0x2

    sget-object v0, Lcom/handmark/pulltorefresh/library/g;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->o()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private y()I
    .locals 3

    const/high16 v2, 0x40800000    # 4.0f

    sget-object v0, Lcom/handmark/pulltorefresh/library/g;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->o()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation
.end method

.method protected a(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/a/e;
    .locals 2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->r:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->o()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->createLoadingLayout(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/a/e;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/a/e;->setVisibility(I)V

    return-object v0
.end method

.method public final a(ZZ)Lcom/handmark/pulltorefresh/library/a;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->b(ZZ)Lcom/handmark/pulltorefresh/library/b;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 2

    sget-object v0, Lcom/handmark/pulltorefresh/library/g;->c:[I

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/a/e;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/a/e;->g()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/a/e;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/a/e;->g()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final a(I)V
    .locals 6

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->y()I

    move-result v0

    neg-int v1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->p:Z

    if-eqz v0, :cond_0

    if-gez v1, :cond_1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/a/e;

    invoke-virtual {v0, v3}, Lcom/handmark/pulltorefresh/library/a/e;->setVisibility(I)V

    :cond_0
    :goto_0
    sget-object v0, Lcom/handmark/pulltorefresh/library/g;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->o()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :cond_1
    if-lez v1, :cond_2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/a/e;

    invoke-virtual {v0, v3}, Lcom/handmark/pulltorefresh/library/a/e;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/a/e;

    invoke-virtual {v0, v2}, Lcom/handmark/pulltorefresh/library/a/e;->setVisibility(I)V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/a/e;

    invoke-virtual {v0, v2}, Lcom/handmark/pulltorefresh/library/a/e;->setVisibility(I)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v3, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->scrollTo(II)V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/a/e;

    const v2, 0x7f0a0369

    invoke-virtual {v0, v2}, Lcom/handmark/pulltorefresh/library/a/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/ESPullImageView;

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-double v2, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/a/e;

    const v4, 0x7f0a0368

    invoke-virtual {v1, v4}, Lcom/handmark/pulltorefresh/library/a/e;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-double v4, v1

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/ui/view/ESPullImageView;->a(D)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, v1, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->scrollTo(II)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(II)V
    .locals 3

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    sget-object v1, Lcom/handmark/pulltorefresh/library/g;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->o()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eq v1, p1, :cond_0

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_0

    :pswitch_1
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eq v1, p2, :cond_0

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final a(ILcom/handmark/pulltorefresh/library/l;)V
    .locals 7

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->r()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(IJJLcom/handmark/pulltorefresh/library/l;)V

    return-void
.end method

.method protected a(Landroid/content/res/TypedArray;)V
    .locals 0

    return-void
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected final a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected final a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const/4 v0, -0x1

    invoke-super {p0, p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->f()V

    :cond_0
    return-void
.end method

.method final varargs a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V
    .locals 3

    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    sget-object v0, Lcom/handmark/pulltorefresh/library/g;->b:[I

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->w:Lcom/handmark/pulltorefresh/library/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->w:Lcom/handmark/pulltorefresh/library/i;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-interface {v0, p0, v1, v2}, Lcom/handmark/pulltorefresh/library/i;->a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    :cond_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->c()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->b()V

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x0

    aget-boolean v0, p2, v0

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->b(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Lcom/handmark/pulltorefresh/library/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/k",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/k;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->u:Lcom/handmark/pulltorefresh/library/j;

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->h()Lcom/handmark/pulltorefresh/library/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/a;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 2

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(ZZ)Lcom/handmark/pulltorefresh/library/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/a;->c(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->j()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Refreshable View is not a ViewGroup so can\'t addView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected b(ZZ)Lcom/handmark/pulltorefresh/library/b;
    .locals 2

    new-instance v0, Lcom/handmark/pulltorefresh/library/b;

    invoke-direct {v0}, Lcom/handmark/pulltorefresh/library/b;-><init>()V

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/a/e;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/b;->a(Lcom/handmark/pulltorefresh/library/a/e;)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/a/e;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/b;->a(Lcom/handmark/pulltorefresh/library/a/e;)V

    :cond_1
    return-object v0
.end method

.method protected b()V
    .locals 2

    sget-object v0, Lcom/handmark/pulltorefresh/library/g;->c:[I

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/a/e;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/a/e;->i()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/a/e;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/a/e;->i()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final b(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->r()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(IJ)V

    return-void
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->h()Lcom/handmark/pulltorefresh/library/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/a;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected b(Z)V
    .locals 3

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/a/e;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/a/e;->h()V

    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/a/e;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/a/e;->h()V

    :cond_1
    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->l:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/handmark/pulltorefresh/library/e;

    invoke-direct {v0, p0}, Lcom/handmark/pulltorefresh/library/e;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V

    sget-object v1, Lcom/handmark/pulltorefresh/library/g;->c:[I

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->q()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p0, v1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(ILcom/handmark/pulltorefresh/library/l;)V

    :goto_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->p()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(ILcom/handmark/pulltorefresh/library/l;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->b(I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->u()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected c()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->g:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->p:Z

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/a/e;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/a/e;->j()V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/a/e;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/a/e;->j()V

    invoke-virtual {p0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->b(I)V

    return-void
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 1

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    return-void
.end method

.method protected abstract d()Z
.end method

.method protected abstract e()Z
.end method

.method protected f()V
    .locals 3

    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->x()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/a/e;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/a/e;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne p0, v1, :cond_0

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/a/e;

    invoke-virtual {p0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/a/e;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/a/e;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/a/e;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne p0, v1, :cond_2

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/a/e;

    invoke-virtual {p0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/a/e;

    invoke-virtual {p0, v1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t()V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    :goto_0
    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    return-void

    :cond_4
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    goto :goto_0
.end method

.method public final g()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    .locals 1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    return-object v0
.end method

.method public final h()Lcom/handmark/pulltorefresh/library/a;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(ZZ)Lcom/handmark/pulltorefresh/library/a;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    .locals 1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    return-object v0
.end method

.method public final j()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a:Landroid/view/View;

    return-object v0
.end method

.method public final k()Z
    .locals 1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->permitsPullToRefresh()Z

    move-result v0

    return v0
.end method

.method public final l()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a:Landroid/view/View;

    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/c;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()Z
    .locals 2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n()V
    .locals 2

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V

    :cond_0
    return-void
.end method

.method public abstract o()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->k()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_2

    :cond_1
    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->g:Z

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    iget-boolean v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->g:Z

    if-eqz v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    packed-switch v1, :pswitch_data_0

    :cond_4
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->g:Z

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->m:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->m()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sget-object v0, Lcom/handmark/pulltorefresh/library/g;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->o()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    iget v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->d:F

    sub-float v1, v3, v0

    iget v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->c:F

    sub-float v0, v4, v0

    :goto_2
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->b:I

    int-to-float v6, v6

    cmpl-float v6, v5, v6

    if-lez v6, :cond_4

    iget-boolean v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->n:Z

    if-eqz v6, :cond_6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v5, v0

    if-lez v0, :cond_4

    :cond_6
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    if-eqz v0, :cond_7

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_7

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    iput v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->d:F

    iput v4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->c:F

    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->g:Z

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    goto :goto_1

    :pswitch_2
    iget v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->c:F

    sub-float v1, v4, v0

    iget v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->d:F

    sub-float v0, v3, v0

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v0

    if-eqz v0, :cond_4

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_4

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    iput v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->d:F

    iput v4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->c:F

    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->g:Z

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    goto/16 :goto_1

    :pswitch_3
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->f:F

    iput v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->d:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->e:F

    iput v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->c:F

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->g:Z

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "ptr_mode"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->mapIntToValue(I)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    const-string v0, "ptr_current_mode"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->mapIntToValue(I)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    const-string v0, "ptr_disable_scrolling"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->m:Z

    const-string v0, "ptr_show_refreshing_view"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->l:Z

    const-string v0, "ptr_super"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v0, "ptr_state"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->mapIntToValue(I)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    move-result-object v0

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    if-ne v0, v1, :cond_1

    :cond_0
    new-array v1, v3, [Z

    aput-boolean v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->b(Landroid/os/Bundle;)V

    const-string v1, "ptr_state"

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ptr_mode"

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ptr_current_mode"

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->j:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ptr_disable_scrolling"

    iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->m:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "ptr_show_refreshing_view"

    iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->l:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "ptr_super"

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method protected final onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t()V

    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(II)V

    new-instance v0, Lcom/handmark/pulltorefresh/library/f;

    invoke-direct {v0, p0}, Lcom/handmark/pulltorefresh/library/f;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->k()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->m:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->m()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->f:F

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->d:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->e:F

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->c:F

    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->g:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->d:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->c:F

    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->w()V

    move v0, v1

    goto :goto_0

    :pswitch_2
    iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->g:Z

    if-eqz v2, :cond_0

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->g:Z

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->h:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    sget-object v3, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->u:Lcom/handmark/pulltorefresh/library/j;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/k;

    if-eqz v2, :cond_5

    :cond_4
    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    new-array v3, v1, [Z

    aput-boolean v1, v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->m()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->b(I)V

    move v0, v1

    goto :goto_0

    :cond_6
    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    new-array v0, v0, [Z

    invoke-virtual {p0, v2, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;[Z)V

    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final p()I
    .locals 1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/a/e;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/a/e;->f()I

    move-result v0

    return v0
.end method

.method protected final q()I
    .locals 1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/a/e;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/a/e;->f()I

    move-result v0

    return v0
.end method

.method protected r()I
    .locals 1

    const/16 v0, 0xc8

    return v0
.end method

.method protected s()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->k:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public setLongClickable(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->j()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLongClickable(Z)V

    return-void
.end method

.method protected final t()V
    .locals 8

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->y()I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v2

    float-to-int v6, v0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPaddingBottom()I

    move-result v2

    sget-object v0, Lcom/handmark/pulltorefresh/library/g;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->o()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v7

    aget v0, v0, v7

    packed-switch v0, :pswitch_data_0

    move v1, v2

    move v0, v3

    move v2, v4

    move v3, v5

    :goto_0
    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setPadding(IIII)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/a/e;

    invoke-virtual {v0, v6}, Lcom/handmark/pulltorefresh/library/a/e;->b(I)V

    neg-int v0, v6

    :goto_1
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/a/e;

    invoke-virtual {v1, v6}, Lcom/handmark/pulltorefresh/library/a/e;->b(I)V

    neg-int v1, v6

    move v3, v0

    move v0, v1

    move v1, v2

    move v2, v4

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v3, v0

    move v0, v1

    move v1, v2

    move v2, v4

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:Lcom/handmark/pulltorefresh/library/a/e;

    invoke-virtual {v0, v6}, Lcom/handmark/pulltorefresh/library/a/e;->a(I)V

    neg-int v0, v6

    :goto_2
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Lcom/handmark/pulltorefresh/library/a/e;

    invoke-virtual {v1, v6}, Lcom/handmark/pulltorefresh/library/a/e;->a(I)V

    neg-int v1, v6

    move v2, v0

    move v0, v3

    move v3, v5

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v2, v0

    move v0, v3

    move v3, v5

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
