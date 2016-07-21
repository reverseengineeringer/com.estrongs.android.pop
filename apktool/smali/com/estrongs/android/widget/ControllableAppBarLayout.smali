.class public Lcom/estrongs/android/widget/ControllableAppBarLayout;
.super Landroid/support/design/widget/AppBarLayout;

# interfaces
.implements Landroid/support/design/widget/g;


# instance fields
.field private b:Landroid/support/design/widget/AppBarLayout$Behavior;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/design/widget/CoordinatorLayout;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/estrongs/android/widget/ControllableAppBarLayout$ToolbarChange;

.field private e:Z

.field private f:Lcom/estrongs/android/widget/ControllableAppBarLayout$State;

.field private g:Lcom/estrongs/android/widget/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/design/widget/AppBarLayout;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/estrongs/android/widget/ControllableAppBarLayout$ToolbarChange;->NONE:Lcom/estrongs/android/widget/ControllableAppBarLayout$ToolbarChange;

    iput-object v0, p0, Lcom/estrongs/android/widget/ControllableAppBarLayout;->d:Lcom/estrongs/android/widget/ControllableAppBarLayout$ToolbarChange;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/widget/ControllableAppBarLayout;->e:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/estrongs/android/widget/ControllableAppBarLayout$ToolbarChange;->NONE:Lcom/estrongs/android/widget/ControllableAppBarLayout$ToolbarChange;

    iput-object v0, p0, Lcom/estrongs/android/widget/ControllableAppBarLayout;->d:Lcom/estrongs/android/widget/ControllableAppBarLayout$ToolbarChange;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/widget/ControllableAppBarLayout;->e:Z

    return-void
.end method

