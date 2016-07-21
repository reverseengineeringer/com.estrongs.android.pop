.class public Lcom/estrongs/android/pop/app/analysis/a/i;
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
.field protected a:Landroid/content/Context;

.field protected b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/estrongs/android/pop/app/analysis/b/g;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/estrongs/android/pop/app/analysis/b/g;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Ljava/util/concurrent/atomic/AtomicLong;

.field protected e:Lcom/estrongs/android/pop/app/analysis/a/m;

.field protected f:Lcom/estrongs/android/pop/app/analysis/a/n;

.field protected g:Z

.field protected h:I

.field protected i:Ljava/lang/String;

.field protected j:Ljava/lang/String;

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I

.field private o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->d:Ljava/util/concurrent/atomic/AtomicLong;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->g:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->k:I

    iput v1, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->l:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->m:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->n:I

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->a:Landroid/content/Context;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput p2, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->h:I

    iput-object p3, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/app/analysis/b/g;)I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public a(I)Lcom/estrongs/android/pop/app/analysis/b/g;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/b/g;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/app/analysis/a/m;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->e:Lcom/estrongs/android/pop/app/analysis/a/m;

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/app/analysis/a/n;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->f:Lcom/estrongs/android/pop/app/analysis/a/n;

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/app/analysis/b/g;I)V
    .locals 5

    const-wide/16 v2, 0x0

    iget-boolean v0, p1, Lcom/estrongs/android/pop/app/analysis/b/g;->a:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p1, Lcom/estrongs/android/pop/app/analysis/b/g;->a:Z

    iget-object v0, p1, Lcom/estrongs/android/pop/app/analysis/b/g;->b:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    move-wide v0, v2

    :cond_0
    iget-boolean v2, p1, Lcom/estrongs/android/pop/app/analysis/b/g;->a:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->e:Lcom/estrongs/android/pop/app/analysis/a/m;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->e:Lcom/estrongs/android/pop/app/analysis/a/m;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/estrongs/android/pop/app/analysis/a/m;->a(J)V

    :cond_1
    invoke-virtual {p0, p2}, Lcom/estrongs/android/pop/app/analysis/a/i;->notifyItemChanged(I)V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->d:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v0, v0

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->j:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/analysis/b/g;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->g:Z

    return-void
.end method

.method public b()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/estrongs/android/pop/app/analysis/b/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public b(I)V
    .locals 5

    const-wide/16 v2, 0x0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/a/i;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/b/g;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/analysis/b/g;->b:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    move-wide v0, v2

    :cond_0
    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->d:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v0, v0

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :cond_1
    return-void
.end method

