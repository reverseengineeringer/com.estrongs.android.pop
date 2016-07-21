.class public Lcom/estrongs/android/view/ck;
.super Landroid/support/v7/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/estrongs/android/view/ci;",
        ">;"
    }
.end annotation


# instance fields
.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected c:Lcom/estrongs/android/view/cn;

.field protected d:Lcom/estrongs/android/ui/drag/d;

.field final synthetic e:Lcom/estrongs/android/view/cg;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/view/cg;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/view/ck;->e:Lcom/estrongs/android/view/cg;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/ck;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/estrongs/android/view/ci;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->c:Lcom/estrongs/android/view/cn;

    invoke-interface {v0}, Lcom/estrongs/android/view/cn;->a()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/ck;->c:Lcom/estrongs/android/view/cn;

    invoke-interface {v1, v0}, Lcom/estrongs/android/view/cn;->b(Landroid/view/View;)Lcom/estrongs/android/view/ci;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/ck;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->b:Ljava/util/List;

    return-object v0
.end method

.method public a(Lcom/estrongs/android/ui/drag/d;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ck;->d:Lcom/estrongs/android/ui/drag/d;

    return-void
.end method

.method public a(Lcom/estrongs/android/view/ci;I)V
    .locals 2

    iget-object v0, p1, Lcom/estrongs/android/view/ci;->itemView:Landroid/view/View;

    const v1, 0x7f0200aa

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0, p2}, Lcom/estrongs/android/view/ck;->a(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Lcom/estrongs/android/view/ci;->m:Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->d:Lcom/estrongs/android/ui/drag/d;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/estrongs/android/view/ci;->itemView:Landroid/view/View;

    check-cast v0, Lcom/estrongs/android/ui/drag/DragGrid;

    iget-object v1, p0, Lcom/estrongs/android/view/ck;->d:Lcom/estrongs/android/ui/drag/d;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/drag/DragGrid;->setDragController(Lcom/estrongs/android/ui/drag/d;)V

    iget-object v1, p0, Lcom/estrongs/android/view/ck;->d:Lcom/estrongs/android/ui/drag/d;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/drag/d;->a(Lcom/estrongs/android/ui/drag/s;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/ck;->c:Lcom/estrongs/android/view/cn;

    invoke-interface {v0, p1, p2}, Lcom/estrongs/android/view/cn;->a(Lcom/estrongs/android/view/ci;I)V

    iget-object v0, p1, Lcom/estrongs/android/view/ci;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p1, Lcom/estrongs/android/view/ci;->itemView:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/view/cl;

    invoke-direct {v1, p0, p1, p2}, Lcom/estrongs/android/view/cl;-><init>(Lcom/estrongs/android/view/ck;Lcom/estrongs/android/view/ci;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->e:Lcom/estrongs/android/view/cg;

    iget-object v0, v0, Lcom/estrongs/android/view/cg;->k:Lcom/estrongs/android/view/cp;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/estrongs/android/view/ci;->itemView:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/view/cm;

    invoke-direct {v1, p0, p2}, Lcom/estrongs/android/view/cm;-><init>(Lcom/estrongs/android/view/ck;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/estrongs/android/view/ci;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0
.end method

.method public a(Lcom/estrongs/android/view/cn;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ck;->c:Lcom/estrongs/android/view/cn;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/estrongs/android/view/ck;->b:Ljava/util/List;

    invoke-virtual {p0}, Lcom/estrongs/android/view/ck;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/ck;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/estrongs/android/view/ci;

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/view/ck;->a(Lcom/estrongs/android/view/ci;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/view/ck;->a(Landroid/view/ViewGroup;I)Lcom/estrongs/android/view/ci;

    move-result-object v0

    return-object v0
.end method
