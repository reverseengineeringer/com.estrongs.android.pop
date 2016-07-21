.class public Lcom/estrongs/android/pop/app/finder/a/a;
.super Landroid/support/v7/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/estrongs/android/pop/app/finder/b/a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Lcom/estrongs/android/pop/app/finder/a/b;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/finder/a/a;->d:I

    iput-object p1, p0, Lcom/estrongs/android/pop/app/finder/a/a;->b:Landroid/content/Context;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/finder/a/a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/estrongs/android/pop/app/finder/b/a;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/a/a;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300c1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/finder/b/a;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/finder/a/a;->b:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/estrongs/android/pop/app/finder/b/a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v1
.end method

.method public a()V
    .locals 2

    iget v0, p0, Lcom/estrongs/android/pop/app/finder/a/a;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/estrongs/android/pop/app/finder/a/a;->d:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/finder/a/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/estrongs/android/pop/app/finder/a/a;->d:I

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/finder/a/a;->notifyItemChanged(I)V

    goto :goto_0
.end method

.method public a(Lcom/estrongs/android/pop/app/finder/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/finder/a/a;->c:Lcom/estrongs/android/pop/app/finder/a/b;

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/app/finder/b/a;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/a/a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/finder/a/a;->c:Lcom/estrongs/android/pop/app/finder/a/b;

    invoke-virtual {p1, v1}, Lcom/estrongs/android/pop/app/finder/b/a;->a(Lcom/estrongs/android/pop/app/finder/a/b;)V

    invoke-virtual {p1, v0, p2}, Lcom/estrongs/android/pop/app/finder/b/a;->a(Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;I)V

    iget-object v0, v0, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->d:Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;

    sget-object v1, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;->Type:Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;

    if-ne v0, v1, :cond_0

    iput p2, p0, Lcom/estrongs/android/pop/app/finder/a/a;->d:I

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/a/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/estrongs/android/pop/app/finder/b/a;

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/pop/app/finder/a/a;->a(Lcom/estrongs/android/pop/app/finder/b/a;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/pop/app/finder/a/a;->a(Landroid/view/ViewGroup;I)Lcom/estrongs/android/pop/app/finder/b/a;

    move-result-object v0

    return-object v0
.end method
