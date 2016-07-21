.class public Lcom/estrongs/android/pop/app/analysis/b/o;
.super Lcom/estrongs/android/pop/app/analysis/b/v;

# interfaces
.implements Lcom/estrongs/android/pop/app/analysis/a/h;


# instance fields
.field protected r:Lcom/estrongs/android/pop/app/analysis/b/g;

.field protected s:I

.field protected t:J

.field protected u:J

.field protected v:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/b/v;-><init>()V

    return-void
.end method

.method private a(ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/o;->r:Lcom/estrongs/android/pop/app/analysis/b/g;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/analysis/b/g;->b:Lcom/estrongs/fs/h;

    check-cast v0, Lcom/estrongs/android/a/b/f;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/app/analysis/b/p;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/estrongs/android/pop/app/analysis/b/p;-><init>(Lcom/estrongs/android/pop/app/analysis/b/o;ZZLcom/estrongs/android/a/b/f;)V

    invoke-static {v1, v0, v2, p2}, Lcom/estrongs/android/pop/app/analysis/k;->a(Landroid/content/Context;Lcom/estrongs/android/a/b/f;Lcom/estrongs/android/pop/app/analysis/o;Z)V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/app/analysis/b/g;)V
    .locals 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/b/o;->r:Lcom/estrongs/android/pop/app/analysis/b/g;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/app/analysis/b/o;->a(ZZ)V

    return-void
.end method

.method protected b(J)V
    .locals 0

    return-void
.end method

.method public b(Lcom/estrongs/android/pop/app/analysis/b/g;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/b/o;->r:Lcom/estrongs/android/pop/app/analysis/b/g;

    invoke-direct {p0, v0, v0}, Lcom/estrongs/android/pop/app/analysis/b/o;->a(ZZ)V

    return-void
.end method

.method protected h()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "analysis_result_card_key"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/o;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "analysis_result_card_path"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/o;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "analysis_result_cleaned_size"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/o;->o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "analysis_result_cleaned_memory_size"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/o;->v:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method protected j()V
    .locals 4

    invoke-super {p0}, Lcom/estrongs/android/pop/app/analysis/b/v;->j()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/o;->v:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/a/e;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/android/pop/app/analysis/b/o;->h:I

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/b/o;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/pop/app/analysis/a/e;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/o;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/o;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/o;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/o;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/pop/app/analysis/a/i;->a(Lcom/estrongs/android/pop/app/analysis/a/m;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/o;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/a/e;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/pop/app/analysis/a/e;->a(Lcom/estrongs/android/pop/app/analysis/a/h;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/o;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/a/i;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/o;->v()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/pop/app/analysis/b/v;->onResume()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/o;->x()V

    return-void
.end method

.method protected r()V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/o;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/o;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/o;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/app/analysis/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/o;->y:Lcom/estrongs/android/a/b/a;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/o;->y:Lcom/estrongs/android/a/b/a;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/o;->x:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/o;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/o;->y:Lcom/estrongs/android/a/b/a;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/o;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/app/analysis/a;->a(Ljava/lang/String;Lcom/estrongs/android/a/b/a;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    instance-of v1, v0, Lcom/estrongs/fs/impl/b/d;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/estrongs/fs/impl/b/d;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/b/d;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/estrongs/android/pop/app/analysis/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/estrongs/android/pop/app/analysis/b/g;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/analysis/b/g;-><init>(Lcom/estrongs/android/pop/app/analysis/b/a;)V

    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/estrongs/android/pop/app/analysis/b/g;->a:Z

    iput-object v0, v1, Lcom/estrongs/android/pop/app/analysis/b/g;->b:Lcom/estrongs/fs/h;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_2
    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/o;->x:Ljava/util/List;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2
.end method

.method protected v()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/o;->b:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method protected x()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/o;->r:Lcom/estrongs/android/pop/app/analysis/b/g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/app/analysis/b/o;->a(ZZ)V

    :cond_0
    return-void
.end method
