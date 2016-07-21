.class public abstract Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;
.super Landroid/widget/FrameLayout;


# static fields
.field private static final f:[I


# instance fields
.field protected final a:Landroid/view/View;

.field protected final b:Landroid/view/View;

.field protected c:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field protected d:Lcom/estrongs/android/ui/fastscroller/d;

.field protected e:Z

.field private g:Landroid/support/v7/widget/RecyclerView;

.field private h:Z

.field private final i:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/estrongs/android/pop/ah;->AbsRecyclerViewFastScroller:[I

    sput-object v0, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->f:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v4, p0, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->h:Z

    iput-boolean v4, p0, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->e:Z

    new-instance v0, Lcom/estrongs/android/ui/fastscroller/a;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/fastscroller/a;-><init>(Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->i:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->f:[I

    invoke-virtual {v0, p2, v1, v4, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->getLayoutResourceId()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0e0688

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->a:Landroid/view/View;

    const v0, 0x7f0e0689

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->b:Landroid/view/View;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x1

    const v3, -0x777778

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->a:Landroid/view/View;

    invoke-direct {p0, v3, v0, v2}, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x3

    const v3, -0x777778

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->b:Landroid/view/View;

    invoke-direct {p0, v3, v0, v2}, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/at;->o()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->setPadding(IIII)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->g:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method private a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private b(F)I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->h:Z

    return v0
.end method

.method private c(F)Z
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->b:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/cn;->p(Landroid/view/View;)F

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget-object v2, p0, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)F
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->getScrollProgressCalculator()Lcom/estrongs/android/ui/fastscroller/a/b/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->getScrollProgressCalculator()Lcom/estrongs/android/ui/fastscroller/a/b/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/estrongs/android/ui/fastscroller/a/b/b;->a(Landroid/view/MotionEvent;)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract a()V
.end method

.method public abstract a(F)V
.end method

.method public a(FZ)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->b(F)I

    move-result v0

    if-eqz p2, :cond_0

    new-instance v1, Lcom/estrongs/android/ui/fastscroller/b;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/ui/fastscroller/b;-><init>(Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;I)V

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(FF)Z
    .locals 1

    invoke-direct {p0, p2}, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->c(F)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->i:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->i:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v0, v2, v3}, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getHandleView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->b:Landroid/view/View;

    return-object v0
.end method

.method protected abstract getLayoutResourceId()I
.end method

.method public getOnScrollListener()Landroid/support/v7/widget/RecyclerView$OnScrollListener;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->c:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/fastscroller/c;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/fastscroller/c;-><init>(Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->c:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->c:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    return-object v0
.end method

.method protected abstract getScrollProgressCalculator()Lcom/estrongs/android/ui/fastscroller/a/b/b;
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->a()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->getScrollProgressCalculator()Lcom/estrongs/android/ui/fastscroller/a/b/b;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->a()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    move v0, v1

    :goto_1
    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->a(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->setFromTouchHandle(Z)V

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->a(Landroid/view/MotionEvent;)F

    move-result v2

    invoke-virtual {p0, v2, v0}, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->a(FZ)V

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->a(F)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->setFromTouchHandle(Z)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->b()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->a:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBarColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setFromTouchHandle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->h:Z

    return-void
.end method

.method public setHandleBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->b:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setHandleColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setHandleViewDisplayListener(Lcom/estrongs/android/ui/fastscroller/d;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->d:Lcom/estrongs/android/ui/fastscroller/d;

    return-void
.end method

.method public setIsShowAdressBar(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->e:Z

    return-void
.end method

.method public setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/fastscroller/AbsRecyclerViewFastScroller;->g:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method
