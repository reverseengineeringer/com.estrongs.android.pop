.class public Lcom/estrongs/android/view/cd;
.super Lcom/estrongs/android/view/aw;


# static fields
.field private static am:Ljava/util/Map;
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

.field private static an:Lcom/estrongs/android/util/TypedMap;


# instance fields
.field private a:Z

.field private ai:Ljava/util/Map;
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

.field private aj:Ljava/util/Map;
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

.field private ak:Z

.field private al:Z

.field private ao:Z

.field private ap:Ljava/lang/String;

.field b:I

.field protected c:Z

.field d:Lcom/estrongs/android/view/co;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/estrongs/android/view/cd;->am:Ljava/util/Map;

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/view/cd;->an:Lcom/estrongs/android/util/TypedMap;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/cb;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/view/aw;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/cb;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/view/cd;->b:I

    iput-boolean v1, p0, Lcom/estrongs/android/view/cd;->c:Z

    iput-boolean v1, p0, Lcom/estrongs/android/view/cd;->a:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/cd;->ai:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/cd;->aj:Ljava/util/Map;

    iput-boolean v1, p0, Lcom/estrongs/android/view/cd;->ak:Z

    iput-boolean v1, p0, Lcom/estrongs/android/view/cd;->al:Z

    iput-boolean v1, p0, Lcom/estrongs/android/view/cd;->ao:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/view/cd;->ap:Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/view/cm;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/cm;-><init>(Lcom/estrongs/android/view/cd;)V

    iput-object v0, p0, Lcom/estrongs/android/view/cd;->f:Lcom/estrongs/android/widget/c;

    iget-object v0, p0, Lcom/estrongs/android/view/cd;->f:Lcom/estrongs/android/widget/c;

    new-instance v1, Lcom/estrongs/android/view/cn;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/cn;-><init>(Lcom/estrongs/android/view/cd;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/c;->a(Lcom/estrongs/android/widget/d;)V

    iget-object v0, p0, Lcom/estrongs/android/view/cd;->g:Lcom/estrongs/android/widget/HeaderGridView;

    iget-object v1, p0, Lcom/estrongs/android/view/cd;->f:Lcom/estrongs/android/widget/c;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/HeaderGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/estrongs/android/view/cd;->g:Lcom/estrongs/android/widget/HeaderGridView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/HeaderGridView;->setVerticalSpacing(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/cd;->g:Lcom/estrongs/android/widget/HeaderGridView;

    new-instance v1, Lcom/estrongs/android/view/ce;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/ce;-><init>(Lcom/estrongs/android/view/cd;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/HeaderGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/ui/pcs/r;->a()Lcom/estrongs/android/ui/pcs/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/r;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/view/cd;->ao:Z

    invoke-static {}, Lcom/estrongs/android/ui/pcs/r;->a()Lcom/estrongs/android/ui/pcs/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/r;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/cd;->ap:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Lcom/estrongs/fs/h;Z)Lcom/estrongs/fs/h;
    .locals 9

    const/4 v6, 0x0

    const/4 v8, 0x1

    if-nez p0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/m;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "need_210_thumbnail"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/estrongs/fs/h;->putExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :try_start_0
    sget-object v0, Lcom/estrongs/android/view/cd;->am:Ljava/util/Map;

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
    sget-object v0, Lcom/estrongs/android/view/cd;->am:Ljava/util/Map;

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p1, :cond_4

    move-object p0, v6

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/estrongs/android/view/cd;->an:Lcom/estrongs/android/util/TypedMap;

    if-nez v0, :cond_5

    new-instance v0, Lcom/estrongs/android/util/TypedMap;

    invoke-direct {v0}, Lcom/estrongs/android/util/TypedMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/view/cd;->an:Lcom/estrongs/android/util/TypedMap;

    sget-object v0, Lcom/estrongs/android/view/cd;->an:Lcom/estrongs/android/util/TypedMap;

    const-string v1, "from"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    sget-object v0, Lcom/estrongs/android/view/cd;->an:Lcom/estrongs/android/util/TypedMap;

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

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aL(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->as(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "pictures"

    :goto_1
    invoke-interface {p0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/estrongs/android/util/am;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/d;->m(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v1

    :goto_2
    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/estrongs/android/view/cd;->an:Lcom/estrongs/android/util/TypedMap;

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

    sget-object v1, Lcom/estrongs/android/view/cd;->am:Ljava/util/Map;

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

.method static synthetic a(Lcom/estrongs/android/view/cd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/view/cd;->a:Z

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/view/cd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/view/cd;->a:Z

    return p1
.end method

.method private as()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/estrongs/android/view/cd;->c:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v4, p0, Lcom/estrongs/android/view/cd;->c:Z

    const v0, 0x7f0a0100

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/cd;->k(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/cd;->U:Lcom/estrongs/android/util/TypedMap;

    const-string v1, "per_page"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    iget-object v0, p0, Lcom/estrongs/android/view/cd;->U:Lcom/estrongs/android/util/TypedMap;

    const-string v1, "page"

    iget v2, p0, Lcom/estrongs/android/view/cd;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/estrongs/android/view/cd;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    iget-object v0, p0, Lcom/estrongs/android/view/cd;->U:Lcom/estrongs/android/util/TypedMap;

    const-string v1, "load_next_page"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    iget-object v0, p0, Lcom/estrongs/android/view/cd;->v:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aG(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/view/cd;->U:Lcom/estrongs/android/util/TypedMap;

    const-string v2, "max_id"

    iget-object v0, p0, Lcom/estrongs/android/view/cd;->A:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/estrongs/android/view/cd;->A:Ljava/util/LinkedList;

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
    invoke-super {p0, v4}, Lcom/estrongs/android/view/aw;->b(Z)V

    iget-object v0, p0, Lcom/estrongs/android/view/cd;->U:Lcom/estrongs/android/util/TypedMap;

    const-string v1, "load_next_page"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    goto :goto_0
.end method

.method private at()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/ui/pcs/r;->a()Lcom/estrongs/android/ui/pcs/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/pcs/r;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/estrongs/android/view/cd;->ao:Z

    if-nez v2, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/estrongs/android/view/cd;->ao:Z

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/estrongs/android/ui/pcs/r;->a()Lcom/estrongs/android/ui/pcs/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/pcs/r;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/view/cd;->ap:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/estrongs/android/ui/pcs/r;->a()Lcom/estrongs/android/ui/pcs/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/pcs/r;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/view/cd;->ap:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/estrongs/android/view/cd;->ao:Z

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/estrongs/android/view/cd;->ao:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method static synthetic b(Lcom/estrongs/android/view/cd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/view/cd;->al:Z

    return v0
.end method

.method static synthetic c(Lcom/estrongs/android/view/cd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/view/cd;->ak:Z

    return v0
.end method

.method static synthetic d(Lcom/estrongs/android/view/cd;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/view/cd;->as()V

    return-void
.end method


# virtual methods
.method protected J()V
    .locals 2

    new-instance v0, Lcom/estrongs/android/view/co;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/co;-><init>(Lcom/estrongs/android/view/cd;)V

    iput-object v0, p0, Lcom/estrongs/android/view/cd;->d:Lcom/estrongs/android/view/co;

    iget-object v0, p0, Lcom/estrongs/android/view/cd;->g:Lcom/estrongs/android/widget/HeaderGridView;

    iget-object v1, p0, Lcom/estrongs/android/view/cd;->d:Lcom/estrongs/android/view/co;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/HeaderGridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/estrongs/android/view/cd;->g:Lcom/estrongs/android/widget/HeaderGridView;

    iget-object v1, p0, Lcom/estrongs/android/view/cd;->d:Lcom/estrongs/android/view/co;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/HeaderGridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected S()Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/cd;->U:Lcom/estrongs/android/util/TypedMap;

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

.method public a(I)V
    .locals 6

    const/4 v1, 0x3

    const/4 v0, 0x2

    const/4 v2, 0x1

    iput p1, p0, Lcom/estrongs/android/view/cd;->k:I

    iget-object v3, p0, Lcom/estrongs/android/view/cd;->ad:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/view/cd;->ad:Landroid/app/Activity;

    invoke-static {v4}, Lcom/estrongs/android/pop/utils/cl;->a(Landroid/content/Context;)Z

    move-result v4

    iget-object v5, p0, Lcom/estrongs/android/view/cd;->ad:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v2, :cond_1

    :goto_0
    if-eqz v4, :cond_3

    if-eqz v2, :cond_2

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/estrongs/android/view/cd;->g:Lcom/estrongs/android/widget/HeaderGridView;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/widget/HeaderGridView;->setNumColumns(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/cd;->f:Lcom/estrongs/android/widget/c;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/c;->notifyDataSetChanged()V

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int v3, v4, v3

    int-to-float v3, v3

    const v4, 0x41cb3333    # 25.4f

    mul-float/2addr v3, v4

    if-eqz v2, :cond_5

    const/high16 v2, 0x42960000    # 75.0f

    cmpg-float v2, v3, v2

    if-ltz v2, :cond_0

    const/high16 v0, 0x43160000    # 150.0f

    cmpl-float v0, v3, v0

    if-lez v0, :cond_4

    const/4 v0, 0x4

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    const/high16 v0, 0x41d80000    # 27.0f

    div-float v0, v3, v0

    const v1, 0x3e99999a    # 0.3f

    sub-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_1
.end method

.method protected a(Lcom/estrongs/fs/b/aj;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/fs/b/aj;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/estrongs/fs/b/aj;->b:Lcom/estrongs/fs/h;

    invoke-virtual {p0}, Lcom/estrongs/android/view/cd;->b()Lcom/estrongs/fs/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Lcom/estrongs/android/view/cd;->V:Z

    iput-boolean v2, p0, Lcom/estrongs/android/view/cd;->c:Z

    invoke-virtual {p0}, Lcom/estrongs/android/view/cd;->u()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/estrongs/android/view/cd;->c(Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/cd;->A:Ljava/util/LinkedList;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/cd;->b(Ljava/util/List;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_4

    iget v0, p0, Lcom/estrongs/android/view/cd;->b:I

    if-le v0, v3, :cond_1

    iget v0, p0, Lcom/estrongs/android/view/cd;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/estrongs/android/view/cd;->b:I

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/view/cd;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aO(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/estrongs/android/view/cd;->a:Z

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/cd;->ad:Landroid/app/Activity;

    const v1, 0x7f0b0377

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/utils/a;->a(Landroid/app/Activity;I)V

    :cond_2
    iput-boolean v3, p0, Lcom/estrongs/android/view/cd;->ak:Z

    :cond_3
    iput-boolean v2, p0, Lcom/estrongs/android/view/cd;->a:Z

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/view/cd;->ad:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/esclasses/ESActivity;

    new-instance v1, Lcom/estrongs/android/view/cl;

    invoke-direct {v1, p0, p2}, Lcom/estrongs/android/view/cl;-><init>(Lcom/estrongs/android/view/cd;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->a(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method protected a(Lcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)V
    .locals 3

    invoke-virtual {p0}, Lcom/estrongs/android/view/cd;->al()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aG(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aF(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->ar(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "album"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/am;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/d;->m(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object p1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/view/cd;->v:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/cd;->ai:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/view/cd;->v:Ljava/lang/String;

    iget v2, p0, Lcom/estrongs/android/view/cd;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/view/cd;->aj:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/view/cd;->v:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/estrongs/android/view/cd;->ak:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/cd;->ai:Ljava/util/Map;

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

    iget-object v0, p0, Lcom/estrongs/android/view/cd;->ai:Ljava/util/Map;

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/view/cd;->b:I

    iget-object v0, p0, Lcom/estrongs/android/view/cd;->aj:Ljava/util/Map;

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/view/cd;->ak:Z

    :goto_1
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/view/aw;->a(Lcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)V

    return-void

    :cond_2
    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->as(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pictures"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/am;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/d;->m(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object p1

    goto/16 :goto_0

    :cond_3
    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mine"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/am;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/d;->m(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object p1

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/view/cd;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/view/cd;->ak:Z

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

    iget v1, p0, Lcom/estrongs/android/view/cd;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/estrongs/android/view/cd;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    const-string v0, "max_id"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    goto :goto_1
.end method

.method public a_()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/view/aw;->a_()V

    sget-object v0, Lcom/estrongs/android/view/cd;->am:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public al()Z
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/view/cd;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aF(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public am()Z
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/view/cd;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aG(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected an()I
    .locals 1

    const v0, 0x7f030065

    return v0
.end method

.method protected ao()I
    .locals 1

    const v0, 0x7f030064

    return v0
.end method

.method public ap()V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/android/view/cd;->A:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :cond_0
    iget-object v3, p0, Lcom/estrongs/android/view/cd;->U:Lcom/estrongs/android/util/TypedMap;

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

    iget-object v0, p0, Lcom/estrongs/android/view/cd;->U:Lcom/estrongs/android/util/TypedMap;

    const-string v3, "page"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    iget-object v0, p0, Lcom/estrongs/android/view/cd;->U:Lcom/estrongs/android/util/TypedMap;

    const-string v3, "max_id"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    iput-boolean v2, p0, Lcom/estrongs/android/view/cd;->ak:Z

    invoke-virtual {p0, v1}, Lcom/estrongs/android/view/cd;->b(Z)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected b(Lcom/estrongs/android/d/m;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/cd;->a(Lcom/estrongs/android/d/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/estrongs/android/d/m;->f:Landroid/widget/ImageView;

    const v1, -0x5a5a5b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    invoke-super {p0, p1}, Lcom/estrongs/android/view/aw;->b(Lcom/estrongs/android/d/m;)V

    iget-object v0, p0, Lcom/estrongs/android/view/cd;->ad:Landroid/app/Activity;

    const/high16 v1, 0x10a0000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p1, Lcom/estrongs/android/d/m;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/estrongs/android/view/cd;->A:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    if-eqz p1, :cond_0

    iput-boolean v1, p0, Lcom/estrongs/android/view/cd;->ak:Z

    iput-boolean v0, p0, Lcom/estrongs/android/view/cd;->V:Z

    :cond_0
    iget-object v2, p0, Lcom/estrongs/android/view/cd;->w:Lcom/estrongs/fs/h;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/view/cd;->w:Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/am;->aG(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/view/cd;->p()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/estrongs/android/view/cd;->al:Z

    invoke-super {p0, p1}, Lcom/estrongs/android/view/aw;->b(Z)V

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

    invoke-virtual {p0}, Lcom/estrongs/android/view/cd;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0, p1}, Lcom/estrongs/android/view/aw;->c(Ljava/util/List;)V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/view/cd;->A:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/view/cd;->P:Lcom/estrongs/fs/i;

    if-eqz v1, :cond_2

    move v1, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v3, p0, Lcom/estrongs/android/view/cd;->P:Lcom/estrongs/fs/i;

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

    iget-object v0, p0, Lcom/estrongs/android/view/cd;->A:Ljava/util/LinkedList;

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

    iget-object v1, p0, Lcom/estrongs/android/view/cd;->A:Ljava/util/LinkedList;

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

    iget-object v0, p0, Lcom/estrongs/android/view/cd;->g:Lcom/estrongs/android/widget/HeaderGridView;

    iget-object v1, p0, Lcom/estrongs/android/view/cd;->f:Lcom/estrongs/android/widget/c;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/HeaderGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public d()I
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/view/cd;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/view/cd;->al()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/estrongs/android/view/aw;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/estrongs/android/view/aw;->d()I

    move-result v0

    goto :goto_0
.end method

.method public e()V
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/view/cd;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v1, v0, 0xa

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/estrongs/android/view/cd;->b:I

    invoke-super {p0}, Lcom/estrongs/android/view/aw;->e()V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public j()Lcom/estrongs/fs/h;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/cd;->w:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/cd;->N:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/view/cd;->f()Lcom/estrongs/fs/h;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/cd;->w:Lcom/estrongs/fs/h;

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/estrongs/android/util/am;->aL(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "SP://"

    :cond_2
    new-instance v1, Lcom/estrongs/fs/n;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/n;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/estrongs/android/view/cd;->a(Lcom/estrongs/fs/h;)V

    move-object v0, v1

    goto :goto_0
.end method

.method protected k(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public l()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "SP://"

    iget-object v1, p0, Lcom/estrongs/android/view/cd;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/estrongs/android/view/cd;->at()Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/view/cd;->J:Z

    iget-boolean v0, p0, Lcom/estrongs/android/view/cd;->J:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/estrongs/android/view/cd;->L:Z

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/estrongs/android/view/aw;->l()V

    :goto_1
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/cd;->v:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cd;->v:Ljava/lang/String;

    const-string v1, "@pcs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/view/cd;->at()Z

    iget-boolean v0, p0, Lcom/estrongs/android/view/cd;->ao:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/view/cd;->L:Z

    const-string v0, "SP://"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/cd;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public p()Z
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/view/cd;->q()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/view/cd;->al()Z

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

.method public q()Z
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/view/cd;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aN(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/view/cd;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->T(Ljava/lang/String;)Z

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

.method public r()Z
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/view/cd;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aO(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/view/cd;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->T(Ljava/lang/String;)Z

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
