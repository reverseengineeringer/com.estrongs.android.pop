.class Lcom/estrongs/android/ui/b/v;
.super Lcom/estrongs/android/view/ck;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/estrongs/android/view/cg",
        "<",
        "Lcom/estrongs/fs/h;",
        ">.com/estrongs/android/view/ck<",
        "Lcom/estrongs/fs/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/b/u;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/u;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/v;->a:Lcom/estrongs/android/ui/b/u;

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/ck;-><init>(Lcom/estrongs/android/view/cg;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/estrongs/android/view/ci;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/b/v;->a:Lcom/estrongs/android/ui/b/u;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/u;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    const-string v1, "task"

    invoke-interface {v0, v1}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/a/a;

    new-instance v1, Lcom/estrongs/android/ui/b/f;

    iget-object v2, p0, Lcom/estrongs/android/ui/b/v;->a:Lcom/estrongs/android/ui/b/u;

    invoke-static {v2}, Lcom/estrongs/android/ui/b/u;->a(Lcom/estrongs/android/ui/b/u;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/android/ui/b/f;-><init>(Landroid/content/Context;Lcom/estrongs/a/a;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/b/f;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/v;->a:Lcom/estrongs/android/ui/b/u;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/u;->b(Lcom/estrongs/android/ui/b/u;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/estrongs/android/ui/b/f;->b()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/view/ci;

    invoke-direct {v1, v0}, Lcom/estrongs/android/view/ci;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public a(Lcom/estrongs/android/view/ci;I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/b/v;->a:Lcom/estrongs/android/ui/b/u;

    invoke-virtual {v0, p2}, Lcom/estrongs/android/ui/b/u;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    const-string v1, "task"

    invoke-interface {v0, v1}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/a/a;

    iget-object v1, p1, Lcom/estrongs/android/view/ci;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/ui/b/f;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/b/f;->c()V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/b/f;->a(Lcom/estrongs/a/a;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/v;->a:Lcom/estrongs/android/ui/b/u;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/u;->c(Lcom/estrongs/android/ui/b/u;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/b/f;->b(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/v;->a:Lcom/estrongs/android/ui/b/u;

    invoke-virtual {v0, p2}, Lcom/estrongs/android/ui/b/u;->h(I)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/b/f;->a(Z)V

    iget-object v0, p1, Lcom/estrongs/android/view/ci;->itemView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p1, Lcom/estrongs/android/view/ci;->itemView:Landroid/view/View;

    new-instance v2, Lcom/estrongs/android/ui/b/w;

    invoke-direct {v2, p0, v1, p2}, Lcom/estrongs/android/ui/b/w;-><init>(Lcom/estrongs/android/ui/b/v;Lcom/estrongs/android/ui/b/f;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/v;->a:Lcom/estrongs/android/ui/b/u;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/u;->e(Lcom/estrongs/android/ui/b/u;)Lcom/estrongs/android/view/cp;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/estrongs/android/view/ci;->itemView:Landroid/view/View;

    new-instance v2, Lcom/estrongs/android/ui/b/x;

    invoke-direct {v2, p0, p2}, Lcom/estrongs/android/ui/b/x;-><init>(Lcom/estrongs/android/ui/b/v;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, v1, Lcom/estrongs/android/ui/b/f;->b:Landroid/widget/ImageView;

    new-instance v2, Lcom/estrongs/android/ui/b/y;

    invoke-direct {v2, p0, p1, p2}, Lcom/estrongs/android/ui/b/y;-><init>(Lcom/estrongs/android/ui/b/v;Lcom/estrongs/android/view/ci;I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    iget-object v0, v1, Lcom/estrongs/android/ui/b/f;->a:Landroid/view/View;

    new-instance v2, Lcom/estrongs/android/ui/b/z;

    invoke-direct {v2, p0, v1, p2}, Lcom/estrongs/android/ui/b/z;-><init>(Lcom/estrongs/android/ui/b/v;Lcom/estrongs/android/ui/b/f;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-object v0, p1, Lcom/estrongs/android/view/ci;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/estrongs/android/view/ci;

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/ui/b/v;->a(Lcom/estrongs/android/view/ci;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/ui/b/v;->a(Landroid/view/ViewGroup;I)Lcom/estrongs/android/view/ci;

    move-result-object v0

    return-object v0
.end method