.method private declared-synchronized c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/estrongs/android/widget/c;->a:[I

    iget-object v1, p0, Lcom/estrongs/android/widget/ControllableAppBarLayout;->d:Lcom/estrongs/android/widget/ControllableAppBarLayout$ToolbarChange;

    invoke-virtual {v1}, Lcom/estrongs/android/widget/ControllableAppBarLayout$ToolbarChange;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    sget-object v0, Lcom/estrongs/android/widget/ControllableAppBarLayout$ToolbarChange;->NONE:Lcom/estrongs/android/widget/ControllableAppBarLayout$ToolbarChange;

    iput-object v0, p0, Lcom/estrongs/android/widget/ControllableAppBarLayout;->d:Lcom/estrongs/android/widget/ControllableAppBarLayout$ToolbarChange;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :pswitch_0
    :try_start_1
    invoke-direct {p0}, Lcom/estrongs/android/widget/ControllableAppBarLayout;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_1
    :try_start_2
    invoke-direct {p0}, Lcom/estrongs/android/widget/ControllableAppBarLayout;->e()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/estrongs/android/widget/ControllableAppBarLayout;->f()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/estrongs/android/widget/ControllableAppBarLayout;->g()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private d()V
    .locals 7

    iget-object v0, p0, Lcom/estrongs/android/widget/ControllableAppBarLayout;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/ControllableAppBarLayout;->b:Landroid/support/design/widget/AppBarLayout$Behavior;

    iget-object v1, p0, Lcom/estrongs/android/widget/ControllableAppBarLayout;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ControllableAppBarLayout;->getHeight()I

    move-result v5

    const/4 v2, 0x2

    new-array v6, v2, [I

    fill-array-data v6, :array_0

    move-object v2, p0

    invoke-virtual/range {v0 .. v6}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;II[I)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private e()V
    .locals 7

    iget-object v0, p0, Lcom/estrongs/android/widget/ControllableAppBarLayout;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/ControllableAppBarLayout;->b:Landroid/support/design/widget/AppBarLayout$Behavior;

    iget-object v1, p0, Lcom/estrongs/android/widget/ControllableAppBarLayout;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ControllableAppBarLayout;->getHeight()I

    move-result v2

    int-to-float v5, v2

    const/4 v6, 0x1

    move-object v2, p0

    invoke-virtual/range {v0 .. v6}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;FFZ)Z

    :cond_0
    return-void
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/widget/ControllableAppBarLayout;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/ControllableAppBarLayout;->b:Landroid/support/design/widget/AppBarLayout$Behavior;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(I)Z

    :cond_0
    return-void
.end method

.method private g()V
    .locals 7

    iget-object v0, p0, Lcom/estrongs/android/widget/ControllableAppBarLayout;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/ControllableAppBarLayout;->b:Landroid/support/design/widget/AppBarLayout$Behavior;

    iget-object v1, p0, Lcom/estrongs/android/widget/ControllableAppBarLayout;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ControllableAppBarLayout;->getHeight()I

    move-result v2

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0x5

    int-to-float v5, v2

    const/4 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v0 .. v6}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;FFZ)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/support/design/widget/AppBarLayout;I)V
    .locals 2

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/widget/ControllableAppBarLayout;->g:Lcom/estrongs/android/widget/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/ControllableAppBarLayout;->f:Lcom/estrongs/android/widget/ControllableAppBarLayout$State;

    sget-object v1, Lcom/estrongs/android/widget/ControllableAppBarLayout$State;->EXPANDED:Lcom/estrongs/android/widget/ControllableAppBarLayout$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/ControllableAppBarLayout;->g:Lcom/estrongs/android/widget/d;

    sget-object v1, Lcom/estrongs/android/widget/ControllableAppBarLayout$State;->EXPANDED:Lcom/estrongs/android/widget/ControllableAppBarLayout$State;

    invoke-interface {v0, v1}, Lcom/estrongs/android/widget/d;->a(Lcom/estrongs/android/widget/ControllableAppBarLayout$State;)V

    :cond_0
    sget-object v0, Lcom/estrongs/android/widget/ControllableAppBarLayout$State;->EXPANDED:Lcom/estrongs/android/widget/ControllableAppBarLayout$State;

    iput-object v0, p0, Lcom/estrongs/android/widget/ControllableAppBarLayout;->f:Lcom/estrongs/android/widget/ControllableAppBarLayout$State;

    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/widget/ControllableAppBarLayout;->g:Lcom/estrongs/android/widget/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/widget/ControllableAppBarLayout;->f:Lcom/estrongs/android/widget/ControllableAppBarLayout$State;

    sget-object v1, Lcom/estrongs/android/widget/ControllableAppBarLayout$State;->COLLAPSED:Lcom/estrongs/android/widget/ControllableAppBarLayout$State;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/widget/ControllableAppBarLayout;->g:Lcom/estrongs/android/widget/d;

    sget-object v1, Lcom/estrongs/android/widget/ControllableAppBarLayout$State;->COLLAPSED:Lcom/estrongs/android/widget/ControllableAppBarLayout$State;

    invoke-interface {v0, v1}, Lcom/estrongs/android/widget/d;->a(Lcom/estrongs/android/widget/ControllableAppBarLayout$State;)V

    :cond_2
    sget-object v0, Lcom/estrongs/android/widget/ControllableAppBarLayout$State;->COLLAPSED:Lcom/estrongs/android/widget/ControllableAppBarLayout$State;

    iput-object v0, p0, Lcom/estrongs/android/widget/ControllableAppBarLayout;->f:Lcom/estrongs/android/widget/ControllableAppBarLayout$State;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/widget/ControllableAppBarLayout;->g:Lcom/estrongs/android/widget/d;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/widget/ControllableAppBarLayout;->f:Lcom/estrongs/android/widget/ControllableAppBarLayout$State;

    sget-object v1, Lcom/estrongs/android/widget/ControllableAppBarLayout$State;->IDLE:Lcom/estrongs/android/widget/ControllableAppBarLayout$State;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/widget/ControllableAppBarLayout;->g:Lcom/estrongs/android/widget/d;

    sget-object v1, Lcom/estrongs/android/widget/ControllableAppBarLayout$State;->IDLE:Lcom/estrongs/android/widget/ControllableAppBarLayout$State;

    invoke-interface {v0, v1}, Lcom/estrongs/android/widget/d;->a(Lcom/estrongs/android/widget/ControllableAppBarLayout$State;)V

    :cond_4
    sget-object v0, Lcom/estrongs/android/widget/ControllableAppBarLayout$State;->IDLE:Lcom/estrongs/android/widget/ControllableAppBarLayout$State;

    iput-object v0, p0, Lcom/estrongs/android/widget/ControllableAppBarLayout;->f:Lcom/estrongs/android/widget/ControllableAppBarLayout$State;

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/estrongs/android/widget/ControllableAppBarLayout$ToolbarChange;->EXPAND_WITH_ANIMATION:Lcom/estrongs/android/widget/ControllableAppBarLayout$ToolbarChange;

    :goto_0
    iput-object v0, p0, Lcom/estrongs/android/widget/ControllableAppBarLayout;->d:Lcom/estrongs/android/widget/ControllableAppBarLayout$ToolbarChange;

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ControllableAppBarLayout;->requestLayout()V

    return-void

    :cond_0
    sget-object v0, Lcom/estrongs/android/widget/ControllableAppBarLayout$ToolbarChange;->EXPAND:Lcom/estrongs/android/widget/ControllableAppBarLayout$ToolbarChange;

    goto :goto_0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/ControllableAppBarLayout;->a(Z)V

    return-void
