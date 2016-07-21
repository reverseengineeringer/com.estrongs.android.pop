.class public Lcom/estrongs/android/pop/app/cleaner/ak;
.super Landroid/support/v7/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/estrongs/android/pop/app/cleaner/a/c;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/cleaner/h;",
            ">;"
        }
    .end annotation
.end field

.field private c:[Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cleaner/ak;->a:Landroid/content/Context;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ak;->b:Ljava/util/List;

    return-void
.end method

.method private a(I)Lcom/estrongs/android/cleaner/h;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ak;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ak;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/cleaner/h;

    goto :goto_0
.end method

.method private c(Lcom/estrongs/android/cleaner/h;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ak;->b:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ak;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/cleaner/ak;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/cleaner/ak;->notifyItemChanged(I)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/estrongs/android/pop/app/cleaner/a/c;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ak;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030102

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/cleaner/a/c;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/app/cleaner/a/c;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public declared-synchronized a(Lcom/estrongs/android/cleaner/h;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/cleaner/ak;->c(Lcom/estrongs/android/cleaner/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/estrongs/android/pop/app/cleaner/a/c;I)V
    .locals 4

    const/4 v2, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ak;->c:[Z

    aget-boolean v0, v0, p2

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/estrongs/android/pop/app/cleaner/a/c;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/estrongs/android/pop/app/cleaner/a/c;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    invoke-direct {p0, p2}, Lcom/estrongs/android/pop/app/cleaner/ak;->a(I)Lcom/estrongs/android/cleaner/h;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/pop/app/cleaner/a/c;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/h;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/estrongs/android/pop/app/cleaner/a/c;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/h;->j()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/estrongs/android/pop/app/cleaner/a/c;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/cleaner/h;->a(Landroid/widget/ImageView;)V

    return-void

    :cond_0
    iget-object v0, p1, Lcom/estrongs/android/pop/app/cleaner/a/c;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/estrongs/android/pop/app/cleaner/a/c;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

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

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ak;->c:[Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ak;->c:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ak;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ak;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/cleaner/ak;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public a()Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/estrongs/android/pop/app/cleaner/ak;->c:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/cleaner/ak;->c:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public declared-synchronized b(Lcom/estrongs/android/cleaner/h;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ak;->b:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ak;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/cleaner/ak;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/ak;->c:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/cleaner/ak;->notifyItemChanged(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ak;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ak;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/estrongs/android/pop/app/cleaner/a/c;

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/pop/app/cleaner/ak;->a(Lcom/estrongs/android/pop/app/cleaner/a/c;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/pop/app/cleaner/ak;->a(Landroid/view/ViewGroup;I)Lcom/estrongs/android/pop/app/cleaner/a/c;

    move-result-object v0

    return-object v0
.end method
