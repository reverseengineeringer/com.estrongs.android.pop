.class public Lcom/estrongs/android/view/eb;
.super Lcom/estrongs/android/view/cr;


# static fields
.field private static ar:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation
.end field

.field private static as:Lcom/estrongs/android/util/TypedMap;


# instance fields
.field private a:Z

.field private al:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private am:Z

.field private final an:I

.field private ao:I

.field private ap:I

.field private aq:Z

.field private at:Z

.field private au:Ljava/lang/String;

.field b:I

.field protected c:Z

.field d:Lcom/estrongs/android/view/ep;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/estrongs/android/view/eb;->ar:Ljava/util/Map;

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/view/eb;->as:Lcom/estrongs/android/util/TypedMap;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/view/cr;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/view/eb;->b:I

    iput-boolean v1, p0, Lcom/estrongs/android/view/eb;->c:Z

    iput-boolean v1, p0, Lcom/estrongs/android/view/eb;->a:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/eb;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/eb;->al:Ljava/util/Map;

    iput-boolean v1, p0, Lcom/estrongs/android/view/eb;->am:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/estrongs/android/view/eb;->an:I

    iput v1, p0, Lcom/estrongs/android/view/eb;->ao:I

    iput v1, p0, Lcom/estrongs/android/view/eb;->ap:I

    iput-boolean v1, p0, Lcom/estrongs/android/view/eb;->aq:Z

    iput-boolean v1, p0, Lcom/estrongs/android/view/eb;->at:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/view/eb;->au:Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/view/ee;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/ee;-><init>(Lcom/estrongs/android/view/eb;)V

    iput-object v0, p0, Lcom/estrongs/android/view/eb;->i:Lcom/estrongs/android/view/ck;

    iget-object v0, p0, Lcom/estrongs/android/view/eb;->i:Lcom/estrongs/android/view/ck;

    new-instance v1, Lcom/estrongs/android/view/em;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/em;-><init>(Lcom/estrongs/android/view/eb;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/ck;->a(Lcom/estrongs/android/view/cn;)V

    iget-object v0, p0, Lcom/estrongs/android/view/eb;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/estrongs/android/view/eb;->i:Lcom/estrongs/android/view/ck;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/estrongs/android/view/eb;->i:Lcom/estrongs/android/view/ck;

    new-instance v1, Lcom/estrongs/android/view/ec;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/ec;-><init>(Lcom/estrongs/android/view/eb;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/ck;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/ui/pcs/u;->a()Lcom/estrongs/android/ui/pcs/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/u;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/view/eb;->at:Z

    invoke-static {}, Lcom/estrongs/android/ui/pcs/u;->a()Lcom/estrongs/android/ui/pcs/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/u;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/eb;->au:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/view/eb;->ag:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/view/eb;->ap:I

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private A()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/estrongs/android/view/eb;->c:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v4, p0, Lcom/estrongs/android/view/eb;->c:Z

    const v0, 0x7f0e0290

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/eb;->b(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/eb;->X:Lcom/estrongs/android/util/TypedMap;

    const-string v1, "per_page"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    iget-object v0, p0, Lcom/estrongs/android/view/eb;->X:Lcom/estrongs/android/util/TypedMap;

    const-string v1, "page"

    iget v2, p0, Lcom/estrongs/android/view/eb;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/estrongs/android/view/eb;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    iget-object v0, p0, Lcom/estrongs/android/view/eb;->X:Lcom/estrongs/android/util/TypedMap;

    const-string v1, "load_next_page"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    iget-object v0, p0, Lcom/estrongs/android/view/eb;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aQ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/view/eb;->X:Lcom/estrongs/android/util/TypedMap;

    const-string v2, "max_id"

    iget-object v0, p0, Lcom/estrongs/android/view/eb;->H:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/estrongs/android/view/eb;->H:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    :cond_2
    invoke-super {p0, v4}, Lcom/estrongs/android/view/cr;->b(Z)V

    iget-object v0, p0, Lcom/estrongs/android/view/eb;->X:Lcom/estrongs/android/util/TypedMap;

    const-string v1, "load_next_page"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    goto :goto_0
.end method

.method private B()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/ui/pcs/u;->a()Lcom/estrongs/android/ui/pcs/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/pcs/u;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/estrongs/android/view/eb;->at:Z

    if-nez v2, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/estrongs/android/view/eb;->at:Z

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/estrongs/android/ui/pcs/u;->a()Lcom/estrongs/android/ui/pcs/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/pcs/u;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/view/eb;->au:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/estrongs/android/ui/pcs/u;->a()Lcom/estrongs/android/ui/pcs/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/pcs/u;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/view/eb;->au:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/estrongs/android/view/eb;->at:Z

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/estrongs/android/view/eb;->at:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/view/eb;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/view/eb;->ao:I

    return v0
.end method

.method public static a(Lcom/estrongs/fs/h;Z)Lcom/estrongs/fs/h;
    .locals 9

    const/4 v6, 0x0

    const/4 v8, 0x1

    if-nez p0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/w;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "need_210_thumbnail"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/estrongs/fs/h;->putExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :try_start_0
    sget-object v0, Lcom/estrongs/android/view/eb;->ar:Ljava/util/Map;

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v1

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/fs/d;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "need_210_thumbnail"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/estrongs/fs/h;->putExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/estrongs/android/view/eb;->ar:Ljava/util/Map;

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p1, :cond_4

    move-object p0, v6

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/estrongs/android/view/eb;->as:Lcom/estrongs/android/util/TypedMap;

    if-nez v0, :cond_5

    new-instance v0, Lcom/estrongs/android/util/TypedMap;

    invoke-direct {v0}, Lcom/estrongs/android/util/TypedMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/view/eb;->as:Lcom/estrongs/android/util/TypedMap;

    sget-object v0, Lcom/estrongs/android/view/eb;->as:Lcom/estrongs/android/util/TypedMap;

    const-string v1, "from"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    sget-object v0, Lcom/estrongs/android/view/eb;->as:Lcom/estrongs/android/util/TypedMap;

    const-string v1, "to"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    :cond_5
    invoke-interface {p0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aV(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "pictures"

    :goto_1
    invoke-interface {p0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/estrongs/android/util/ap;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/d;->m(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v1

    :goto_2
    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/estrongs/android/view/eb;->as:Lcom/estrongs/android/util/TypedMap;

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/h;ZZLcom/estrongs/fs/i;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v8, :cond_8

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    if-eqz v0, :cond_6

    const-string v1, "need_210_thumbnail"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/estrongs/fs/h;->putExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/estrongs/android/view/eb;->ar:Ljava/util/Map;

    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_3
    move-object p0, v0

    goto/16 :goto_0

    :cond_7
    const-string v0, "mine"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v6

    goto :goto_3

    :cond_8
    move-object v0, v6

    goto :goto_3

    :cond_9
    move-object v1, p0

    goto :goto_2
.end method

.method static synthetic a(Lcom/estrongs/android/view/eb;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/eb;->c(Z)V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/view/eb;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/view/eb;->ap:I

    return v0
.end method

.method static synthetic b(Lcom/estrongs/android/view/eb;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/view/eb;->a:Z

    return p1
.end method

.method private c(Z)V
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/estrongs/android/view/eb;->u()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/view/eb;->ag:Landroid/app/Activity;

    invoke-static {v2}, Lcom/estrongs/android/pop/utils/cu;->g(Landroid/content/Context;)[I

    move-result-object v2

    aget v3, v2, v1

    aget v4, v2, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v4, v2, v1

    aget v2, v2, v0

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v4, p0, Lcom/estrongs/android/view/eb;->ag:Landroid/app/Activity;

    invoke-static {v4}, Lcom/estrongs/android/pop/utils/cu;->a(Landroid/content/Context;)Z

    move-result v4

    iget-object v5, p0, Lcom/estrongs/android/view/eb;->ag:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v0, :cond_0

    move v1, v0

    :cond_0
    const/4 v0, 0x4

    if-nez v1, :cond_1

    if-eqz v4, :cond_3

    :cond_1
    div-int v1, v3, v0

    iput v1, p0, Lcom/estrongs/android/view/eb;->ao:I

    :goto_0
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/view/eb;->g:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/eb;->i:Lcom/estrongs/android/view/ck;

    invoke-virtual {v0}, Lcom/estrongs/android/view/ck;->notifyDataSetChanged()V

    :cond_2
    return-void

    :cond_3
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    int-to-double v4, v2

    int-to-double v6, v3

    div-double/2addr v4, v6

    mul-double/2addr v0, v4

    double-to-int v0, v0

    div-int v1, v2, v0

    iput v1, p0, Lcom/estrongs/android/view/eb;->ao:I

    goto :goto_0
.end method

.method static synthetic c(Lcom/estrongs/android/view/eb;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/view/eb;->a:Z

    return v0
.end method

.method static synthetic d(Lcom/estrongs/android/view/eb;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/view/eb;->aq:Z

    return v0
.end method

.method static synthetic e(Lcom/estrongs/android/view/eb;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/view/eb;->am:Z

    return v0
.end method

.method static synthetic f(Lcom/estrongs/android/view/eb;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/view/eb;->A()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/view/eb;->p:I

    return-void
.end method

.method protected a(Lcom/estrongs/fs/b/al;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/fs/b/al;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/estrongs/fs/b/al;->b:Lcom/estrongs/fs/h;

    invoke-virtual {p0}, Lcom/estrongs/android/view/eb;->b()Lcom/estrongs/fs/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Lcom/estrongs/android/view/eb;->Y:Z

    iput-boolean v2, p0, Lcom/estrongs/android/view/eb;->c:Z

    invoke-virtual {p0}, Lcom/estrongs/android/view/eb;->J()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/estrongs/android/view/eb;->c(Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/eb;->H:Ljava/util/LinkedList;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/eb;->a_(Ljava/util/List;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_4

    iget v0, p0, Lcom/estrongs/android/view/eb;->b:I

    if-le v0, v3, :cond_1

    iget v0, p0, Lcom/estrongs/android/view/eb;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/estrongs/android/view/eb;->b:I

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/view/eb;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aY(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/estrongs/android/view/eb;->a:Z

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/eb;->ag:Landroid/app/Activity;

    const v1, 0x7f08041a

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/utils/a;->a(Landroid/app/Activity;I)V

    :cond_2
    iput-boolean v3, p0, Lcom/estrongs/android/view/eb;->am:Z

    :cond_3
    iput-boolean v2, p0, Lcom/estrongs/android/view/eb;->a:Z

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/view/eb;->ag:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/app/d/b;

    new-instance v1, Lcom/estrongs/android/view/ed;

    invoke-direct {v1, p0, p2}, Lcom/estrongs/android/view/ed;-><init>(Lcom/estrongs/android/view/eb;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/app/d/b;->a(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d()Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/eb;->C:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/view/eb;->H:Ljava/util/LinkedList;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Ljava/lang/String;Ljava/util/List;)V

    :cond_5
    invoke-virtual {p0}, Lcom/estrongs/android/view/eb;->az()V

    invoke-virtual {p0}, Lcom/estrongs/android/view/eb;->m()V

    invoke-virtual {p0}, Lcom/estrongs/android/view/eb;->aB()V

    invoke-virtual {p0}, Lcom/estrongs/android/view/eb;->e()V

    return-void
.end method

.method protected a(Lcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)V
    .locals 3

    invoke-virtual {p0}, Lcom/estrongs/android/view/eb;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aQ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aP(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aB(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "album"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/ap;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/d;->m(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object p1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/view/eb;->C:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/eb;->e:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/view/eb;->C:Ljava/lang/String;

    iget v2, p0, Lcom/estrongs/android/view/eb;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/view/eb;->al:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/view/eb;->C:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/estrongs/android/view/eb;->am:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/eb;->e:Ljava/util/Map;

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/a/b;->f(Ljava/lang/String;)Lcom/estrongs/fs/a/d;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/a/b;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/view/eb;->e:Ljava/util/Map;

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/view/eb;->b:I

    iget-object v0, p0, Lcom/estrongs/android/view/eb;->al:Ljava/util/Map;

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/view/eb;->am:Z

    :goto_1
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/view/cr;->a(Lcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)V

    return-void

    :cond_2
    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pictures"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/ap;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/d;->m(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object p1

    goto/16 :goto_0

    :cond_3
    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mine"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/ap;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/d;->m(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object p1

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/view/eb;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/view/eb;->am:Z

    if-nez p2, :cond_5

    new-instance p2, Lcom/estrongs/android/util/TypedMap;

    invoke-direct {p2}, Lcom/estrongs/android/util/TypedMap;-><init>()V

    :cond_5
    const-string v0, "per_page"

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    const-string v0, "page"

    iget v1, p0, Lcom/estrongs/android/view/eb;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/estrongs/android/view/eb;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    const-string v0, "max_id"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    goto :goto_1
.end method

.method protected aa()V
    .locals 2

    new-instance v0, Lcom/estrongs/android/view/ep;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/ep;-><init>(Lcom/estrongs/android/view/eb;)V

    iput-object v0, p0, Lcom/estrongs/android/view/eb;->d:Lcom/estrongs/android/view/ep;

    iget-object v0, p0, Lcom/estrongs/android/view/eb;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/estrongs/android/view/eb;->d:Lcom/estrongs/android/view/ep;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    iget-object v0, p0, Lcom/estrongs/android/view/eb;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/estrongs/android/view/eb;->d:Lcom/estrongs/android/view/ep;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected ai()Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/eb;->X:Lcom/estrongs/android/util/TypedMap;

    const-string v1, "load_next_page"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/TypedMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Z)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/estrongs/android/view/eb;->H:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    if-eqz p1, :cond_0

    iput-boolean v1, p0, Lcom/estrongs/android/view/eb;->am:Z

    iput-boolean v0, p0, Lcom/estrongs/android/view/eb;->Y:Z

    :cond_0
    iget-object v2, p0, Lcom/estrongs/android/view/eb;->D:Lcom/estrongs/fs/h;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/view/eb;->D:Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->aQ(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/view/eb;->s()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/estrongs/android/view/eb;->aq:Z

    invoke-super {p0, p1}, Lcom/estrongs/android/view/cr;->b(Z)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected c(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/view/eb;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0, p1}, Lcom/estrongs/android/view/cr;->c(Ljava/util/List;)V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/view/eb;->H:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/view/eb;->V:Lcom/estrongs/fs/i;

    if-eqz v1, :cond_2

    move v1, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v3, p0, Lcom/estrongs/android/view/eb;->V:Lcom/estrongs/fs/i;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v3, v0}, Lcom/estrongs/fs/i;->a(Lcom/estrongs/fs/h;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/eb;->H:Ljava/util/LinkedList;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/view/eb;->H:Ljava/util/LinkedList;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/view/eb;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/estrongs/android/view/eb;->i:Lcom/estrongs/android/view/ck;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_0
.end method

.method public d()I
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/view/eb;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/view/eb;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/estrongs/android/view/cr;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/estrongs/android/view/cr;->d()I

    move-result v0

    goto :goto_0
.end method

.method public e()V
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/view/eb;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v1, v0, 0xa

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/estrongs/android/view/eb;->b:I

    invoke-super {p0}, Lcom/estrongs/android/view/cr;->e()V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public i_()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/view/cr;->i_()V

    sget-object v0, Lcom/estrongs/android/view/eb;->ar:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public j()Lcom/estrongs/fs/h;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/eb;->D:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/eb;->T:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/view/eb;->f()Lcom/estrongs/fs/h;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/eb;->D:Lcom/estrongs/fs/h;

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aV(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "SP://"

    :cond_2
    new-instance v1, Lcom/estrongs/fs/x;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/x;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/estrongs/android/view/eb;->c(Lcom/estrongs/fs/h;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public l()V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/estrongs/android/view/eb;->c(Z)V

    const-string v0, "SP://"

    iget-object v1, p0, Lcom/estrongs/android/view/eb;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/estrongs/android/view/eb;->B()Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/view/eb;->P:Z

    iget-boolean v0, p0, Lcom/estrongs/android/view/eb;->P:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/estrongs/android/view/eb;->R:Z

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/estrongs/android/view/cr;->l()V

    :goto_1
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/eb;->C:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/eb;->C:Ljava/lang/String;

    const-string v1, "@pcs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/view/eb;->B()Z

    iget-boolean v0, p0, Lcom/estrongs/android/view/eb;->at:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/view/eb;->R:Z

    const-string v0, "SP://"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/eb;->j(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected m(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public s()Z
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/view/eb;->t()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/view/eb;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t()Z
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/view/eb;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/view/eb;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->X(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public u()Z
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/view/eb;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aY(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/view/eb;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->X(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public v()Z
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/view/eb;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aP(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public w()Z
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/view/eb;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aQ(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected x()I
    .locals 1

    const v0, 0x7f0300d1

    return v0
.end method

.method protected y()I
    .locals 1

    const v0, 0x7f0300d0

    return v0
.end method

.method public z()V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/android/view/eb;->H:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :cond_0
    iget-object v3, p0, Lcom/estrongs/android/view/eb;->X:Lcom/estrongs/android/util/TypedMap;

    const-string v4, "per_page"

    div-int/lit8 v5, v0, 0xa

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_1

    move v0, v2

    :goto_0
    add-int/2addr v0, v5

    mul-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    iget-object v0, p0, Lcom/estrongs/android/view/eb;->X:Lcom/estrongs/android/util/TypedMap;

    const-string v3, "page"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    iget-object v0, p0, Lcom/estrongs/android/view/eb;->X:Lcom/estrongs/android/util/TypedMap;

    const-string v3, "max_id"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    iput-boolean v2, p0, Lcom/estrongs/android/view/eb;->am:Z

    invoke-virtual {p0, v1}, Lcom/estrongs/android/view/eb;->b(Z)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method
