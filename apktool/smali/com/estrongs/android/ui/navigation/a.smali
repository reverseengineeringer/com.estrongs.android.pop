.class public Lcom/estrongs/android/ui/navigation/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/ui/view/PopMultiWindowGrid;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

.field private d:Landroid/os/Handler;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:I

.field private j:Lcom/estrongs/android/widget/RealViewSwitcher;

.field private k:Lcom/estrongs/android/ui/navigation/TabIndicatorView;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Landroid/os/Handler;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/ui/navigation/a;->i:I

    iput-object p1, p0, Lcom/estrongs/android/ui/navigation/a;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030099

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/navigation/a;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/a;->e:Landroid/view/View;

    const v2, 0x7f0a0077

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/widget/RealViewSwitcher;

    iput-object v0, p0, Lcom/estrongs/android/ui/navigation/a;->j:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0300b2

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/navigation/a;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/a;->e:Landroid/view/View;

    const v2, 0x7f0a02b2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;

    iput-object v0, p0, Lcom/estrongs/android/ui/navigation/a;->k:Lcom/estrongs/android/ui/navigation/TabIndicatorView;

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/a;->j:Lcom/estrongs/android/widget/RealViewSwitcher;

    iget-object v2, p0, Lcom/estrongs/android/ui/navigation/a;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/widget/RealViewSwitcher;->addView(Landroid/view/View;)V

    invoke-static {p1}, Lcom/estrongs/android/view/u;->a(Landroid/app/Activity;)Lcom/estrongs/android/view/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/view/u;->c()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/a;->j:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/widget/RealViewSwitcher;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/a;->j:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->f(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/a;->j:Lcom/estrongs/android/widget/RealViewSwitcher;

    new-instance v2, Lcom/estrongs/android/ui/navigation/b;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/navigation/b;-><init>(Lcom/estrongs/android/ui/navigation/a;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/widget/RealViewSwitcher;->a(Lcom/estrongs/android/widget/bc;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/a;->e:Landroid/view/View;

    const v2, 0x7f0a02b0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/navigation/a;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/a;->h:Landroid/view/View;

    new-instance v2, Lcom/estrongs/android/ui/navigation/c;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/navigation/c;-><init>(Lcom/estrongs/android/ui/navigation/a;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/a;->e:Landroid/view/View;

    const v2, 0x7f0a02b1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/navigation/a;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/a;->g:Landroid/view/View;

    new-instance v2, Lcom/estrongs/android/ui/navigation/d;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/navigation/d;-><init>(Lcom/estrongs/android/ui/navigation/a;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p2, p0, Lcom/estrongs/android/ui/navigation/a;->d:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/estrongs/android/ui/navigation/a;->b:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/navigation/a;->a:Ljava/util/List;

    :try_start_0
    invoke-direct {p0}, Lcom/estrongs/android/ui/navigation/a;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/navigation/a;)Lcom/estrongs/android/ui/navigation/TabIndicatorView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/a;->k:Lcom/estrongs/android/ui/navigation/TabIndicatorView;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/navigation/a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/navigation/a;->b(I)V

    return-void
.end method

.method private a(Lcom/estrongs/android/ui/view/PopMultiWindowGrid;I)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p2}, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->a(I)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/navigation/a;)Lcom/estrongs/android/pop/view/FileExplorerActivity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/a;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    return-object v0
.end method

.method private b(I)V
    .locals 2

    iget v0, p0, Lcom/estrongs/android/ui/navigation/a;->i:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/estrongs/android/ui/navigation/a;->i:I

    iget v0, p0, Lcom/estrongs/android/ui/navigation/a;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/estrongs/android/ui/navigation/a;->e()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/estrongs/android/ui/navigation/a;->i:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/ui/navigation/a;->e()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/navigation/a;)Lcom/estrongs/android/widget/RealViewSwitcher;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/a;->j:Lcom/estrongs/android/widget/RealViewSwitcher;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/navigation/a;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/a;->d:Landroid/os/Handler;

    return-object v0
.end method

.method private d()V
    .locals 7

    const v3, 0x7f0a011e

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/estrongs/android/ui/navigation/a;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    new-array v2, v0, [Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/a;->f:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v2, v1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/a;->f:Landroid/view/View;

    const v3, 0x7f0a0122

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v2, v4

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/a;->f:Landroid/view/View;

    const v3, 0x7f0a0123

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v2, v5

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/a;->f:Landroid/view/View;

    const v3, 0x7f0a018b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v2, v6

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/a;->f:Landroid/view/View;

    const v4, 0x7f0a0343

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v2, v3

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/a;->f:Landroid/view/View;

    const v4, 0x7f0a0344

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v2, v3

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_1

    aget-object v0, v2, v1

    const v3, 0x7f0a011f

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/estrongs/android/ui/navigation/a;->a(Lcom/estrongs/android/ui/view/PopMultiWindowGrid;I)V

    aget-object v0, v2, v1

    const v3, 0x7f0a0120

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/estrongs/android/ui/navigation/a;->a(Lcom/estrongs/android/ui/view/PopMultiWindowGrid;I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-array v2, v6, [Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/a;->f:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v2, v1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/a;->f:Landroid/view/View;

    const v3, 0x7f0a0122

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v2, v4

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/a;->f:Landroid/view/View;

    const v3, 0x7f0a0123

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v2, v5

    :goto_1
    array-length v0, v2

    if-ge v1, v0, :cond_1

    aget-object v0, v2, v1

    const v3, 0x7f0a011f

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/estrongs/android/ui/navigation/a;->a(Lcom/estrongs/android/ui/view/PopMultiWindowGrid;I)V

    aget-object v0, v2, v1

    const v3, 0x7f0a0120

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/estrongs/android/ui/navigation/a;->a(Lcom/estrongs/android/ui/view/PopMultiWindowGrid;I)V

    aget-object v0, v2, v1

    const v3, 0x7f0a0121

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v0, v3}, Lcom/estrongs/android/ui/navigation/a;->a(Lcom/estrongs/android/ui/view/PopMultiWindowGrid;I)V

    aget-object v0, v2, v1

    const v3, 0x7f0a0128

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x3

    invoke-direct {p0, v0, v3}, Lcom/estrongs/android/ui/navigation/a;->a(Lcom/estrongs/android/ui/view/PopMultiWindowGrid;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/estrongs/android/ui/navigation/e;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/navigation/e;-><init>(Lcom/estrongs/android/ui/navigation/a;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->a(Landroid/os/Handler;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/a;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->aX()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/navigation/a;->a(I)V

    return-void
.end method

.method private e()V
    .locals 5

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/a;->e:Landroid/view/View;

    const v1, 0x7f0a02b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget v1, p0, Lcom/estrongs/android/ui/navigation/a;->i:I

    if-nez v1, :cond_1

    new-instance v1, Lcom/estrongs/android/ui/e/jk;

    iget-object v2, p0, Lcom/estrongs/android/ui/navigation/a;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v3, p0, Lcom/estrongs/android/ui/navigation/a;->b:Z

    invoke-direct {v1, v2, v3}, Lcom/estrongs/android/ui/e/jk;-><init>(Landroid/content/Context;Z)V

    iget-boolean v2, p0, Lcom/estrongs/android/ui/navigation/a;->b:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/ui/navigation/a;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/e/jk;->b(I)V

    :cond_0
    invoke-virtual {v1}, Lcom/estrongs/android/ui/e/jk;->a()Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0b0021

    const v2, 0x7f0202c4

    new-instance v3, Lcom/estrongs/android/ui/navigation/g;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/navigation/g;-><init>(Lcom/estrongs/android/ui/navigation/a;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/estrongs/android/ui/e/jk;->a(IILandroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    const v0, 0x7f0b0025

    const v2, 0x7f020291

    new-instance v3, Lcom/estrongs/android/ui/navigation/j;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/navigation/j;-><init>(Lcom/estrongs/android/ui/navigation/a;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/estrongs/android/ui/e/jk;->a(IILandroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    const v0, 0x7f0b0314

    const v2, 0x7f020290

    new-instance v3, Lcom/estrongs/android/ui/navigation/k;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/navigation/k;-><init>(Lcom/estrongs/android/ui/navigation/a;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/estrongs/android/ui/e/jk;->a(IILandroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/a;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/view/u;->a(Landroid/app/Activity;)Lcom/estrongs/android/view/u;

    move-result-object v1

    iget-boolean v2, p0, Lcom/estrongs/android/ui/navigation/a;->b:Z

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/view/u;->a(ZLandroid/widget/LinearLayout;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/a;->e:Landroid/view/View;

    return-object v0
.end method

.method public a(I)V
    .locals 3

    iget v0, p0, Lcom/estrongs/android/ui/navigation/a;->i:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/estrongs/android/ui/navigation/a;->i:I

    iget v0, p0, Lcom/estrongs/android/ui/navigation/a;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/a;->j:Lcom/estrongs/android/widget/RealViewSwitcher;

    iget v1, p0, Lcom/estrongs/android/ui/navigation/a;->i:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->a(I)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/navigation/a;->e()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/a;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/ui/navigation/a;->i:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ad;->e(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/a;->k:Lcom/estrongs/android/ui/navigation/TabIndicatorView;

    iget v1, p0, Lcom/estrongs/android/ui/navigation/a;->i:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->a(IF)V

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lcom/estrongs/android/ui/navigation/a;->i:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/a;->j:Lcom/estrongs/android/widget/RealViewSwitcher;

    iget v1, p0, Lcom/estrongs/android/ui/navigation/a;->i:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->a(I)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/navigation/a;->e()V

    goto :goto_0
.end method

.method protected a(Lcom/estrongs/android/ui/navigation/r;)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/ui/d/e;->c()I

    move-result v2

    invoke-static {}, Lcom/estrongs/android/ui/d/e;->a()I

    move-result v4

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/a;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->setVisibility(I)V

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->b(I)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/estrongs/android/ui/navigation/a;->b:Z

    if-eqz v0, :cond_2

    rem-int/lit8 v0, v2, 0x2

    if-lez v0, :cond_1

    rem-int/lit8 v0, v2, 0x2

    rsub-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    if-gt v2, v1, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/a;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->setVisibility(I)V

    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    rem-int/lit8 v0, v2, 0x4

    if-lez v0, :cond_1

    rem-int/lit8 v0, v2, 0x4

    rsub-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/a;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    :goto_3
    return-void

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/a;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/a;->j:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->removeAllViews()V

    return-void
.end method
