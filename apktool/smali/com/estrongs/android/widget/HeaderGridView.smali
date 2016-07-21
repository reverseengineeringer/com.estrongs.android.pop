.class public Lcom/estrongs/android/widget/HeaderGridView;
.super Landroid/widget/GridView;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z

.field private g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:I

.field private l:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x1e

    iput v0, p0, Lcom/estrongs/android/widget/HeaderGridView;->b:I

    iput v1, p0, Lcom/estrongs/android/widget/HeaderGridView;->c:I

    iput-boolean v1, p0, Lcom/estrongs/android/widget/HeaderGridView;->j:Z

    iput v1, p0, Lcom/estrongs/android/widget/HeaderGridView;->k:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x1e

    iput v0, p0, Lcom/estrongs/android/widget/HeaderGridView;->b:I

    iput v1, p0, Lcom/estrongs/android/widget/HeaderGridView;->c:I

    iput-boolean v1, p0, Lcom/estrongs/android/widget/HeaderGridView;->j:Z

    iput v1, p0, Lcom/estrongs/android/widget/HeaderGridView;->k:I

    return-void
.end method

.method private a()V
    .locals 2

    invoke-virtual {p0, p0}, Lcom/estrongs/android/widget/HeaderGridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    const/16 v0, -0x64

    iput v0, p0, Lcom/estrongs/android/widget/HeaderGridView;->g:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/widget/HeaderGridView;->f:Z

    iget-object v0, p0, Lcom/estrongs/android/widget/HeaderGridView;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/widget/HeaderGridView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/widget/HeaderGridView;->d:I

    invoke-virtual {p0}, Lcom/estrongs/android/widget/HeaderGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/widget/HeaderGridView;->i:I

    invoke-virtual {p0}, Lcom/estrongs/android/widget/HeaderGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/estrongs/android/widget/HeaderGridView;->l:Landroid/os/Vibrator;

    return-void
.end method

.method private b()V
    .locals 5

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget v0, p0, Lcom/estrongs/android/widget/HeaderGridView;->k:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/estrongs/android/widget/HeaderGridView;->h:I

    iget v1, p0, Lcom/estrongs/android/widget/HeaderGridView;->g:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/estrongs/android/widget/HeaderGridView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/estrongs/android/widget/HeaderGridView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/estrongs/android/widget/HeaderGridView;->d:I

    iget v1, p0, Lcom/estrongs/android/widget/HeaderGridView;->k:I

    if-ne v1, v3, :cond_4

    iget-boolean v1, p0, Lcom/estrongs/android/widget/HeaderGridView;->f:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/estrongs/android/widget/HeaderGridView;->d:I

    if-ge v0, v1, :cond_3

    iput-boolean v2, p0, Lcom/estrongs/android/widget/HeaderGridView;->f:Z

    invoke-direct {p0}, Lcom/estrongs/android/widget/HeaderGridView;->f()V

    :cond_2
    :goto_1
    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/HeaderGridView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/estrongs/android/widget/HeaderGridView;->getRight()I

    move-result v2

    iget v3, p0, Lcom/estrongs/android/widget/HeaderGridView;->d:I

    sub-int v3, v0, v3

    iget-object v4, p0, Lcom/estrongs/android/widget/HeaderGridView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/widget/LinearLayout;->layout(IIII)V

    invoke-virtual {p0}, Lcom/estrongs/android/widget/HeaderGridView;->getBottom()I

    move-result v3

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/estrongs/android/widget/HeaderGridView;->layout(IIII)V

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/estrongs/android/widget/HeaderGridView;->f:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/estrongs/android/widget/HeaderGridView;->d:I

    if-le v0, v1, :cond_2

    iput-boolean v3, p0, Lcom/estrongs/android/widget/HeaderGridView;->f:Z

    invoke-direct {p0}, Lcom/estrongs/android/widget/HeaderGridView;->f()V

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/estrongs/android/widget/HeaderGridView;->k:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    iget v1, p0, Lcom/estrongs/android/widget/HeaderGridView;->k:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_5
    iget v1, p0, Lcom/estrongs/android/widget/HeaderGridView;->d:I

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/estrongs/android/widget/HeaderGridView;->f:Z

    if-nez v1, :cond_2

    if-lez v0, :cond_2

    iput-boolean v3, p0, Lcom/estrongs/android/widget/HeaderGridView;->f:Z

    invoke-direct {p0}, Lcom/estrongs/android/widget/HeaderGridView;->f()V

    goto :goto_1
.end method

.method private c()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/estrongs/android/widget/HeaderGridView;->k:I

    if-ne v0, v3, :cond_2

    iget-boolean v0, p0, Lcom/estrongs/android/widget/HeaderGridView;->f:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Lcom/estrongs/android/widget/HeaderGridView;->k:I

    invoke-direct {p0}, Lcom/estrongs/android/widget/HeaderGridView;->d()V

    :cond_0
    :goto_0
    const/16 v0, -0x64

    iput v0, p0, Lcom/estrongs/android/widget/HeaderGridView;->h:I

    iput v0, p0, Lcom/estrongs/android/widget/HeaderGridView;->g:I

    iput-boolean v2, p0, Lcom/estrongs/android/widget/HeaderGridView;->f:Z

    invoke-virtual {p0, v3}, Lcom/estrongs/android/widget/HeaderGridView;->setVerticalScrollBarEnabled(Z)V

    return-void

    :cond_1
    iput v2, p0, Lcom/estrongs/android/widget/HeaderGridView;->k:I

    invoke-direct {p0}, Lcom/estrongs/android/widget/HeaderGridView;->e()V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/estrongs/android/widget/HeaderGridView;->k:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iput v2, p0, Lcom/estrongs/android/widget/HeaderGridView;->k:I

    invoke-direct {p0}, Lcom/estrongs/android/widget/HeaderGridView;->e()V

    goto :goto_0
