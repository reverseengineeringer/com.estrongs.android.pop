.class public Lcom/estrongs/android/pop/app/cleaner/b;
.super Landroid/support/v7/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/estrongs/android/pop/app/cleaner/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/cleaner/h;",
            ">;"
        }
    .end annotation
.end field

.field private d:[Z

.field private e:Landroid/content/Context;

.field private f:I

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/cleaner/b;->a:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/estrongs/android/pop/app/cleaner/b;->b:I

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cleaner/b;->e:Landroid/content/Context;

    iput p2, p0, Lcom/estrongs/android/pop/app/cleaner/b;->f:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/b;->g:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/b;->c:Ljava/util/List;

    return-void
.end method

.method private a(I)Lcom/estrongs/android/cleaner/h;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/b;->c:Ljava/util/List;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/b;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/cleaner/h;

    goto :goto_0
.end method

.method private b(I)I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/b;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/estrongs/android/pop/app/cleaner/a/b;
    .locals 4

    const v3, 0x7f0d0089

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x12c

    iget v3, p0, Lcom/estrongs/android/pop/app/cleaner/b;->f:I

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Lcom/estrongs/android/pop/app/cleaner/a/b;

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/app/cleaner/a/b;-><init>(Landroid/view/View;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/b;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030101

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/estrongs/android/pop/app/cleaner/a/b;

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/app/cleaner/a/b;-><init>(Landroid/view/View;)V

    iget-object v1, v0, Lcom/estrongs/android/pop/app/cleaner/a/b;->b:Landroid/widget/TextView;

    const v2, 0x7f0d008c

    invoke-direct {p0, v2}, Lcom/estrongs/android/pop/app/cleaner/b;->b(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lcom/estrongs/android/pop/app/cleaner/a/b;->e:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/estrongs/android/pop/app/cleaner/b;->b(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lcom/estrongs/android/pop/app/cleaner/a/b;->c:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/estrongs/android/pop/app/cleaner/b;->b(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lcom/estrongs/android/pop/app/cleaner/a/b;->d:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/estrongs/android/pop/app/cleaner/b;->b(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lcom/estrongs/android/pop/app/cleaner/a/b;->f:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Lcom/estrongs/android/pop/app/cleaner/a/b;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/app/cleaner/a/b;I)V
    .locals 4

    invoke-virtual {p0, p2}, Lcom/estrongs/android/pop/app/cleaner/b;->getItemViewType(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p2}, Lcom/estrongs/android/pop/app/cleaner/b;->a(I)Lcom/estrongs/android/cleaner/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/estrongs/android/pop/app/cleaner/a/b;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/h;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/estrongs/android/pop/app/cleaner/a/b;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/h;->j()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/estrongs/android/pop/app/cleaner/a/b;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/cleaner/h;->a(Landroid/widget/ImageView;)V

    iget-object v1, p1, Lcom/estrongs/android/pop/app/cleaner/a/b;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/h;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/cleaner/h;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/b;->d:[Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/b;->d:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/cleaner/b;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/b;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/cleaner/b;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/estrongs/android/pop/app/cleaner/a/b;

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/pop/app/cleaner/b;->a(Lcom/estrongs/android/pop/app/cleaner/a/b;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/pop/app/cleaner/b;->a(Landroid/view/ViewGroup;I)Lcom/estrongs/android/pop/app/cleaner/a/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Lcom/estrongs/android/pop/app/cleaner/a/b;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/app/cleaner/b;->a(Lcom/estrongs/android/pop/app/cleaner/a/b;)V

    return-void
.end method
