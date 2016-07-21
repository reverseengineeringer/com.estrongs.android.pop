.class public Lcom/estrongs/android/ui/navigation/h;
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

.field private g:Landroid/widget/FrameLayout;

.field private h:Lcom/estrongs/android/ui/theme/at;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/FrameLayout;

.field private k:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Landroid/os/Handler;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/estrongs/android/ui/navigation/i;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/navigation/i;-><init>(Lcom/estrongs/android/ui/navigation/h;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/navigation/h;->k:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/estrongs/android/ui/navigation/h;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/h;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/navigation/h;->h:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {p1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->as()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/navigation/h;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/h;->e:Landroid/view/View;

    const v1, 0x7f0e01d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/navigation/h;->g:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030153

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/navigation/h;->f:Landroid/view/View;

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030157

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/navigation/h;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/h;->i:Landroid/view/View;

    const v1, 0x7f0e05b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/navigation/h;->j:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/h;->e:Landroid/view/View;

    const v1, 0x7f0e05b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/h;->e:Landroid/view/View;

    const v3, 0x7f0e05b8

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p1}, Lcom/estrongs/android/view/y;->a(Landroid/app/Activity;)Lcom/estrongs/android/view/y;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/view/y;->g()Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lcom/estrongs/android/view/y;->a(Landroid/app/Activity;)Lcom/estrongs/android/view/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/view/y;->g()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lcom/estrongs/android/view/y;->a(Landroid/app/Activity;)Lcom/estrongs/android/view/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/view/y;->c()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/h;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iput-object p2, p0, Lcom/estrongs/android/ui/navigation/h;->d:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_1

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/estrongs/android/ui/navigation/h;->b:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/navigation/h;->a:Ljava/util/List;

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/navigation/h;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/h;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/navigation/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/navigation/h;->e()V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/ui/navigation/h;)Lcom/estrongs/android/pop/view/FileExplorerActivity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/h;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    return-object v0
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/h;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->ay()V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/h;->e:Landroid/view/View;

    return-object v0
.end method

.method public b()V
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/navigation/h;->d()Lcom/estrongs/android/ui/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/d/i;->c()I

    move-result v2

    invoke-virtual {p0}, Lcom/estrongs/android/ui/navigation/h;->d()Lcom/estrongs/android/ui/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/d/i;->a()I

    move-result v4

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/h;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->setVisibility(I)V

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->a(I)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/estrongs/android/ui/navigation/h;->b:Z

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
    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    if-gt v2, v1, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/h;->a:Ljava/util/List;

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
    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/h;->a:Ljava/util/List;

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
    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/h;->i:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/h;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/h;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/h;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->ax()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    invoke-direct {p0}, Lcom/estrongs/android/ui/navigation/h;->e()V

    return-void
.end method

.method public d()Lcom/estrongs/android/ui/d/i;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/h;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->au()Lcom/estrongs/android/ui/d/i;

    move-result-object v0

    return-object v0
.end method