.end method

.method public getState()Lcom/estrongs/android/widget/ControllableAppBarLayout$State;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/ControllableAppBarLayout;->f:Lcom/estrongs/android/widget/ControllableAppBarLayout$State;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/support/design/widget/AppBarLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ControllableAppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/support/design/widget/v;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ControllableAppBarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/support/design/widget/CoordinatorLayout;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ControllableAppBarLayout must be a direct child of CoordinatorLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ControllableAppBarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/estrongs/android/widget/ControllableAppBarLayout;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p0}, Lcom/estrongs/android/widget/ControllableAppBarLayout;->a(Landroid/support/design/widget/g;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/design/widget/AppBarLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/estrongs/android/widget/ControllableAppBarLayout;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/widget/ControllableAppBarLayout;->e:Z

    iget-object v0, p0, Lcom/estrongs/android/widget/ControllableAppBarLayout;->d:Lcom/estrongs/android/widget/ControllableAppBarLayout$ToolbarChange;

    sget-object v1, Lcom/estrongs/android/widget/ControllableAppBarLayout$ToolbarChange;->NONE:Lcom/estrongs/android/widget/ControllableAppBarLayout$ToolbarChange;

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/widget/ControllableAppBarLayout;->c()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/support/design/widget/AppBarLayout;->onLayout(ZIIII)V

    sub-int v0, p4, p2

    if-lez v0, :cond_0

    sub-int v0, p5, p3

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/widget/ControllableAppBarLayout;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/ControllableAppBarLayout;->d:Lcom/estrongs/android/widget/ControllableAppBarLayout$ToolbarChange;

    sget-object v1, Lcom/estrongs/android/widget/ControllableAppBarLayout$ToolbarChange;->NONE:Lcom/estrongs/android/widget/ControllableAppBarLayout$ToolbarChange;

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/widget/ControllableAppBarLayout;->c()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout;->onMeasure(II)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ControllableAppBarLayout;->b:Landroid/support/design/widget/AppBarLayout$Behavior;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ControllableAppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/v;

    invoke-virtual {v0}, Landroid/support/design/widget/v;->b()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$Behavior;

    iput-object v0, p0, Lcom/estrongs/android/widget/ControllableAppBarLayout;->b:Landroid/support/design/widget/AppBarLayout$Behavior;

    :cond_0
    return-void
.end method

.method public setOnStateChangeListener(Lcom/estrongs/android/widget/d;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/ControllableAppBarLayout;->g:Lcom/estrongs/android/widget/d;

    return-void
.end method
