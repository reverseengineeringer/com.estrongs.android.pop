.class public Lcom/estrongs/android/ui/c/e;
.super Lcom/estrongs/android/view/cr;


# instance fields
.field private a:Landroid/support/v7/widget/RecyclerView;

.field private b:Lcom/estrongs/android/pop/app/b/k;

.field private c:Lcom/estrongs/android/ui/c/a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/view/cr;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/c/e;)V
    .locals 0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/c/e;->aD()V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/ui/c/e;)Lcom/estrongs/android/ui/c/a;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/e;->c:Lcom/estrongs/android/ui/c/a;

    return-object v0
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f0300e2

    return v0
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/estrongs/android/view/cr;->a(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/e;->c:Lcom/estrongs/android/ui/c/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/c/a;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Landroid/view/View$OnTouchListener;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/e;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected a(Lcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/e;->b:Lcom/estrongs/android/pop/app/b/k;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/b/k;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/e;->O:Lcom/estrongs/android/view/dw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/e;->O:Lcom/estrongs/android/view/dw;

    invoke-interface {v0, p0, v1}, Lcom/estrongs/android/view/dw;->a(Lcom/estrongs/android/view/cr;Z)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/estrongs/android/view/cr;->a(Z)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/e;->b:Lcom/estrongs/android/pop/app/b/k;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/b/k;->c()V

    :cond_0
    return-void
.end method

.method public b()Lcom/estrongs/fs/h;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/c/e;->D:Lcom/estrongs/fs/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/fs/x;

    const-string v1, "#home_page#"

    invoke-direct {v0, v1}, Lcom/estrongs/fs/x;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/c/e;->D:Lcom/estrongs/fs/h;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/c/e;->D:Lcom/estrongs/fs/h;

    return-object v0
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/e;->b:Lcom/estrongs/android/pop/app/b/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/e;->b:Lcom/estrongs/android/pop/app/b/k;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/b/k;->a(Z)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/c/e;->c:Lcom/estrongs/android/ui/c/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/e;->c:Lcom/estrongs/android/ui/c/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/c/a;->c()V

    :cond_1
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "#home_page#"

    return-object v0
.end method

.method protected i()V
    .locals 3

    const v0, 0x7f0e041d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/c/e;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/estrongs/android/ui/c/e;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lcom/estrongs/android/ui/c/a;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/e;->ag:Landroid/app/Activity;

    iget-object v2, p0, Lcom/estrongs/android/ui/c/e;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/ui/c/a;-><init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/c/e;->c:Lcom/estrongs/android/ui/c/a;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/e;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/e;->c:Lcom/estrongs/android/ui/c/a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    new-instance v0, Lcom/estrongs/android/pop/app/b/k;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/e;->ag:Landroid/app/Activity;

    iget-object v2, p0, Lcom/estrongs/android/ui/c/e;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/app/b/k;-><init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/c/e;->b:Lcom/estrongs/android/pop/app/b/k;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/e;->b:Lcom/estrongs/android/pop/app/b/k;

    new-instance v1, Lcom/estrongs/android/ui/c/f;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/c/f;-><init>(Lcom/estrongs/android/ui/c/e;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/b/k;->a(Lcom/estrongs/android/pop/app/b/x;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/e;->ag:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/messagebox/z;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/app/messagebox/z;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/c/g;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/c/g;-><init>(Lcom/estrongs/android/ui/c/e;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/messagebox/z;->a(Lcom/estrongs/android/pop/app/messagebox/af;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/e;->ah:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/j/d;->b(Landroid/content/Context;)V

    return-void
.end method

.method public i_()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/e;->c:Lcom/estrongs/android/ui/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/e;->c:Lcom/estrongs/android/ui/c/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/c/a;->b()V

    :cond_0
    invoke-super {p0}, Lcom/estrongs/android/view/cr;->i_()V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/e;->b:Lcom/estrongs/android/pop/app/b/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/e;->b:Lcom/estrongs/android/pop/app/b/k;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/b/k;->a()V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/c/e;->c:Lcom/estrongs/android/ui/c/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/c/e;->c:Lcom/estrongs/android/ui/c/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/c/a;->b()V

    :cond_2
    return-void
.end method

.method public l()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/view/cr;->l()V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/e;->c:Lcom/estrongs/android/ui/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/e;->c:Lcom/estrongs/android/ui/c/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/c/a;->a()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/c/e;->ah:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/j/d;->b(Landroid/content/Context;)V

    return-void
.end method

.method public l_()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/e;->c:Lcom/estrongs/android/ui/c/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/c/a;->notifyDataSetChanged()V

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

    iget-object v1, p0, Lcom/estrongs/android/ui/c/e;->b:Lcom/estrongs/android/pop/app/b/k;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/b/k;->d()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
