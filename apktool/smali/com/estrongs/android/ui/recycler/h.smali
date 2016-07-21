.class public Lcom/estrongs/android/ui/recycler/h;
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
.field private a:Landroid/support/v7/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/widget/RecyclerView$Adapter",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/support/v7/widget/GridLayoutManager;

.field private c:Landroid/content/Context;

.field private d:Lcom/estrongs/android/pop/app/analysis/y;

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;Lcom/estrongs/android/pop/app/analysis/y;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/ui/recycler/h;->e:I

    invoke-static {}, Lcom/estrongs/android/pop/utils/cl;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/recycler/h;->f:Z

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/recycler/h;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    iput-object v0, p0, Lcom/estrongs/android/ui/recycler/h;->b:Landroid/support/v7/widget/GridLayoutManager;

    iput-object p3, p0, Lcom/estrongs/android/ui/recycler/h;->d:Lcom/estrongs/android/pop/app/analysis/y;

    iput-object p1, p0, Lcom/estrongs/android/ui/recycler/h;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/recycler/h;)Lcom/estrongs/android/pop/app/analysis/y;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/recycler/h;->d:Lcom/estrongs/android/pop/app/analysis/y;

    return-object v0
.end method

.method private a()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/recycler/h;->d:Lcom/estrongs/android/pop/app/analysis/y;

    iget-object v0, p0, Lcom/estrongs/android/ui/recycler/h;->b:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSizeLookup()Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/recycler/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/recycler/m;->a(Z)V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/recycler/h;->notifyItemRemoved(I)V

    return-void
.end method

.method private a(Landroid/view/View;Lcom/estrongs/android/pop/app/analysis/y;)V
    .locals 3

    const v0, 0x7f0e0461

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e0463

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v1, 0x7f0e0464

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {p2}, Lcom/estrongs/android/pop/app/analysis/y;->c()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/estrongs/android/ui/recycler/j;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/recycler/j;-><init>(Lcom/estrongs/android/ui/recycler/h;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/estrongs/android/ui/recycler/k;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/recycler/k;-><init>(Lcom/estrongs/android/ui/recycler/h;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/ui/recycler/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/recycler/h;->a()V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/ui/recycler/h;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/recycler/h;->c:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/recycler/h;->e:I

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/app/analysis/y;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/recycler/h;->d:Lcom/estrongs/android/pop/app/analysis/y;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/recycler/h;->d:Lcom/estrongs/android/pop/app/analysis/y;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/recycler/h;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/recycler/h;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/estrongs/android/ui/recycler/h;->d:Lcom/estrongs/android/pop/app/analysis/y;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/estrongs/android/ui/recycler/h;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/recycler/h;->d:Lcom/estrongs/android/pop/app/analysis/y;

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, -0x1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/recycler/h;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/ui/recycler/h;->d:Lcom/estrongs/android/pop/app/analysis/y;

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/recycler/h;->a(Landroid/view/View;Lcom/estrongs/android/pop/app/analysis/y;)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/recycler/h;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/recycler/h;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300f6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/estrongs/android/ui/recycler/i;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/ui/recycler/i;-><init>(Lcom/estrongs/android/ui/recycler/h;Landroid/view/View;)V

    goto :goto_0
.end method