.end method

.method private d()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/widget/HeaderGridView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/widget/HeaderGridView;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/HeaderGridView;->getRight()I

    move-result v1

    iget v2, p0, Lcom/estrongs/android/widget/HeaderGridView;->d:I

    iget-object v3, p0, Lcom/estrongs/android/widget/HeaderGridView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0, v4, v1, v2}, Landroid/widget/LinearLayout;->layout(IIII)V

    invoke-virtual {p0}, Lcom/estrongs/android/widget/HeaderGridView;->getBottom()I

    move-result v3

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/estrongs/android/widget/HeaderGridView;->layout(IIII)V

    return-void
.end method

.method private e()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/widget/HeaderGridView;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/widget/HeaderGridView;->getLeft()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/HeaderGridView;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/estrongs/android/widget/HeaderGridView;->getBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/estrongs/android/widget/HeaderGridView;->layout(IIII)V

    return-void
.end method

.method private f()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/widget/HeaderGridView;->l:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/HeaderGridView;->l:Landroid/os/Vibrator;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/android/widget/HeaderGridView;->j:Z

    if-eqz v0, :cond_1

    const v0, 0xffffff

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/GridView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/estrongs/android/widget/HeaderGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/HeaderGridView;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/estrongs/android/widget/HeaderGridView;->getFirstVisiblePosition()I

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/estrongs/android/widget/HeaderGridView;->e:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_0
    return v1

    :pswitch_0
    iget v0, p0, Lcom/estrongs/android/widget/HeaderGridView;->g:I

    const/16 v2, -0x64

    if-ne v0, v2, :cond_1

    iput v3, p0, Lcom/estrongs/android/widget/HeaderGridView;->g:I

    iput v3, p0, Lcom/estrongs/android/widget/HeaderGridView;->h:I

    :cond_1
    iget v0, p0, Lcom/estrongs/android/widget/HeaderGridView;->k:I

    if-ne v0, v5, :cond_0

    goto :goto_0

    :pswitch_1
    iget v2, p0, Lcom/estrongs/android/widget/HeaderGridView;->g:I

    sub-int v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v4, p0, Lcom/estrongs/android/widget/HeaderGridView;->i:I

    if-le v2, v4, :cond_2

    iget v2, p0, Lcom/estrongs/android/widget/HeaderGridView;->k:I

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/estrongs/android/widget/HeaderGridView;->getFirstVisiblePosition()I

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lcom/estrongs/android/widget/HeaderGridView;->g:I

    if-le v3, v2, :cond_2

    iput v1, p0, Lcom/estrongs/android/widget/HeaderGridView;->k:I

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/HeaderGridView;->setVerticalScrollBarEnabled(Z)V

    :cond_2
    :goto_1
    iget v2, p0, Lcom/estrongs/android/widget/HeaderGridView;->k:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/estrongs/android/widget/HeaderGridView;->h:I

    sub-int v2, v3, v2

    if-gez v2, :cond_3

    move v0, v1

    :cond_3
    iput v3, p0, Lcom/estrongs/android/widget/HeaderGridView;->h:I

    invoke-direct {p0}, Lcom/estrongs/android/widget/HeaderGridView;->b()V

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/estrongs/android/widget/HeaderGridView;->k:I

    if-ne v2, v5, :cond_2

    iput v6, p0, Lcom/estrongs/android/widget/HeaderGridView;->k:I

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/HeaderGridView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_1

    :pswitch_2
    iget v2, p0, Lcom/estrongs/android/widget/HeaderGridView;->k:I

    if-nez v2, :cond_5

    iget v2, p0, Lcom/estrongs/android/widget/HeaderGridView;->k:I

    if-eq v2, v5, :cond_7

    :cond_5
    iget v2, p0, Lcom/estrongs/android/widget/HeaderGridView;->k:I

    if-ne v2, v6, :cond_6

    move v0, v1

    :cond_6
    iput v3, p0, Lcom/estrongs/android/widget/HeaderGridView;->h:I

    invoke-direct {p0}, Lcom/estrongs/android/widget/HeaderGridView;->b()V

    invoke-direct {p0}, Lcom/estrongs/android/widget/HeaderGridView;->c()V

    :cond_7
    if-eqz v0, :cond_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setExpanded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/widget/HeaderGridView;->j:Z

    return-void
.end method

.method public setHeader(Landroid/widget/LinearLayout;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/widget/HeaderGridView;->a:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/widget/HeaderGridView;->a:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/estrongs/android/widget/HeaderGridView;->e:Z

    iget-boolean v0, p0, Lcom/estrongs/android/widget/HeaderGridView;->e:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/widget/HeaderGridView;->a()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
