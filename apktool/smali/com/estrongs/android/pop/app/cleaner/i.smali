.class public Lcom/estrongs/android/pop/app/cleaner/i;
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
.field protected a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/b/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:I

.field private g:Ljava/lang/Runnable;

.field private h:Z

.field private i:Z

.field private j:Landroid/app/Activity;

.field private k:J

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/estrongs/android/k/d;",
            "Lcom/estrongs/android/b/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/estrongs/android/pop/app/unlock/y;

.field private n:Lcom/estrongs/android/b/a/b;


# direct methods
.method public constructor <init>(Landroid/app/Activity;J)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/cleaner/i;->c:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/i;->a:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/cleaner/i;->e:Z

    iput v1, p0, Lcom/estrongs/android/pop/app/cleaner/i;->f:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/i;->b:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/cleaner/i;->h:Z

    invoke-static {}, Lcom/estrongs/android/pop/utils/cl;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/cleaner/i;->i:Z

    new-instance v0, Lcom/estrongs/android/pop/app/cleaner/o;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/cleaner/o;-><init>(Lcom/estrongs/android/pop/app/cleaner/i;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/i;->n:Lcom/estrongs/android/b/a/b;

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cleaner/i;->j:Landroid/app/Activity;

    iput-wide p2, p0, Lcom/estrongs/android/pop/app/cleaner/i;->k:J

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/i;->d:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/i;->l:Ljava/util/Map;

    new-instance v0, Lcom/estrongs/android/pop/app/cleaner/j;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/cleaner/j;-><init>(Lcom/estrongs/android/pop/app/cleaner/i;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/i;->m:Lcom/estrongs/android/pop/app/unlock/y;

    invoke-static {}, Lcom/estrongs/android/pop/app/unlock/s;->a()Lcom/estrongs/android/pop/app/unlock/s;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/i;->m:Lcom/estrongs/android/pop/app/unlock/y;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/unlock/s;->a(Lcom/estrongs/android/pop/app/unlock/y;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/cleaner/i;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/i;->l:Ljava/util/Map;

    return-object v0
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 12

    const-wide/16 v10, 0x3e8

    const/high16 v1, 0x42b40000    # 90.0f

    const/4 v2, 0x0

    iget-object v8, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_0

    invoke-static {v8, v2}, Landroid/support/v4/view/cn;->k(Landroid/view/View;F)V

    invoke-static {v8, v1}, Landroid/support/v4/view/cn;->f(Landroid/view/View;F)V

    invoke-static {v8}, Landroid/support/v4/view/cn;->s(Landroid/view/View;)Landroid/support/v4/view/ex;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ex;->d(F)Landroid/support/v4/view/ex;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Landroid/support/v4/view/ex;->a(J)Landroid/support/v4/view/ex;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/ui/a/a;

    invoke-direct {v2}, Lcom/estrongs/android/ui/a/a;-><init>()V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ex;->a(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ex;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/app/cleaner/m;

    invoke-direct {v2, p0, v0, p1}, Lcom/estrongs/android/pop/app/cleaner/m;-><init>(Lcom/estrongs/android/pop/app/cleaner/i;Landroid/support/v4/view/ex;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ex;->a(Landroid/support/v4/view/fo;)Landroid/support/v4/view/ex;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ex;->c()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/estrongs/android/ui/a/d;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/ui/a/d;-><init>(FFFFFZZ)V

    invoke-virtual {v0, v10, v11}, Lcom/estrongs/android/ui/a/d;->setDuration(J)V

    new-instance v1, Lcom/estrongs/android/ui/a/a;

    invoke-direct {v1}, Lcom/estrongs/android/ui/a/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/a/d;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/estrongs/android/pop/app/cleaner/n;

    invoke-direct {v1, p0, p1, v8}, Lcom/estrongs/android/pop/app/cleaner/n;-><init>(Lcom/estrongs/android/pop/app/cleaner/i;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/a/d;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v8, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/i;->j:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    const-string v1, "clean"

    invoke-virtual {v0, v1, p1}, Lcom/estrongs/android/j/c;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/cleaner/i;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/cleaner/i;->e:Z

    return p1
.end method

.method private b(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/i;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/cleaner/i;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/i;->d:Ljava/util/List;

    return-object v0
.end method

.method private b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/b/a/a;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/b/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/a;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/a;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "recommend"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "C_recom_show"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/cleaner/i;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "ad"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "Clean_ad_show_pv"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/cleaner/i;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "function"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "sdanalyst"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Clean_function_sdanalyze_show_pv"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/cleaner/i;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/cleaner/i;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/i;->g:Ljava/lang/Runnable;

    return-object v0
.end method

.method private c(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/b/a/a;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/b/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/a;->l()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ad"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "ad"

    invoke-virtual {v0, v3}, Lcom/estrongs/android/b/a/a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/estrongs/android/b/a/a;->l()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ad"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "ad"

    invoke-virtual {v0, v3}, Lcom/estrongs/android/b/a/a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    move v0, v1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/b/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/a;->l()Ljava/lang/String;

    move-result-object v0

    const-string v2, "rate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private d(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/b/a/a;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/cleaner/i;->i:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/app/ad/a;->a()Lcom/estrongs/android/pop/app/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ad/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/b/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/a;->l()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ad"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/estrongs/android/pop/app/ad/a;->a()Lcom/estrongs/android/pop/app/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/ad/a;->e()Lcom/estrongs/android/pop/app/ad/j;

    move-result-object v3

    const-string v4, "ad"

    invoke-virtual {v0, v4, v3}, Lcom/estrongs/android/b/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v1, -0x1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/cleaner/i;->h:Z

    :goto_1
    if-eqz v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private e(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/b/a/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/i;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/b/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/a;->l()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/cleaner/i;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/cleaner/i;->b:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private f(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/b/a/a;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/b/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/a;->l()Ljava/lang/String;

    move-result-object v1

    const-string v3, "unlock"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/estrongs/android/pop/app/cleaner/i;->l:Ljava/util/Map;

    move-object v1, v0

    check-cast v1, Lcom/estrongs/android/b/a/a/g;

    iget-object v1, v1, Lcom/estrongs/android/b/a/a/g;->r:Lcom/estrongs/android/k/d;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "positon"

    const-string v4, "clean"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "feature"

    check-cast v0, Lcom/estrongs/android/b/a/a/g;

    iget-object v0, v0, Lcom/estrongs/android/b/a/a/g;->r:Lcom/estrongs/android/k/d;

    invoke-virtual {v0}, Lcom/estrongs/android/k/d;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "action"

    const-string v3, "show"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/i;->j:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    const-string v3, "unlockc"

    invoke-virtual {v0, v3, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(I)Lcom/estrongs/android/b/a/a;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/i;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/i;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/b/a/a;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(II)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/i;->d:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/i;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/i;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 p2, v0, -0x1

    :cond_0
    :goto_0
    if-ge p1, p2, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/i;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/b/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/a;->l()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ad"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ad"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/b/a/a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/estrongs/android/pop/app/ad/j;

    if-eqz v1, :cond_1

    const-string v1, "ad"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/b/a/a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/ad/j;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ad/j;->a()Landroid/view/View;

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(Lcom/estrongs/android/b/a/a;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/i;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/i;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/cleaner/i;->notifyItemRemoved(I)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/b/a/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/i;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/i;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/i;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/cleaner/i;->d(Ljava/util/List;)V

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/cleaner/i;->c(Ljava/util/List;)V

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/cleaner/i;->b(Ljava/util/List;)V

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/cleaner/i;->e(Ljava/util/List;)V

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/cleaner/i;->f(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/i;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/cleaner/i;->notifyDataSetChanged()V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/cleaner/i;->h:Z

    return v0
.end method

.method public b()V
    .locals 2

    invoke-static {}, Lcom/estrongs/android/pop/app/unlock/s;->a()Lcom/estrongs/android/pop/app/unlock/s;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/i;->m:Lcom/estrongs/android/pop/app/unlock/y;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/unlock/s;->b(Lcom/estrongs/android/pop/app/unlock/y;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/i;->d:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/i;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/i;->b:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/i;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/b/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/a;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/cleaner/i;->f:I

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    invoke-virtual {p0, p2}, Lcom/estrongs/android/pop/app/cleaner/i;->getItemViewType(I)I

    move-result v1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/i;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/b/a/a;

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0e04d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/cleaner/i;->k:J

    const-wide/16 v4, 0x0

    cmp-long v1, v4, v2

    if-gez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/estrongs/android/pop/app/cleaner/i;->j:Landroid/app/Activity;

    const v5, 0x7f0801e5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2, v3}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0e0108

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0801df

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/i;->j:Landroid/app/Activity;

    const v2, 0x7f0801ce

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/estrongs/android/b/a/a;->l()Ljava/lang/String;

    move-result-object v1

    const-string v2, "unlock"

    if-ne v1, v2, :cond_3

    check-cast p1, Lcom/estrongs/android/ui/c/c/g;

    new-instance v1, Lcom/estrongs/android/pop/app/cleaner/l;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/cleaner/l;-><init>(Lcom/estrongs/android/pop/app/cleaner/i;)V

    invoke-virtual {p1, v1}, Lcom/estrongs/android/ui/c/c/g;->a(Lcom/estrongs/android/pop/app/unlock/g;)V

    check-cast v0, Lcom/estrongs/android/b/a/a/g;

    iget-object v0, v0, Lcom/estrongs/android/b/a/a/g;->r:Lcom/estrongs/android/k/d;

    invoke-virtual {p1, v0}, Lcom/estrongs/android/ui/c/c/g;->a(Lcom/estrongs/android/k/d;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/estrongs/android/b/a/f;->a()Lcom/estrongs/android/b/a/f;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/i;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/b/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/a;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/b/a/f;->a(Ljava/lang/String;)Lcom/estrongs/android/b/a/o;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/estrongs/android/pop/app/cleaner/i;->a(I)Lcom/estrongs/android/b/a/a;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/cleaner/i;->j:Landroid/app/Activity;

    move v4, p2

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/estrongs/android/b/a/o;->a(Landroid/view/View;Lcom/estrongs/android/b/a/a;Landroid/content/Context;ILcom/estrongs/android/pop/app/cleaner/i;)V

    goto :goto_1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p2}, Lcom/estrongs/android/pop/app/cleaner/i;->b(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/i;->j:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03011b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :cond_0
    :goto_0
    new-instance v1, Lcom/estrongs/android/pop/app/cleaner/k;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/pop/app/cleaner/k;-><init>(Lcom/estrongs/android/pop/app/cleaner/i;Landroid/view/View;)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    const-string v2, "unlock"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Lcom/estrongs/android/ui/c/c/g;

    new-instance v1, Lcom/estrongs/android/pop/app/unlock/UnLockCardView;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/cleaner/i;->j:Landroid/app/Activity;

    const-string v3, "clean"

    invoke-direct {v1, v2, v3}, Lcom/estrongs/android/pop/app/unlock/UnLockCardView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/c/c/g;-><init>(Lcom/estrongs/android/pop/app/unlock/UnLockCardView;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/estrongs/android/b/a/f;->a()Lcom/estrongs/android/b/a/f;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/estrongs/android/b/a/f;->a(Ljava/lang/String;)Lcom/estrongs/android/b/a/o;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/i;->j:Landroid/app/Activity;

    invoke-interface {v1, p1, v0}, Lcom/estrongs/android/b/a/o;->a(Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/cleaner/i;->e:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/cleaner/i;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0
.end method

.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/cleaner/i;->b(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    return-void
.end method