.method public b(Lcom/estrongs/android/pop/app/analysis/b/g;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method

.method public c(Lcom/estrongs/android/pop/app/analysis/b/g;)I
    .locals 6

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v2, -0x1

    if-eq v4, v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p1, Lcom/estrongs/android/pop/app/analysis/b/g;->b:Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v2

    cmp-long v5, v2, v0

    if-gtz v5, :cond_1

    :goto_0
    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->d:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v0, v0

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :cond_0
    return v4

    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->o:I

    return-void
.end method

.method public d()V
    .locals 4

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->e:Lcom/estrongs/android/pop/app/analysis/a/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->e:Lcom/estrongs/android/pop/app/analysis/a/m;

    invoke-interface {v0, v2, v3}, Lcom/estrongs/android/pop/app/analysis/a/m;->a(J)V

    :cond_0
    return-void
.end method

.method public e()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public f()V
    .locals 7

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/b/g;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/estrongs/android/pop/app/analysis/b/g;->a:Z

    iget-object v2, v0, Lcom/estrongs/android/pop/app/analysis/b/g;->b:Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v2

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    move-wide v2, v4

    :cond_0
    iget-object v6, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/a/i;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->e:Lcom/estrongs/android/pop/app/analysis/a/m;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->e:Lcom/estrongs/android/pop/app/analysis/a/m;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/estrongs/android/pop/app/analysis/a/m;->a(J)V

    :cond_2
    return-void
.end method

.method public g()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->d:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/b/g;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/estrongs/android/pop/app/analysis/b/g;->a:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/a/i;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->e:Lcom/estrongs/android/pop/app/analysis/a/m;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->e:Lcom/estrongs/android/pop/app/analysis/a/m;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/estrongs/android/pop/app/analysis/a/m;->a(J)V

    :cond_1
    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/app/analysis/a/i;->a(I)Lcom/estrongs/android/pop/app/analysis/b/g;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->h:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->h:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->j:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->aY(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->X(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget-object v1, v0, Lcom/estrongs/android/pop/app/analysis/b/g;->b:Lcom/estrongs/fs/h;

    instance-of v1, v1, Lcom/estrongs/fs/impl/c/d;

    if-nez v1, :cond_3

    iget-object v0, v0, Lcom/estrongs/android/pop/app/analysis/b/g;->b:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v0

    sget-object v1, Lcom/estrongs/fs/w;->a:Lcom/estrongs/fs/w;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()[I
    .locals 8

    const/4 v6, 0x2

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lt v0, v6, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/b/g;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/b/g;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-le v1, v0, :cond_0

    move v1, v2

    :goto_1
    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_0
    if-ge v2, v0, :cond_3

    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_1

    :cond_1
    new-array v0, v6, [I

    aput v1, v0, v5

    const/4 v1, 0x1

    aput v2, v0, v1

    :goto_2
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    move v0, v1

    move v1, v2

    goto :goto_1
.end method

.method public i()V
    .locals 9

    const/4 v8, 0x1

    const-wide/16 v4, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/a/i;->h()[I

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    const/4 v0, 0x0

    aget v0, v6, v0

    move v1, v0

    :goto_0
    aget v0, v6, v8

    if-gt v1, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/b/g;

    iput-boolean v8, v0, Lcom/estrongs/android/pop/app/analysis/b/g;->a:Z

    iget-object v2, v0, Lcom/estrongs/android/pop/app/analysis/b/g;->b:Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v2

    cmp-long v7, v2, v4

    if-gtz v7, :cond_0

    move-wide v2, v4

    :cond_0
    iget-object v7, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/a/i;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->e:Lcom/estrongs/android/pop/app/analysis/a/m;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->e:Lcom/estrongs/android/pop/app/analysis/a/m;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/estrongs/android/pop/app/analysis/a/m;->a(J)V

    :cond_2
    return-void
.end method

.method public j()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-gt v2, v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/a/i;->h()[I

    move-result-object v2

    if-eqz v2, :cond_0

    aget v3, v2, v0

    aget v2, v2, v1

    sub-int v2, v3, v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->g:Z

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    invoke-virtual {p0, p2}, Lcom/estrongs/android/pop/app/analysis/a/i;->a(I)Lcom/estrongs/android/pop/app/analysis/b/g;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/app/analysis/a/j;

    invoke-direct {v2, p0, v1}, Lcom/estrongs/android/pop/app/analysis/a/j;-><init>(Lcom/estrongs/android/pop/app/analysis/a/i;Lcom/estrongs/android/pop/app/analysis/b/g;)V

    instance-of v0, p1, Lcom/estrongs/android/pop/app/analysis/viewholders/t;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/viewholders/t;

    iget v3, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->o:I

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/app/analysis/viewholders/t;->a(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/a/i;->k()Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/estrongs/android/pop/app/analysis/viewholders/t;->a(Lcom/estrongs/android/pop/app/analysis/b/g;Z)V

    iget-object v0, v0, Lcom/estrongs/android/pop/app/analysis/viewholders/t;->h:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/estrongs/android/pop/app/analysis/a/k;

    invoke-direct {v2, p0, v1}, Lcom/estrongs/android/pop/app/analysis/a/k;-><init>(Lcom/estrongs/android/pop/app/analysis/a/i;Lcom/estrongs/android/pop/app/analysis/b/g;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/estrongs/android/pop/app/analysis/a/l;

    invoke-direct {v2, p0, v1}, Lcom/estrongs/android/pop/app/analysis/a/l;-><init>(Lcom/estrongs/android/pop/app/analysis/a/i;Lcom/estrongs/android/pop/app/analysis/b/g;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030036

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/viewholders/s;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->i:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/app/analysis/viewholders/s;-><init>(Landroid/view/View;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002c

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/viewholders/u;

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/app/analysis/viewholders/u;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002d

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/viewholders/u;

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/app/analysis/viewholders/u;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030037

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/viewholders/t;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/a/i;->i:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/app/analysis/viewholders/t;-><init>(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0
.end method
