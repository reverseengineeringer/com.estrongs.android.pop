.class public abstract Lcom/estrongs/android/pop/app/analysis/b/a;
.super Lcom/estrongs/android/pop/app/analysis/b/h;

# interfaces
.implements Lcom/estrongs/android/a/j;


# instance fields
.field protected a:Landroid/support/v7/widget/RecyclerView;

.field protected b:Landroid/widget/Button;

.field protected c:Lcom/estrongs/android/ui/recycler/g;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:I

.field protected i:Landroid/view/View;

.field protected j:Landroid/widget/ProgressBar;

.field protected k:Landroid/widget/TextView;

.field protected l:Landroid/widget/TextView;

.field protected m:Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;

.field protected n:Landroid/support/v7/widget/LinearLayoutManager;

.field protected o:Ljava/util/concurrent/atomic/AtomicLong;

.field protected p:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/b/h;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->o:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f03002f

    return v0
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->l:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/app/analysis/b/a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->l:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 3

    const/16 v2, 0xe

    const v0, 0x7f0e000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->n:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->n:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v2, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    :goto_0
    const v0, 0x7f0e010d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->b:Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/pop/app/analysis/b/b;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/analysis/b/b;-><init>(Lcom/estrongs/android/pop/app/analysis/b/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e0118

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->i:Landroid/view/View;

    const v0, 0x7f0e0119

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->j:Landroid/widget/ProgressBar;

    const v0, 0x7f0e011a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->k:Landroid/widget/TextView;

    const v0, 0x7f0e00c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->m:Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->m:Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->m:Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v2, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->m:Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVerticalScrollBarEnabled(Z)V

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/a;->d()V

    const v0, 0x7f0e011b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->l:Landroid/widget/TextView;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->m:Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;->getOnScrollListener()Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->m:Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_1
.end method

.method protected a(Landroid/view/View;I)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->p:F

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/cn;->v(Landroid/view/View;)F

    move-result v1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->m:Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;->getHandleView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    if-gez p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->m:Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;

    invoke-static {v2, v1}, Landroid/support/v4/view/cn;->d(Landroid/view/View;F)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->m:Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;

    invoke-virtual {v2, v1, v0}, Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;->b(FF)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->m:Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;->invalidate()V

    return-void
.end method

.method protected a(Lcom/estrongs/android/pop/app/analysis/b/g;Z)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-eqz p2, :cond_1

    iget-object v0, p1, Lcom/estrongs/android/pop/app/analysis/b/g;->b:Lcom/estrongs/fs/h;

    check-cast v0, Lcom/estrongs/android/a/b/f;

    check-cast v0, Lcom/estrongs/android/a/b/f;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/f;->n()Lcom/estrongs/fs/impl/b/d;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/estrongs/android/ui/dialog/o;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/android/ui/dialog/o;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/impl/b/d;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/o;->a()V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/estrongs/android/pop/app/analysis/b/g;->b:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/hf;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0, v4}, Lcom/estrongs/android/ui/dialog/hf;-><init>(Landroid/app/Activity;Ljava/lang/String;Z)V

    invoke-virtual {v1, v5}, Lcom/estrongs/android/ui/dialog/hf;->c(Z)V

    iget-object v2, p1, Lcom/estrongs/android/pop/app/analysis/b/g;->b:Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v2

    sget-object v3, Lcom/estrongs/fs/w;->a:Lcom/estrongs/fs/w;

    if-ne v2, v3, :cond_2

    invoke-virtual {v1, v4}, Lcom/estrongs/android/ui/dialog/hf;->a(Z)V

    :goto_1
    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/hf;->a()V

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v5}, Lcom/estrongs/android/ui/dialog/hf;->a(Z)V

    invoke-virtual {v1, v4}, Lcom/estrongs/android/ui/dialog/hf;->b(Z)V

    const v2, 0x7f08048e

    new-instance v3, Lcom/estrongs/android/pop/app/analysis/b/c;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/pop/app/analysis/b/c;-><init>(Lcom/estrongs/android/pop/app/analysis/b/a;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/ui/dialog/hf;->b(ILandroid/content/DialogInterface$OnClickListener;)V

    const v0, 0x7f080221

    new-instance v2, Lcom/estrongs/android/pop/app/analysis/b/d;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/analysis/b/d;-><init>(Lcom/estrongs/android/pop/app/analysis/b/a;)V

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/ui/dialog/hf;->a(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/a;->n()V

    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d()Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/analysis/b/e;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/analysis/b/e;-><init>(Lcom/estrongs/android/pop/app/analysis/b/a;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Ljava/lang/String;Ljava/util/List;Lcom/estrongs/android/appinfo/r;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/a/b/a;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/estrongs/android/pop/app/analysis/b/a;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method protected a(Z)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/a;->f()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/analysis/b/a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method protected c()V
    .locals 3

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/a;->o()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "analysis_result_card_path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/a;->o()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "analysis_result_card_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/a;->o()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "analysis_result_page_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->h:I

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/a;->o()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "analysis_result_card_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/a;->o()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "analysis_result_card_packagename"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/a;->j()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/a;->e()V

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/android/a/b;->a(Lcom/estrongs/android/a/j;)V

    return-void
.end method

.method protected d()V
    .locals 3

    new-instance v0, Lcom/estrongs/android/ui/recycler/g;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/recycler/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->c:Lcom/estrongs/android/ui/recycler/g;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->c:Lcom/estrongs/android/ui/recycler/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/recycler/g;->b(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->c:Lcom/estrongs/android/ui/recycler/g;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/a;->q()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/recycler/g;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->c:Lcom/estrongs/android/ui/recycler/g;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method protected e()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->k:Landroid/widget/TextView;

    const v1, 0x7f0805b6

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/analysis/b/a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected f()I
    .locals 1

    const v0, 0x7f080316

    return v0
.end method

.method protected g()Lcom/estrongs/android/pop/app/analysis/AnalysisResultDetailActivity;
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultDetailActivity;

    return-object v0
.end method

.method protected h()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "analysis_result_card_key"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "analysis_result_card_path"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "analysis_result_cleaned_size"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/a;->o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method protected abstract i()V
.end method

.method protected abstract j()V
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public m()V
    .locals 0

    return-void
.end method

.method protected n()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/pop/app/analysis/b/h;->onDestroy()V

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/android/a/b;->b(Lcom/estrongs/android/a/j;)V

    return-void
.end method
