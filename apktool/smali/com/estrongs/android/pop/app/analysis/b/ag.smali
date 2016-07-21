.class public Lcom/estrongs/android/pop/app/analysis/b/ag;
.super Lcom/estrongs/android/pop/app/analysis/b/a;

# interfaces
.implements Lcom/estrongs/android/pop/app/analysis/a/ae;


# instance fields
.field protected r:Lcom/estrongs/android/pop/app/analysis/b/g;

.field protected s:I

.field protected t:J

.field protected u:J

.field protected v:Ljava/util/concurrent/atomic/AtomicLong;

.field private w:Lcom/estrongs/android/pop/app/analysis/a/ac;

.field private x:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/estrongs/android/pop/app/analysis/b/aj;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/analysis/b/g;",
            ">;>;"
        }
    .end annotation
.end field

.field private y:Lcom/estrongs/android/pop/app/analysis/a/u;

.field private z:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/b/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/analysis/b/ag;)Lcom/estrongs/android/pop/app/analysis/a/u;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ag;->y:Lcom/estrongs/android/pop/app/analysis/a/u;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/analysis/b/ag;Lcom/estrongs/android/pop/app/analysis/a/u;)Lcom/estrongs/android/pop/app/analysis/a/u;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/b/ag;->y:Lcom/estrongs/android/pop/app/analysis/a/u;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/analysis/b/ag;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/analysis/b/ag;->a(ZZ)V

    return-void
.end method

.method private a(ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ag;->r:Lcom/estrongs/android/pop/app/analysis/b/g;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/analysis/b/g;->b:Lcom/estrongs/fs/h;

    check-cast v0, Lcom/estrongs/android/a/b/f;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/ag;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/app/analysis/b/ai;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/estrongs/android/pop/app/analysis/b/ai;-><init>(Lcom/estrongs/android/pop/app/analysis/b/ag;ZZLcom/estrongs/android/a/b/f;)V

    invoke-static {v1, v0, v2, p2}, Lcom/estrongs/android/pop/app/analysis/k;->a(Landroid/content/Context;Lcom/estrongs/android/a/b/f;Lcom/estrongs/android/pop/app/analysis/o;Z)V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/analysis/b/ag;)Lcom/estrongs/android/pop/app/analysis/a/ac;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ag;->w:Lcom/estrongs/android/pop/app/analysis/a/ac;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/app/analysis/b/a;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ag;->b:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/app/analysis/a/u;Lcom/estrongs/android/pop/app/analysis/b/g;)V
    .locals 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/b/ag;->y:Lcom/estrongs/android/pop/app/analysis/a/u;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/analysis/b/ag;->r:Lcom/estrongs/android/pop/app/analysis/b/g;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/app/analysis/b/ag;->a(ZZ)V

    return-void
.end method

.method protected h()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "analysis_result_card_key"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/ag;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "analysis_result_card_path"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/ag;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "analysis_result_cleaned_size"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/ag;->o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "analysis_result_cleaned_memory_size"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/ag;->v:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/ag;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method protected i()V
    .locals 0

    return-void
.end method

.method protected j()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ag;->v:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/a/ac;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/ag;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/estrongs/android/pop/app/analysis/a/ac;-><init>(Landroid/content/Context;Lcom/estrongs/android/pop/app/analysis/a/ae;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ag;->w:Lcom/estrongs/android/pop/app/analysis/a/ac;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ag;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/ag;->w:Lcom/estrongs/android/pop/app/analysis/a/ac;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ag;->w:Lcom/estrongs/android/pop/app/analysis/a/ac;

    new-instance v1, Lcom/estrongs/android/pop/app/analysis/b/ah;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/analysis/b/ah;-><init>(Lcom/estrongs/android/pop/app/analysis/b/ag;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/analysis/a/ac;->a(Lcom/estrongs/android/pop/app/analysis/a/y;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ag;->w:Lcom/estrongs/android/pop/app/analysis/a/ac;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/a/ac;->notifyDataSetChanged()V

    return-void
.end method

.method protected n()V
    .locals 0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/ag;->t()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/pop/app/analysis/b/a;->onResume()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/ag;->v()V

    return-void
.end method

.method protected r()V
    .locals 8

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ag;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/ag;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/b/ag;->g:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/estrongs/android/pop/app/analysis/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    if-nez v0, :cond_0

    iput-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/ag;->x:Ljava/util/LinkedHashMap;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/ag;->z:Lorg/json/JSONObject;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/app/analysis/k;->a()Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/ag;->z:Lorg/json/JSONObject;

    :cond_1
    instance-of v1, v0, Lcom/estrongs/android/a/b/m;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/estrongs/android/a/b/m;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/m;->e()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/estrongs/android/pop/app/analysis/b/ag;->z:Lorg/json/JSONObject;

    invoke-static {v5, v0}, Lcom/estrongs/android/pop/app/analysis/k;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/estrongs/android/pop/app/analysis/n;

    move-result-object v5

    new-instance v6, Lcom/estrongs/android/pop/app/analysis/b/aj;

    invoke-direct {v6, p0}, Lcom/estrongs/android/pop/app/analysis/b/aj;-><init>(Lcom/estrongs/android/pop/app/analysis/b/ag;)V

    iput-object v0, v6, Lcom/estrongs/android/pop/app/analysis/b/aj;->e:Ljava/lang/String;

    iput-object v5, v6, Lcom/estrongs/android/pop/app/analysis/b/aj;->d:Lcom/estrongs/android/pop/app/analysis/n;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    new-instance v7, Lcom/estrongs/android/pop/app/analysis/b/g;

    invoke-direct {v7, p0}, Lcom/estrongs/android/pop/app/analysis/b/g;-><init>(Lcom/estrongs/android/pop/app/analysis/b/a;)V

    iput-object v0, v7, Lcom/estrongs/android/pop/app/analysis/b/g;->b:Lcom/estrongs/fs/h;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v6, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    iput-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/ag;->x:Ljava/util/LinkedHashMap;

    goto :goto_0
.end method

.method protected s()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ag;->w:Lcom/estrongs/android/pop/app/analysis/a/ac;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/ag;->x:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/analysis/a/ac;->a(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ag;->w:Lcom/estrongs/android/pop/app/analysis/a/ac;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/a/ac;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/analysis/b/ag;->a(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected v()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ag;->r:Lcom/estrongs/android/pop/app/analysis/b/g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/app/analysis/b/ag;->a(ZZ)V

    :cond_0
    return-void
.end method
