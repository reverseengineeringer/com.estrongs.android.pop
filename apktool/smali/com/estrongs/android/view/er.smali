.class public Lcom/estrongs/android/view/er;
.super Lcom/estrongs/android/view/cr;


# instance fields
.field private a:Landroid/support/v7/widget/RecyclerView;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/estrongs/android/pop/app/b/k;

.field private e:J


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/view/cr;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/view/er;->e:J

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/view/er;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/er;->b:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/view/er;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/er;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/view/er;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/er;->a:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/view/er;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/view/er;->e:J

    return-wide v0
.end method

.method static synthetic e(Lcom/estrongs/android/view/er;)Lcom/estrongs/android/pop/app/b/k;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/er;->d:Lcom/estrongs/android/pop/app/b/k;

    return-object v0
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f03001d

    return v0
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method protected a(Lcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/er;->d:Lcom/estrongs/android/pop/app/b/k;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/b/k;->a(Z)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/estrongs/android/view/cr;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/estrongs/android/view/cr;->a(Z)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/er;->d:Lcom/estrongs/android/pop/app/b/k;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/b/k;->c()V

    :cond_0
    return-void
.end method

.method protected b(I)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1}, Lcom/estrongs/android/view/cr;->b(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/estrongs/fs/h;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/er;->D:Lcom/estrongs/fs/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/fs/x;

    const-string v1, "log://"

    invoke-direct {v0, v1}, Lcom/estrongs/fs/x;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/view/er;->D:Lcom/estrongs/fs/h;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/er;->D:Lcom/estrongs/fs/h;

    return-object v0
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/er;->d:Lcom/estrongs/android/pop/app/b/k;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/b/k;->a(Z)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "log://"

    return-object v0
.end method

.method public d()I
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/view/er;->h()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/view/er;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/view/er;->d:Lcom/estrongs/android/pop/app/b/k;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/b/k;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected i()V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/view/er;->e:J

    const v0, 0x7f0e00c0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/er;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/estrongs/android/view/er;->a:Landroid/support/v7/widget/RecyclerView;

    const v0, 0x7f0e00c2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/er;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/view/er;->c:Landroid/widget/TextView;

    const v0, 0x7f0e00bf

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/er;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/view/er;->b:Landroid/widget/LinearLayout;

    const v0, 0x7f0e00c1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/er;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;

    iput-object v0, p0, Lcom/estrongs/android/view/er;->w:Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;

    iget-object v0, p0, Lcom/estrongs/android/view/er;->w:Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/er;->w:Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;

    iget-object v1, p0, Lcom/estrongs/android/view/er;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/er;->w:Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/er;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVerticalScrollBarEnabled(Z)V

    :cond_0
    :goto_0
    new-instance v0, Lcom/estrongs/android/pop/app/b/k;

    iget-object v1, p0, Lcom/estrongs/android/view/er;->ag:Landroid/app/Activity;

    iget-object v2, p0, Lcom/estrongs/android/view/er;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/app/b/k;-><init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Lcom/estrongs/android/view/er;->d:Lcom/estrongs/android/pop/app/b/k;

    iget-object v0, p0, Lcom/estrongs/android/view/er;->d:Lcom/estrongs/android/pop/app/b/k;

    new-instance v1, Lcom/estrongs/android/view/es;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/es;-><init>(Lcom/estrongs/android/view/er;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/b/k;->a(Lcom/estrongs/android/pop/app/b/x;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/er;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/estrongs/android/view/er;->w:Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;->getOnScrollListener()Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    iget-object v0, p0, Lcom/estrongs/android/view/er;->w:Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/er;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_0
.end method

.method public i_()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/view/cr;->i_()V

    iget-object v0, p0, Lcom/estrongs/android/view/er;->ag:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/ui/feedback/c;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/estrongs/android/view/er;->d:Lcom/estrongs/android/pop/app/b/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/er;->d:Lcom/estrongs/android/pop/app/b/k;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/b/k;->a()V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/view/cr;->l()V

    return-void
.end method

.method protected n()V
    .locals 0

    return-void
.end method

.method public o()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/estrongs/android/view/er;->d:Lcom/estrongs/android/pop/app/b/k;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/b/k;->d()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public s()V
    .locals 3

    new-instance v0, Lcom/estrongs/android/ui/dialog/cv;

    iget-object v1, p0, Lcom/estrongs/android/view/er;->ag:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/estrongs/android/view/er;->ag:Landroid/app/Activity;

    const v2, 0x7f0803e2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->a(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/er;->ag:Landroid/app/Activity;

    const v2, 0x7f0803b2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->b(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f080229

    new-instance v2, Lcom/estrongs/android/view/et;

    invoke-direct {v2, p0}, Lcom/estrongs/android/view/et;-><init>(Lcom/estrongs/android/view/er;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f080225

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->c()Lcom/estrongs/android/ui/dialog/ci;

    return-void
.end method
