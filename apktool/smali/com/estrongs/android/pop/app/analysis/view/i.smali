.class public Lcom/estrongs/android/pop/app/analysis/view/i;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/PopupWindow;

.field private c:Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;

.field private d:Landroid/widget/Button;

.field private e:Lcom/estrongs/android/pop/app/analysis/view/r;

.field private f:Landroid/support/v7/widget/RecyclerView;

.field private g:Landroid/support/v7/widget/LinearLayoutManager;

.field private h:Lcom/estrongs/android/pop/app/analysis/view/u;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Landroid/view/View;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/analysis/view/s;",
            ">;"
        }
    .end annotation
.end field

.field private o:I

.field private p:I

.field private q:I

.field private r:Z

.field private s:Z

.field private t:Landroid/os/Handler;

.field private u:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/view/j;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/analysis/view/j;-><init>(Lcom/estrongs/android/pop/app/analysis/view/i;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->t:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/view/l;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/analysis/view/l;-><init>(Lcom/estrongs/android/pop/app/analysis/view/i;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->u:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->r:Z

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/view/i;->d()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/view/i;->e()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/analysis/view/i;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->j:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/estrongs/android/util/ap;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->ai(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->V(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->ae(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->Z(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->aY(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->X(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/analysis/view/i;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->s:Z

    return v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/analysis/view/i;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->o:I

    return v0
.end method

.method private c(Z)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/cu;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->b:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->k:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->k:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->b:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/view/i;->h()I

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->k:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->k:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/view/i;->h()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->b:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->k:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->b:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->k:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->b:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->k:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->b:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->k:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/view/i;->h()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->b:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->k:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/view/i;->h()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/analysis/view/i;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->n:Ljava/util/List;

    return-object v0
.end method

.method private d()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->m:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->n:Ljava/util/List;

    iput v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->o:I

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->r:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->q:I

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->p:I

    return-void

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->q:I

    goto :goto_0
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/analysis/view/i;)Lcom/estrongs/android/pop/app/analysis/view/u;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->h:Lcom/estrongs/android/pop/app/analysis/view/u;

    return-object v0
.end method

.method private e()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030031

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0e011e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->c:Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;

    const v0, 0x7f0e0120

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    const v0, 0x7f0e011f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->i:Landroid/widget/TextView;

    const v0, 0x7f0e0121

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->j:Landroid/widget/RelativeLayout;

    const v0, 0x7f0e0122

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->d:Landroid/widget/Button;

    new-instance v2, Lcom/estrongs/android/pop/app/analysis/view/n;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/analysis/view/n;-><init>(Lcom/estrongs/android/pop/app/analysis/view/i;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->g:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->g:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/LinearLayoutManager;->setSmoothScrollbarEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->g:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->f:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/estrongs/android/pop/app/analysis/view/o;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/analysis/view/o;-><init>(Lcom/estrongs/android/pop/app/analysis/view/i;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/view/p;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/analysis/view/p;-><init>(Lcom/estrongs/android/pop/app/analysis/view/i;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/view/q;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/analysis/view/q;-><init>(Lcom/estrongs/android/pop/app/analysis/view/i;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/view/u;

    invoke-direct {v0, p0, v5}, Lcom/estrongs/android/pop/app/analysis/view/u;-><init>(Lcom/estrongs/android/pop/app/analysis/view/i;Lcom/estrongs/android/pop/app/analysis/view/j;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->h:Lcom/estrongs/android/pop/app/analysis/view/u;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->h:Lcom/estrongs/android/pop/app/analysis/view/u;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v2, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->q:I

    iget v3, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->p:I

    mul-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->b:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->b:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    return-void
.end method

.method static synthetic f(Lcom/estrongs/android/pop/app/analysis/view/i;)Lcom/estrongs/android/pop/app/analysis/view/r;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->e:Lcom/estrongs/android/pop/app/analysis/view/r;

    return-object v0
.end method

.method private f()V
    .locals 8

    const v7, 0x7f080462

    const v6, 0x7f0802aa

    const v5, 0x7f080198

    const v4, 0x7f080196

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    new-instance v0, Lcom/estrongs/android/pop/app/analysis/view/s;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/analysis/view/s;-><init>(Lcom/estrongs/android/pop/app/analysis/view/i;)V

    iput-boolean v3, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->a:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08038d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/view/s;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/analysis/view/s;-><init>(Lcom/estrongs/android/pop/app/analysis/view/i;)V

    iput-boolean v3, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->a:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080603

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/view/s;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/analysis/view/s;-><init>(Lcom/estrongs/android/pop/app/analysis/view/i;)V

    iput-boolean v3, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->a:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/view/s;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/analysis/view/s;-><init>(Lcom/estrongs/android/pop/app/analysis/view/i;)V

    iput-boolean v3, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->a:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/view/s;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/analysis/view/s;-><init>(Lcom/estrongs/android/pop/app/analysis/view/i;)V

    iput-boolean v3, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->a:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->l:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/analysis/view/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/view/s;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/analysis/view/s;-><init>(Lcom/estrongs/android/pop/app/analysis/view/i;)V

    iput-boolean v3, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->a:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->ai(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->c:Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->setTitle(Ljava/lang/String;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->h:Lcom/estrongs/android/pop/app/analysis/view/u;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/view/u;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->ai(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/view/s;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/analysis/view/s;-><init>(Lcom/estrongs/android/pop/app/analysis/view/i;)V

    iput-boolean v3, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->a:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080135

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/view/s;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/analysis/view/s;-><init>(Lcom/estrongs/android/pop/app/analysis/view/i;)V

    iput-boolean v3, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->a:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08010f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/view/s;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/analysis/view/s;-><init>(Lcom/estrongs/android/pop/app/analysis/view/i;)V

    iput-boolean v3, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->a:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/view/s;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/analysis/view/s;-><init>(Lcom/estrongs/android/pop/app/analysis/view/i;)V

    iput-boolean v3, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->a:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08012d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->V(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/view/s;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/analysis/view/s;-><init>(Lcom/estrongs/android/pop/app/analysis/view/i;)V

    iput-boolean v3, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->a:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080603

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/view/s;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/analysis/view/s;-><init>(Lcom/estrongs/android/pop/app/analysis/view/i;)V

    iput-boolean v3, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->a:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/view/s;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/analysis/view/s;-><init>(Lcom/estrongs/android/pop/app/analysis/view/i;)V

    iput-boolean v3, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->a:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/view/s;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/analysis/view/s;-><init>(Lcom/estrongs/android/pop/app/analysis/view/i;)V

    iput-boolean v3, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->a:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/view/s;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/analysis/view/s;-><init>(Lcom/estrongs/android/pop/app/analysis/view/i;)V

    iput-boolean v3, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->a:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->ae(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/view/s;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/analysis/view/s;-><init>(Lcom/estrongs/android/pop/app/analysis/view/i;)V

    iput-boolean v3, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->a:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080603

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/view/s;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/analysis/view/s;-><init>(Lcom/estrongs/android/pop/app/analysis/view/i;)V

    iput-boolean v3, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->a:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/view/s;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/analysis/view/s;-><init>(Lcom/estrongs/android/pop/app/analysis/view/i;)V

    iput-boolean v3, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->a:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/view/s;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/analysis/view/s;-><init>(Lcom/estrongs/android/pop/app/analysis/view/i;)V

    iput-boolean v3, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->a:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/view/s;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/analysis/view/s;-><init>(Lcom/estrongs/android/pop/app/analysis/view/i;)V

    iput-boolean v3, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->a:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->Z(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/view/s;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/analysis/view/s;-><init>(Lcom/estrongs/android/pop/app/analysis/view/i;)V

    iput-boolean v3, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->a:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080603

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/view/s;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/analysis/view/s;-><init>(Lcom/estrongs/android/pop/app/analysis/view/i;)V

    iput-boolean v3, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->a:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/view/s;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/analysis/view/s;-><init>(Lcom/estrongs/android/pop/app/analysis/view/i;)V

    iput-boolean v3, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->a:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/view/s;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/analysis/view/s;-><init>(Lcom/estrongs/android/pop/app/analysis/view/i;)V

    iput-boolean v3, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->a:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/view/s;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/analysis/view/s;-><init>(Lcom/estrongs/android/pop/app/analysis/view/i;)V

    iput-boolean v3, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->a:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aY(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->X(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_8
    new-instance v0, Lcom/estrongs/android/pop/app/analysis/view/s;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/analysis/view/s;-><init>(Lcom/estrongs/android/pop/app/analysis/view/i;)V

    iput-boolean v3, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->a:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080603

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/view/s;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/analysis/view/s;-><init>(Lcom/estrongs/android/pop/app/analysis/view/i;)V

    iput-boolean v3, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->a:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/view/s;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/analysis/view/s;-><init>(Lcom/estrongs/android/pop/app/analysis/view/i;)V

    iput-boolean v3, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->a:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/view/s;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/analysis/view/s;-><init>(Lcom/estrongs/android/pop/app/analysis/view/i;)V

    iput-boolean v3, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->a:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/view/s;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/analysis/view/s;-><init>(Lcom/estrongs/android/pop/app/analysis/view/i;)V

    iput-boolean v3, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->a:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/view/s;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/analysis/view/s;-><init>(Lcom/estrongs/android/pop/app/analysis/view/i;)V

    iput-boolean v3, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->a:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08065e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->V(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->c:Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->ae(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->c:Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->Z(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->c:Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800ef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aY(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->X(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->c:Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->c:Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_f
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/estrongs/android/util/ap;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_11
    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->c:Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800d4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_12
    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->l:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->c:Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_13
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->c:Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080275

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_14
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->i:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method static synthetic g(Lcom/estrongs/android/pop/app/analysis/view/i;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->q:I

    return v0
.end method

.method private g()V
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->o:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->t:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->t:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->t:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->j:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->m:Z

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->s:Z

    return-void
.end method

.method private h()I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.android.internal.R$dimen"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "status_bar_height"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic h(Lcom/estrongs/android/pop/app/analysis/view/i;)I
    .locals 2

    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->o:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->o:I

    return v0
.end method

.method static synthetic i(Lcom/estrongs/android/pop/app/analysis/view/i;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->p:I

    return v0
.end method

.method static synthetic j(Lcom/estrongs/android/pop/app/analysis/view/i;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->f:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic k(Lcom/estrongs/android/pop/app/analysis/view/i;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->t:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic l(Lcom/estrongs/android/pop/app/analysis/view/i;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->u:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic m(Lcom/estrongs/android/pop/app/analysis/view/i;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->s:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->t:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->t:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->u:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p2, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->l:Ljava/lang/String;

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->k:Landroid/view/View;

    invoke-direct {p0, v8}, Lcom/estrongs/android/pop/app/analysis/view/i;->c(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->c:Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->a()V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->m:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/view/i;->f()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->t:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->u:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->t:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v8, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public a(Lcom/estrongs/android/pop/app/analysis/view/r;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->e:Lcom/estrongs/android/pop/app/analysis/view/r;

    return-void
.end method

.method public a(Z)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->m:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/view/i;->g()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->c:Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingView;->b()V

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->a:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->at()Lcom/estrongs/android/j/c;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "A_loading_hide"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    const-string v1, "analysis"

    const-string v2, "A_loading_hide"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/j/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public b(Z)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x1

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->r:Z

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->r:Z

    if-eqz v0, :cond_1

    iput v4, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->q:I

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->q:I

    iget v2, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->p:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->k:Landroid/view/View;

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    iput v3, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->q:I

    goto :goto_0

    :cond_2
    invoke-direct {p0, v3}, Lcom/estrongs/android/pop/app/analysis/view/i;->c(Z)V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->o:I

    sub-int/2addr v0, v1

    if-gt v0, v4, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->f:Landroid/support/v7/widget/RecyclerView;

    iget v1, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->o:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_1
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/i;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 0

    return-void
.end method
