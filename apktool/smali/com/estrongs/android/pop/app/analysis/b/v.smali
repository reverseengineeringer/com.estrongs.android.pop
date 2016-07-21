.class public Lcom/estrongs/android/pop/app/analysis/b/v;
.super Lcom/estrongs/android/pop/app/analysis/b/a;

# interfaces
.implements Lcom/estrongs/android/pop/app/analysis/a/m;


# instance fields
.field protected A:Lcom/estrongs/android/view/a/a;

.field protected B:Lcom/estrongs/android/view/a/a;

.field private r:Lcom/estrongs/android/a/k;

.field protected w:Lcom/estrongs/android/pop/app/analysis/a/i;

.field protected x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/analysis/b/g;",
            ">;"
        }
    .end annotation
.end field

.field protected y:Lcom/estrongs/android/a/b/a;

.field protected z:Lcom/estrongs/android/view/a/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/b/a;-><init>()V

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/b/y;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/analysis/b/y;-><init>(Lcom/estrongs/android/pop/app/analysis/b/v;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->r:Lcom/estrongs/android/a/k;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/analysis/b/v;)Lcom/estrongs/android/a/k;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->r:Lcom/estrongs/android/a/k;

    return-object v0
.end method

.method private c(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/v;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/theme/at;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private d(I)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/FexApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(II)V
    .locals 0

    return-void
.end method

.method public a(J)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/pop/app/analysis/b/v;->b(J)V

    return-void
.end method

.method protected a(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/v;->y()V

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/app/analysis/b/a;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/estrongs/android/pop/app/analysis/b/w;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/analysis/b/w;-><init>(Lcom/estrongs/android/pop/app/analysis/b/v;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public a(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/estrongs/android/pop/app/analysis/b/g;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/b/g;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/pop/app/analysis/a/i;->c(Lcom/estrongs/android/pop/app/analysis/b/g;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/pop/app/analysis/a/i;->notifyItemRemoved(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/a/i;->d()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/v;->v()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/a/i;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/analysis/b/v;->a(Z)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/v;->h()V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected a(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/estrongs/android/pop/app/analysis/b/g;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/v;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/d/a;

    const/4 v1, 0x0

    new-instance v2, Lcom/estrongs/android/pop/app/analysis/b/x;

    invoke-direct {v2, p0, p1}, Lcom/estrongs/android/pop/app/analysis/b/x;-><init>(Lcom/estrongs/android/pop/app/analysis/b/v;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    invoke-static {v0, p2, v1, v2}, Lcom/estrongs/android/pop/utils/ao;->a(Lcom/estrongs/android/pop/app/d/a;Ljava/util/List;Lcom/estrongs/a/a/p;Lcom/estrongs/android/pop/utils/ck;)Z

    return-void
.end method

.method public a(ZZZ)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/v;->w()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->z:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->c(Z)Lcom/estrongs/android/view/a/a;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->A:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->c(Z)Lcom/estrongs/android/view/a/a;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->B:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->c(Z)Lcom/estrongs/android/view/a/a;

    :goto_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/v;->g()Lcom/estrongs/android/pop/app/analysis/AnalysisResultDetailActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultDetailActivity;->invalidateOptionsMenu()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->z:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/a/a;->c(Z)Lcom/estrongs/android/view/a/a;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->A:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v0, p2}, Lcom/estrongs/android/view/a/a;->c(Z)Lcom/estrongs/android/view/a/a;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->B:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v0, p3}, Lcom/estrongs/android/view/a/a;->c(Z)Lcom/estrongs/android/view/a/a;

    goto :goto_0
.end method

.method protected b(J)V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/a/i;->c()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->b:Landroid/widget/Button;

    const v3, 0x7f020051

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/v;->q()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->b:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->b:Landroid/widget/Button;

    const v4, 0x7f080276

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {p0, v4, v5}, Lcom/estrongs/android/pop/app/analysis/b/v;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/v;->v()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/v;->w()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/analysis/a/i;->getItemCount()I

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/v;->z()V

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->b:Landroid/widget/Button;

    const v3, 0x7f020052

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/v;->q()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->b:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/analysis/a/i;->getItemCount()I

    move-result v3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v4}, Lcom/estrongs/android/pop/app/analysis/a/i;->c()I

    move-result v4

    if-eq v3, v4, :cond_4

    :goto_2
    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/analysis/a/i;->j()Z

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/estrongs/android/pop/app/analysis/b/v;->a(ZZZ)V

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/v;->z()V

    goto :goto_1
.end method

.method public b(Lcom/estrongs/android/pop/app/analysis/b/g;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/pop/app/analysis/b/v;->a(Lcom/estrongs/android/pop/app/analysis/b/g;Z)V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/view/a/a;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Lcom/estrongs/android/view/a/a;

    const v1, 0x7f020401

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/analysis/b/v;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0800a7

    invoke-direct {p0, v2}, Lcom/estrongs/android/pop/app/analysis/b/v;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/analysis/b/z;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/analysis/b/z;-><init>(Lcom/estrongs/android/pop/app/analysis/b/v;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/view/a/a;->c(Z)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->z:Lcom/estrongs/android/view/a/a;

    new-instance v0, Lcom/estrongs/android/view/a/a;

    const v1, 0x7f020400

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/analysis/b/v;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0800a9

    invoke-direct {p0, v2}, Lcom/estrongs/android/pop/app/analysis/b/v;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/analysis/b/aa;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/analysis/b/aa;-><init>(Lcom/estrongs/android/pop/app/analysis/b/v;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/view/a/a;->c(Z)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->A:Lcom/estrongs/android/view/a/a;

    new-instance v0, Lcom/estrongs/android/view/a/a;

    const v1, 0x7f0203ff

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/analysis/b/v;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0800a8

    invoke-direct {p0, v2}, Lcom/estrongs/android/pop/app/analysis/b/v;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/analysis/b/ab;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/analysis/b/ab;-><init>(Lcom/estrongs/android/pop/app/analysis/b/v;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/view/a/a;->c(Z)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->B:Lcom/estrongs/android/view/a/a;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->z:Lcom/estrongs/android/view/a/a;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->A:Lcom/estrongs/android/view/a/a;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->B:Lcom/estrongs/android/view/a/a;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected g()Lcom/estrongs/android/pop/app/analysis/AnalysisResultDetailActivity;
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/v;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/AnalysisResultDetailActivity;

    return-object v0
.end method

.method protected i()V
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/v;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/analysis/b/v;->a(Landroid/content/Context;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/v;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    const-string v1, "Analysis_delete"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected j()V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/v;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->h:I

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/pop/app/analysis/a/i;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/pop/app/analysis/a/i;->a(Lcom/estrongs/android/pop/app/analysis/a/m;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/a/i;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->e:Ljava/lang/String;

    const-string v1, "largefile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->c:Lcom/estrongs/android/ui/recycler/g;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/recycler/g;->a(Z)V

    const v0, 0x7f0800ea

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/analysis/b/v;->a(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->e:Ljava/lang/String;

    const-string v1, "newcreate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->c:Lcom/estrongs/android/ui/recycler/g;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/recycler/g;->a(Z)V

    const v0, 0x7f0800eb

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/analysis/b/v;->a(I)V

    goto :goto_0
.end method

.method public k()V
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/v;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/a/i;->f()V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/v;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/a/i;->g()V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/v;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/a/i;->i()V

    :cond_0
    return-void
.end method

.method protected n()V
    .locals 0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/v;->t()V

    return-void
.end method

.method protected r()V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/app/analysis/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->y:Lcom/estrongs/android/a/b/a;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->y:Lcom/estrongs/android/a/b/a;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->x:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->y:Lcom/estrongs/android/a/b/a;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/a;->c()Ljava/util/List;

    move-result-object v2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    new-instance v4, Lcom/estrongs/android/pop/app/analysis/b/g;

    invoke-direct {v4, p0}, Lcom/estrongs/android/pop/app/analysis/b/g;-><init>(Lcom/estrongs/android/pop/app/analysis/b/a;)V

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/estrongs/android/pop/app/analysis/b/g;->a:Z

    iput-object v0, v4, Lcom/estrongs/android/pop/app/analysis/b/g;->b:Lcom/estrongs/fs/h;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->x:Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/analysis/b/v;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2
.end method

.method protected s()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->x:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/analysis/a/i;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/a/i;->notifyDataSetChanged()V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/analysis/b/v;->b(J)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/a/i;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/analysis/b/v;->a(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected t()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/pop/app/analysis/b/a;->t()V

    return-void
.end method

.method public u()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/a/i;->c()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/a/i;->g()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/estrongs/android/pop/app/analysis/b/a;->u()Z

    move-result v0

    goto :goto_0
.end method

.method protected v()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/a/i;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/a/i;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->h:I

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/v;->g()Lcom/estrongs/android/pop/app/analysis/AnalysisResultDetailActivity;

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->b:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/v;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/v;->z()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->m:Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;->invalidate()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->b:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public w()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected y()V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/a/i;->b()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/a/i;->e()J

    move-result-wide v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/b/g;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/analysis/b/g;->b:Lcom/estrongs/fs/h;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    invoke-virtual {p0, v1, v4}, Lcom/estrongs/android/pop/app/analysis/b/v;->a(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/List;)V

    return-void
.end method

.method public z()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->z:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->c(Z)Lcom/estrongs/android/view/a/a;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->A:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->c(Z)Lcom/estrongs/android/view/a/a;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/v;->B:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->c(Z)Lcom/estrongs/android/view/a/a;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/v;->g()Lcom/estrongs/android/pop/app/analysis/AnalysisResultDetailActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultDetailActivity;->invalidateOptionsMenu()V

    return-void
.end method
