.class Lcom/estrongs/android/ui/topclassify/j;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/android/ui/topclassify/f;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/topclassify/f;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/topclassify/j;->b:Lcom/estrongs/android/ui/topclassify/f;

    iput p2, p0, Lcom/estrongs/android/ui/topclassify/j;->a:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v1, 0x0

    const/4 v6, 0x4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v2, 0x4ec5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/topclassify/j;->b:Lcom/estrongs/android/ui/topclassify/f;

    invoke-static {v3, v8}, Lcom/estrongs/android/ui/topclassify/f;->a(Lcom/estrongs/android/ui/topclassify/f;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/topclassify/j;->b:Lcom/estrongs/android/ui/topclassify/f;

    invoke-static {v3, v7}, Lcom/estrongs/android/ui/topclassify/f;->a(Lcom/estrongs/android/ui/topclassify/f;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/topclassify/j;->b:Lcom/estrongs/android/ui/topclassify/f;

    invoke-static {v3, v9}, Lcom/estrongs/android/ui/topclassify/f;->a(Lcom/estrongs/android/ui/topclassify/f;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/topclassify/j;->b:Lcom/estrongs/android/ui/topclassify/f;

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lcom/estrongs/android/ui/topclassify/f;->a(Lcom/estrongs/android/ui/topclassify/f;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/topclassify/j;->b:Lcom/estrongs/android/ui/topclassify/f;

    const/4 v4, 0x7

    invoke-static {v3, v4}, Lcom/estrongs/android/ui/topclassify/f;->a(Lcom/estrongs/android/ui/topclassify/f;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/topclassify/j;->b:Lcom/estrongs/android/ui/topclassify/f;

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/estrongs/android/ui/topclassify/f;->a(Lcom/estrongs/android/ui/topclassify/f;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/topclassify/j;->b:Lcom/estrongs/android/ui/topclassify/f;

    const/16 v4, 0x9

    invoke-static {v3, v4}, Lcom/estrongs/android/ui/topclassify/f;->a(Lcom/estrongs/android/ui/topclassify/f;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/estrongs/android/scanner/a;->a()Lcom/estrongs/android/scanner/a;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/topclassify/j;->b:Lcom/estrongs/android/ui/topclassify/f;

    invoke-static {v3}, Lcom/estrongs/android/ui/topclassify/f;->c(Lcom/estrongs/android/ui/topclassify/f;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/pop/ad;->bo()Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/estrongs/android/scanner/a;->a(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v2

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/j;->b:Lcom/estrongs/android/ui/topclassify/f;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v3}, Lcom/estrongs/android/ui/topclassify/f;->a(Lcom/estrongs/android/ui/topclassify/f;Ljava/util/Map;)Ljava/util/Map;

    new-instance v3, Lcom/estrongs/android/ui/topclassify/k;

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/j;->b:Lcom/estrongs/android/ui/topclassify/f;

    invoke-direct {v3, v0}, Lcom/estrongs/android/ui/topclassify/k;-><init>(Lcom/estrongs/android/ui/topclassify/f;)V

    iput v7, v3, Lcom/estrongs/android/ui/topclassify/k;->b:I

    iput v8, v3, Lcom/estrongs/android/ui/topclassify/k;->c:I

    const/16 v0, 0x4ec5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, v3, Lcom/estrongs/android/ui/topclassify/k;->a:I

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/j;->b:Lcom/estrongs/android/ui/topclassify/f;

    invoke-static {v0}, Lcom/estrongs/android/ui/topclassify/f;->b(Lcom/estrongs/android/ui/topclassify/f;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/estrongs/android/ui/topclassify/k;

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/j;->b:Lcom/estrongs/android/ui/topclassify/f;

    invoke-direct {v3, v0}, Lcom/estrongs/android/ui/topclassify/k;-><init>(Lcom/estrongs/android/ui/topclassify/f;)V

    iput v6, v3, Lcom/estrongs/android/ui/topclassify/k;->b:I

    iput v7, v3, Lcom/estrongs/android/ui/topclassify/k;->c:I

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput v0, v3, Lcom/estrongs/android/ui/topclassify/k;->a:I

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/j;->b:Lcom/estrongs/android/ui/topclassify/f;

    invoke-static {v0}, Lcom/estrongs/android/ui/topclassify/f;->b(Lcom/estrongs/android/ui/topclassify/f;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/estrongs/android/ui/topclassify/k;

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/j;->b:Lcom/estrongs/android/ui/topclassify/f;

    invoke-direct {v3, v0}, Lcom/estrongs/android/ui/topclassify/k;-><init>(Lcom/estrongs/android/ui/topclassify/f;)V

    iput v6, v3, Lcom/estrongs/android/ui/topclassify/k;->b:I

    iput v9, v3, Lcom/estrongs/android/ui/topclassify/k;->c:I

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    iput v0, v3, Lcom/estrongs/android/ui/topclassify/k;->a:I

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/j;->b:Lcom/estrongs/android/ui/topclassify/f;

    invoke-static {v0}, Lcom/estrongs/android/ui/topclassify/f;->b(Lcom/estrongs/android/ui/topclassify/f;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/estrongs/android/ui/topclassify/k;

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/j;->b:Lcom/estrongs/android/ui/topclassify/f;

    invoke-direct {v3, v0}, Lcom/estrongs/android/ui/topclassify/k;-><init>(Lcom/estrongs/android/ui/topclassify/f;)V

    iput v6, v3, Lcom/estrongs/android/ui/topclassify/k;->b:I

    const/4 v0, 0x6

    iput v0, v3, Lcom/estrongs/android/ui/topclassify/k;->c:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    iput v0, v3, Lcom/estrongs/android/ui/topclassify/k;->a:I

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/j;->b:Lcom/estrongs/android/ui/topclassify/f;

    invoke-static {v0}, Lcom/estrongs/android/ui/topclassify/f;->b(Lcom/estrongs/android/ui/topclassify/f;)Ljava/util/Map;

    move-result-object v0

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/estrongs/android/ui/topclassify/k;

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/j;->b:Lcom/estrongs/android/ui/topclassify/f;

    invoke-direct {v3, v0}, Lcom/estrongs/android/ui/topclassify/k;-><init>(Lcom/estrongs/android/ui/topclassify/f;)V

    iput v6, v3, Lcom/estrongs/android/ui/topclassify/k;->b:I

    const/4 v0, 0x7

    iput v0, v3, Lcom/estrongs/android/ui/topclassify/k;->c:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    iput v0, v3, Lcom/estrongs/android/ui/topclassify/k;->a:I

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/j;->b:Lcom/estrongs/android/ui/topclassify/f;

    invoke-static {v0}, Lcom/estrongs/android/ui/topclassify/f;->b(Lcom/estrongs/android/ui/topclassify/f;)Ljava/util/Map;

    move-result-object v0

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/estrongs/android/ui/topclassify/k;

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/j;->b:Lcom/estrongs/android/ui/topclassify/f;

    invoke-direct {v3, v0}, Lcom/estrongs/android/ui/topclassify/k;-><init>(Lcom/estrongs/android/ui/topclassify/f;)V

    iput v6, v3, Lcom/estrongs/android/ui/topclassify/k;->b:I

    const/4 v0, 0x5

    iput v0, v3, Lcom/estrongs/android/ui/topclassify/k;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    iput v0, v3, Lcom/estrongs/android/ui/topclassify/k;->a:I

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/j;->b:Lcom/estrongs/android/ui/topclassify/f;

    invoke-static {v0}, Lcom/estrongs/android/ui/topclassify/f;->b(Lcom/estrongs/android/ui/topclassify/f;)Ljava/util/Map;

    move-result-object v0

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/estrongs/android/ui/topclassify/k;

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/j;->b:Lcom/estrongs/android/ui/topclassify/f;

    invoke-direct {v3, v0}, Lcom/estrongs/android/ui/topclassify/k;-><init>(Lcom/estrongs/android/ui/topclassify/f;)V

    iput v6, v3, Lcom/estrongs/android/ui/topclassify/k;->b:I

    const/16 v0, 0x9

    iput v0, v3, Lcom/estrongs/android/ui/topclassify/k;->c:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    iput v0, v3, Lcom/estrongs/android/ui/topclassify/k;->a:I

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/j;->b:Lcom/estrongs/android/ui/topclassify/f;

    invoke-static {v0}, Lcom/estrongs/android/ui/topclassify/f;->b(Lcom/estrongs/android/ui/topclassify/f;)Ljava/util/Map;

    move-result-object v0

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/estrongs/android/ui/topclassify/k;

    iget-object v2, p0, Lcom/estrongs/android/ui/topclassify/j;->b:Lcom/estrongs/android/ui/topclassify/f;

    invoke-direct {v0, v2}, Lcom/estrongs/android/ui/topclassify/k;-><init>(Lcom/estrongs/android/ui/topclassify/f;)V

    iput v6, v0, Lcom/estrongs/android/ui/topclassify/k;->b:I

    iput v6, v0, Lcom/estrongs/android/ui/topclassify/k;->c:I

    iget v2, p0, Lcom/estrongs/android/ui/topclassify/j;->a:I

    iput v2, v0, Lcom/estrongs/android/ui/topclassify/k;->a:I

    iget-object v2, p0, Lcom/estrongs/android/ui/topclassify/j;->b:Lcom/estrongs/android/ui/topclassify/f;

    invoke-static {v2}, Lcom/estrongs/android/ui/topclassify/f;->b(Lcom/estrongs/android/ui/topclassify/f;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/j;->b:Lcom/estrongs/android/ui/topclassify/f;

    invoke-static {v0}, Lcom/estrongs/android/ui/topclassify/f;->d(Lcom/estrongs/android/ui/topclassify/f;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    const/16 v0, 0x4ec5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_1

    :cond_2
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_2

    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_3

    :cond_4
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_4

    :cond_5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_5

    :cond_6
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_6
.end method
