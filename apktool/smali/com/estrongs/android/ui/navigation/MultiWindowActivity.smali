.class public Lcom/estrongs/android/ui/navigation/MultiWindowActivity;
.super Lcom/estrongs/android/ui/base/HomeAsBackActivity;


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

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/FrameLayout;

.field private g:Landroid/view/View;

.field private h:Landroid/os/Handler;

.field private i:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->a:Ljava/util/List;

    new-instance v0, Lcom/estrongs/android/ui/navigation/c;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/navigation/c;-><init>(Lcom/estrongs/android/ui/navigation/MultiWindowActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->i:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/navigation/MultiWindowActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->f()V

    return-void
.end method

.method private a(Lcom/estrongs/android/ui/view/PopMultiWindowGrid;I)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p2}, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->setPosition(I)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/navigation/MultiWindowActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->h:Landroid/os/Handler;

    return-object v0
.end method

.method private f()V
    .locals 8

    const v7, 0x7f0e02c3

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030153

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->g:Landroid/view/View;

    iget-boolean v0, p0, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    new-array v2, v0, [Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v2, v1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->g:Landroid/view/View;

    const v3, 0x7f0e02c7

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v2, v4

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->g:Landroid/view/View;

    const v3, 0x7f0e02c8

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v2, v5

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->g:Landroid/view/View;

    const v3, 0x7f0e0330

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v2, v6

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->g:Landroid/view/View;

    const v4, 0x7f0e059e

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v2, v3

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->g:Landroid/view/View;

    const v4, 0x7f0e059f

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v2, v3

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_1

    aget-object v0, v2, v1

    const v3, 0x7f0e02c4

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->a(Lcom/estrongs/android/ui/view/PopMultiWindowGrid;I)V

    aget-object v0, v2, v1

    const v3, 0x7f0e02c5

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->a(Lcom/estrongs/android/ui/view/PopMultiWindowGrid;I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-array v2, v6, [Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v2, v1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->g:Landroid/view/View;

    const v3, 0x7f0e02c7

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v2, v4

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->g:Landroid/view/View;

    const v3, 0x7f0e02c8

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v2, v5

    :goto_1
    array-length v0, v2

    if-ge v1, v0, :cond_1

    aget-object v0, v2, v1

    const v3, 0x7f0e02c4

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->a(Lcom/estrongs/android/ui/view/PopMultiWindowGrid;I)V

    aget-object v0, v2, v1

    const v3, 0x7f0e02c5

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->a(Lcom/estrongs/android/ui/view/PopMultiWindowGrid;I)V

    aget-object v0, v2, v1

    const v3, 0x7f0e02c6

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v0, v3}, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->a(Lcom/estrongs/android/ui/view/PopMultiWindowGrid;I)V

    aget-object v0, v2, v1

    const v3, 0x7f0e02cd

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x3

    invoke-direct {p0, v0, v3}, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->a(Lcom/estrongs/android/ui/view/PopMultiWindowGrid;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;

    iget-object v2, p0, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->h:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->setHandler(Landroid/os/Handler;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->f:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->e()Lcom/estrongs/android/ui/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/d/i;->c()I

    move-result v2

    invoke-virtual {p0}, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->e()Lcom/estrongs/android/ui/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/d/i;->a()I

    move-result v4

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->a:Ljava/util/List;

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
    iget-boolean v0, p0, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->b:Z

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
    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    if-gt v2, v1, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->a:Ljava/util/List;

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
    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->a:Ljava/util/List;

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
    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public e()Lcom/estrongs/android/ui/d/i;
    .locals 1

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->au()Lcom/estrongs/android/ui/d/i;

    move-result-object v0

    return-object v0
.end method

.method protected g()I
    .locals 1

    const v0, 0x7f020438

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const/4 v0, 0x1

    invoke-super {p0, p1}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->b:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    const-string v0, "ddd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "====isPortrait======"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->h:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/ui/navigation/g;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/navigation/g;-><init>(Lcom/estrongs/android/ui/navigation/MultiWindowActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030157

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->setContentView(I)V

    const v0, 0x7f080459

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->setTitle(I)V

    const v0, 0x7f0e05b3

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->f:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->b:Z

    const v0, 0x7f0e05b4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f0e05b5

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f0e05b6

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    new-instance v0, Lcom/estrongs/android/ui/navigation/a;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/navigation/a;-><init>(Lcom/estrongs/android/ui/navigation/MultiWindowActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->h:Landroid/os/Handler;

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->h:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/ui/navigation/b;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/navigation/b;-><init>(Lcom/estrongs/android/ui/navigation/MultiWindowActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 4

    invoke-super {p0}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onStart()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-static {p0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->g()I

    move-result v2

    const v3, 0x7f0d0159

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/ui/theme/at;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
