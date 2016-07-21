.class Lcom/estrongs/android/pop/app/analysis/view/u;
.super Landroid/support/v7/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/analysis/view/i;


# direct methods
.method private constructor <init>(Lcom/estrongs/android/pop/app/analysis/view/i;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/view/u;->a:Lcom/estrongs/android/pop/app/analysis/view/i;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/pop/app/analysis/view/i;Lcom/estrongs/android/pop/app/analysis/view/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/view/u;-><init>(Lcom/estrongs/android/pop/app/analysis/view/i;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/u;->a:Lcom/estrongs/android/pop/app/analysis/view/i;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/view/i;->d(Lcom/estrongs/android/pop/app/analysis/view/i;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    check-cast p1, Lcom/estrongs/android/pop/app/analysis/view/t;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/u;->a:Lcom/estrongs/android/pop/app/analysis/view/i;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/view/i;->d(Lcom/estrongs/android/pop/app/analysis/view/i;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/view/s;

    invoke-virtual {p1, v0}, Lcom/estrongs/android/pop/app/analysis/view/t;->a(Lcom/estrongs/android/pop/app/analysis/view/s;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 5

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/view/t;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/u;->a:Lcom/estrongs/android/pop/app/analysis/view/i;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/view/u;->a:Lcom/estrongs/android/pop/app/analysis/view/i;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/analysis/view/i;->m(Lcom/estrongs/android/pop/app/analysis/view/i;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030032

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/app/analysis/view/t;-><init>(Lcom/estrongs/android/pop/app/analysis/view/i;Landroid/view/View;)V

    return-object v0
.end method
