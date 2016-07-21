.class public Lcom/estrongs/android/pop/app/analysis/a/a;
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
.field private a:Landroid/content/Context;

.field private b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/estrongs/android/b/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field private d:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field private e:Ljava/util/Map;
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

.field private f:Lcom/estrongs/android/pop/app/unlock/y;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/a/a;->a:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/a;->e:Ljava/util/Map;

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/a/b;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/analysis/a/b;-><init>(Lcom/estrongs/android/pop/app/analysis/a/a;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/a;->f:Lcom/estrongs/android/pop/app/unlock/y;

    invoke-static {}, Lcom/estrongs/android/pop/app/unlock/s;->a()Lcom/estrongs/android/pop/app/unlock/s;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/a;->f:Lcom/estrongs/android/pop/app/unlock/y;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/unlock/s;->a(Lcom/estrongs/android/pop/app/unlock/y;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/analysis/a/a;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/a;->e:Ljava/util/Map;

    return-object v0
.end method

.method private a(Lcom/estrongs/android/b/a/a;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a;->l()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_3

    const-string v3, "ad"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v0, "A_ad_show"

    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "report Analysis card show event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/l;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    const-string v2, "analysis"

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/j/c;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    const-string v3, "junk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v0, "Analysis_junk_show"

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_0

    const-string v2, "largefile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, "Analysis_large_show"

    goto :goto_1

    :cond_5
    const-string v2, "redundancy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v0, "Analysis_redundancy_show"

    goto :goto_1

    :cond_6
    const-string v2, "duplicate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v0, "Analysis_duplicate_show"

    goto :goto_1

    :cond_7
    const-string v2, "newcreate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v0, "Analysis_recently_show"

    goto :goto_1

    :cond_8
    const-string v2, "allfile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "catalog"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    const-string v0, "Analysis_all_show"

    goto :goto_1

    :cond_a
    const-string v2, "apprelationfile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "appcatalog"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_b
    const-string v0, "Analysis_associate_show"

    goto/16 :goto_1
.end method

.method private a(Ljava/util/List;)V
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

    invoke-static {}, Lcom/estrongs/android/pop/app/ad/a/a;->a()Lcom/estrongs/android/pop/app/ad/a/a;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/estrongs/android/pop/app/ad/a/a;->a(I)Lcom/flurry/android/ads/FlurryAdNative;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v4, "ad"

    invoke-virtual {v0, v4, v3}, Lcom/estrongs/android/b/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/analysis/a/a;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method private b(Ljava/util/List;)V
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

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

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

    move-result-object v2

    const-string v3, "rate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/analysis/a/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method private c(Ljava/util/List;)V
    .locals 2
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

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/b/a/a;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/analysis/a/a;->a(Lcom/estrongs/android/b/a/a;)V

    goto :goto_0

    :cond_0
    return-void
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

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/a/a;->e:Ljava/util/Map;

    move-object v1, v0

    check-cast v1, Lcom/estrongs/android/b/a/a/g;

    iget-object v1, v1, Lcom/estrongs/android/b/a/a/g;->r:Lcom/estrongs/android/k/d;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "positon"

    const-string v4, "analysis"

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

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/a;->a:Landroid/content/Context;

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
.method public a()V
    .locals 2

    invoke-static {}, Lcom/estrongs/android/pop/app/unlock/s;->a()Lcom/estrongs/android/pop/app/unlock/s;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/a;->f:Lcom/estrongs/android/pop/app/unlock/y;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/unlock/s;->b(Lcom/estrongs/android/pop/app/unlock/y;)V

    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/b/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/a;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/a;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, p2, p3}, Lcom/estrongs/android/b/a/a;->a(J)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/estrongs/android/b/a/a;->a(Z)V

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/analysis/a/a;->notifyItemChanged(I)V

    goto :goto_0
.end method

.method public a(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/estrongs/android/b/a/a;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/analysis/a/a;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/analysis/a/a;->b(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/analysis/a/a;->c(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/analysis/a/a;->d(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/b/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/a;->k()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/b/a/a;

    const-string v1, "charge_boost"

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/a;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/estrongs/android/b/a/a;->l()Ljava/lang/String;

    move-result-object v1

    const-string v2, "unlock"

    if-ne v1, v2, :cond_1

    check-cast p1, Lcom/estrongs/android/ui/c/c/g;

    new-instance v1, Lcom/estrongs/android/pop/app/analysis/a/c;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/analysis/a/c;-><init>(Lcom/estrongs/android/pop/app/analysis/a/a;)V

    invoke-virtual {p1, v1}, Lcom/estrongs/android/ui/c/c/g;->a(Lcom/estrongs/android/pop/app/unlock/g;)V

    check-cast v0, Lcom/estrongs/android/b/a/a/g;

    iget-object v0, v0, Lcom/estrongs/android/b/a/a/g;->r:Lcom/estrongs/android/k/d;

    invoke-virtual {p1, v0}, Lcom/estrongs/android/ui/c/c/g;->a(Lcom/estrongs/android/k/d;)V

    goto :goto_0

    :cond_1
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/estrongs/android/pop/app/analysis/a/d;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/app/analysis/a/d;-><init>(Lcom/estrongs/android/pop/app/analysis/a/a;Lcom/estrongs/android/b/a/a;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    check-cast p1, Lcom/estrongs/android/pop/app/analysis/viewholders/n;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/b/a/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/a;->a:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcom/estrongs/android/pop/app/analysis/viewholders/n;->a(Lcom/estrongs/android/b/a/a;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    const v1, 0x7f030021

    const/4 v2, 0x0

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030028

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/viewholders/y;

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/app/analysis/viewholders/y;-><init>(Landroid/view/View;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030029

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/viewholders/o;

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/app/analysis/viewholders/o;-><init>(Landroid/view/View;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030027

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/viewholders/ab;

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/app/analysis/viewholders/ab;-><init>(Landroid/view/View;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/a;->c:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030038

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/analysis/viewholders/l;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/app/analysis/viewholders/l;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/a;->c:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/a;->c:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/a;->d:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030039

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/analysis/viewholders/i;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/app/analysis/viewholders/i;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/a;->d:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/a;->d:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/viewholders/a;

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/app/analysis/viewholders/a;-><init>(Landroid/view/View;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002a

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/viewholders/ac;

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/app/analysis/viewholders/ac;-><init>(Landroid/view/View;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/viewholders/ae;

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/app/analysis/viewholders/ae;-><init>(Landroid/view/View;)V

    goto/16 :goto_0

    :pswitch_8
    new-instance v0, Lcom/estrongs/android/ui/c/c/g;

    new-instance v1, Lcom/estrongs/android/pop/app/unlock/UnLockCardView;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/a/a;->a:Landroid/content/Context;

    const-string v3, "analysis"

    invoke-direct {v1, v2, v3}, Lcom/estrongs/android/pop/app/unlock/UnLockCardView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/c/c/g;-><init>(Lcom/estrongs/android/pop/app/unlock/UnLockCardView;)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030059

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/estrongs/android/pop/app/a/a/f;

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/app/a/a/f;-><init>(Landroid/view/View;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
