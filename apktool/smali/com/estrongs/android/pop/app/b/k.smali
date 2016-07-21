.class public Lcom/estrongs/android/pop/app/b/k;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/estrongs/android/scanner/h;

.field private b:Landroid/content/Context;

.field private c:Landroid/support/v7/widget/RecyclerView;

.field private d:Lcom/estrongs/android/pop/app/b/a/a;

.field private e:Lcom/estrongs/android/pop/app/b/x;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:J

.field private k:J

.field private l:I

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Landroid/os/Handler;

.field private t:Lcom/estrongs/android/scanner/g;

.field private u:Lcom/estrongs/android/pop/app/b/c;

.field private v:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/b/b;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private w:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/estrongs/android/pop/app/b/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/estrongs/android/pop/app/b/l;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/b/l;-><init>(Lcom/estrongs/android/pop/app/b/k;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->a:Lcom/estrongs/android/scanner/h;

    new-instance v0, Lcom/estrongs/android/pop/app/b/p;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/b/p;-><init>(Lcom/estrongs/android/pop/app/b/k;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->s:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/pop/app/b/q;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/b/q;-><init>(Lcom/estrongs/android/pop/app/b/k;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->t:Lcom/estrongs/android/scanner/g;

    new-instance v0, Lcom/estrongs/android/pop/app/b/r;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/b/r;-><init>(Lcom/estrongs/android/pop/app/b/k;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->u:Lcom/estrongs/android/pop/app/b/c;

    new-instance v0, Lcom/estrongs/android/pop/app/b/w;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/b/w;-><init>(Lcom/estrongs/android/pop/app/b/k;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->v:Ljava/util/Comparator;

    new-instance v0, Lcom/estrongs/android/pop/app/b/n;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/b/n;-><init>(Lcom/estrongs/android/pop/app/b/k;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->w:Ljava/util/Comparator;

    new-instance v0, Lcom/estrongs/android/pop/app/b/o;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/b/o;-><init>(Lcom/estrongs/android/pop/app/b/k;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->x:Ljava/util/Comparator;

    iput-object p1, p0, Lcom/estrongs/android/pop/app/b/k;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/b/k;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/b/k;->e()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/b/k;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/pop/app/b/k;->m:I

    return p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/b/k;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->s:Landroid/os/Handler;

    return-object v0
.end method

.method private a(JJ)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/b/b;",
            ">;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v6, 0x33

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/estrongs/android/pop/app/b/k;->a(JJI)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/k;->v:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private a(JJI)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI)",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/b/b;",
            ">;>;>;"
        }
    .end annotation

    const-wide/16 v4, 0x0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    packed-switch p5, :pswitch_data_0

    const-string v2, "net://"

    :goto_0
    iget-object v3, p0, Lcom/estrongs/android/pop/app/b/k;->b:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/estrongs/fs/impl/r/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/b/k;->w:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-wide v6, v4

    :cond_0
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/h;

    instance-of v3, v2, Lcom/estrongs/fs/impl/r/b;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/estrongs/fs/impl/r/b;

    iget-wide v4, v3, Lcom/estrongs/fs/impl/r/b;->timeForLog:J

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_6

    const-wide/16 v8, -0x1

    cmp-long v3, v4, v8

    if-eqz v3, :cond_6

    cmp-long v3, v4, p1

    if-gtz v3, :cond_6

    cmp-long v3, v4, p3

    if-ltz v3, :cond_6

    sub-long v4, p1, v4

    long-to-int v3, v4

    int-to-long v4, v3

    const-wide/32 v8, 0x36ee80

    cmp-long v4, v4, v8

    if-gtz v4, :cond_1

    const-wide/32 v4, 0xea60

    :goto_2
    int-to-long v8, v3

    rem-long/2addr v8, v4

    const-wide/16 v12, 0x0

    cmp-long v8, v8, v12

    if-nez v8, :cond_3

    int-to-long v8, v3

    div-long/2addr v8, v4

    :goto_3
    mul-long/2addr v4, v8

    long-to-int v3, v4

    int-to-long v4, v3

    cmp-long v3, v6, v4

    if-nez v3, :cond_4

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/estrongs/android/pop/app/b/b;

    iget-object v4, v3, Lcom/estrongs/android/pop/app/b/b;->i:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v3, Lcom/estrongs/android/pop/app/b/b;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v3, Lcom/estrongs/android/pop/app/b/b;->j:I

    move-wide v2, v6

    :goto_4
    move-wide v6, v2

    goto :goto_1

    :pswitch_0
    const-string v2, "net://"

    goto/16 :goto_0

    :pswitch_1
    const-string v2, "ftp://"

    goto/16 :goto_0

    :cond_1
    int-to-long v4, v3

    const-wide/32 v8, 0x5265c00

    cmp-long v4, v4, v8

    if-gtz v4, :cond_2

    const-wide/32 v4, 0x36ee80

    goto :goto_2

    :cond_2
    const-wide/32 v4, 0x5265c00

    goto :goto_2

    :cond_3
    int-to-long v8, v3

    div-long/2addr v8, v4

    const-wide/16 v12, 0x1

    add-long/2addr v8, v12

    goto :goto_3

    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move/from16 v0, p5

    invoke-virtual {p0, v2, v0}, Lcom/estrongs/android/pop/app/b/k;->a(Lcom/estrongs/fs/h;I)Lcom/estrongs/android/pop/app/b/b;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/util/Pair;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v2, v6, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v2, v4

    goto :goto_4

    :cond_5
    return-object v10

    :cond_6
    move-wide v2, v6

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/b/k;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/b/k;->o:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/b/k;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/b/k;->o:Z

    return v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/b/k;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/b/k;->p:Z

    return p1
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/b/k;)Lcom/estrongs/android/pop/app/b/x;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->e:Lcom/estrongs/android/pop/app/b/x;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/b/k;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/b/k;->n:Z

    return p1
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/b/k;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/b/k;)Lcom/estrongs/android/pop/app/b/a/a;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->d:Lcom/estrongs/android/pop/app/b/a/a;

    return-object v0
.end method

.method private e()V
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0xc8

    iput v0, p0, Lcom/estrongs/android/pop/app/b/k;->m:I

    new-instance v0, Lcom/estrongs/android/pop/app/b/a/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/k;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/app/b/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->d:Lcom/estrongs/android/pop/app/b/a/a;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->h:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->i:Ljava/util/List;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->c:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/estrongs/android/pop/app/b/y;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/k;->b:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/estrongs/android/pop/app/b/y;-><init>(Lcom/estrongs/android/pop/app/b/k;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/android/ui/c/a;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/b/k;->r:Z

    invoke-static {}, Lcom/estrongs/android/util/bk;->p()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/c/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/k;->d:Lcom/estrongs/android/pop/app/b/a/a;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a;->a(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->c:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/estrongs/android/pop/app/b/t;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/b/t;-><init>(Lcom/estrongs/android/pop/app/b/k;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    sget-boolean v0, Lcom/estrongs/android/pop/FexApplication;->a:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/estrongs/android/scanner/a;->a()Lcom/estrongs/android/scanner/a;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/k;->a:Lcom/estrongs/android/scanner/h;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/scanner/a;->a(Lcom/estrongs/android/scanner/h;)V

    :goto_1
    return-void

    :cond_1
    iput-boolean v3, p0, Lcom/estrongs/android/pop/app/b/k;->r:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/k;->d:Lcom/estrongs/android/pop/app/b/a/a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/estrongs/android/pop/app/b/u;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/b/u;-><init>(Lcom/estrongs/android/pop/app/b/k;)V

    invoke-static {v0}, Lcom/estrongs/android/pop/app/b/d;->a(Lcom/estrongs/android/pop/app/b/h;)V

    goto :goto_1
.end method

.method private f()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/b/k;->p:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/b/k;->p:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->d:Lcom/estrongs/android/pop/app/b/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->d:Lcom/estrongs/android/pop/app/b/a/a;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/b/a/a;->a(Z)V

    :cond_1
    new-instance v0, Lcom/estrongs/android/pop/app/b/v;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/b/v;-><init>(Lcom/estrongs/android/pop/app/b/k;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/b/v;->start()V

    goto :goto_0
.end method

.method static synthetic f(Lcom/estrongs/android/pop/app/b/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/b/k;->k()V

    return-void
.end method

.method private g()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/b/k;->j()J

    iput v1, p0, Lcom/estrongs/android/pop/app/b/k;->l:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/estrongs/android/pop/app/b/k;->m:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/b/k;->q:Z

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/b/k;->i()V

    return-void

    :cond_0
    const/16 v0, 0xc8

    goto :goto_0
.end method

.method static synthetic g(Lcom/estrongs/android/pop/app/b/k;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/b/k;->p:Z

    return v0
.end method

.method static synthetic h(Lcom/estrongs/android/pop/app/b/k;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->b:Landroid/content/Context;

    return-object v0
.end method

.method private h()V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/b/b;

    iget-object v1, v0, Lcom/estrongs/android/pop/app/b/b;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/fs/h;

    instance-of v4, v1, Lcom/estrongs/android/pop/app/b/i;

    if-eqz v4, :cond_1

    check-cast v1, Lcom/estrongs/android/pop/app/b/i;

    new-instance v4, Ljava/io/File;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/b/i;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v0, Lcom/estrongs/android/pop/app/b/b;->i:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v1, v0, Lcom/estrongs/android/pop/app/b/b;->i:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/estrongs/android/pop/app/b/b;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/k;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iget-boolean v1, v0, Lcom/estrongs/android/pop/app/b/b;->f:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/k;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/k;->f:Ljava/util/List;

    add-int/lit8 v4, v3, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/app/b/b;

    iget-boolean v4, v1, Lcom/estrongs/android/pop/app/b/b;->f:Z

    if-nez v4, :cond_4

    iput-boolean v6, v1, Lcom/estrongs/android/pop/app/b/b;->f:Z

    :cond_4
    if-nez v3, :cond_5

    iput-boolean v6, v1, Lcom/estrongs/android/pop/app/b/b;->h:Z

    iget-boolean v3, p0, Lcom/estrongs/android/pop/app/b/k;->r:Z

    iput-boolean v3, v1, Lcom/estrongs/android/pop/app/b/b;->k:Z

    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/k;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    if-eqz v3, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/k;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/k;->f:Ljava/util/List;

    add-int/lit8 v4, v3, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/app/b/b;

    iget-boolean v1, v1, Lcom/estrongs/android/pop/app/b/b;->f:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/k;->f:Ljava/util/List;

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/app/b/b;

    iput-boolean v6, v1, Lcom/estrongs/android/pop/app/b/b;->g:Z

    goto :goto_2

    :cond_7
    return-void
.end method

.method static synthetic i(Lcom/estrongs/android/pop/app/b/k;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->h:Ljava/util/List;

    return-object v0
.end method

.method private i()V
    .locals 14

    const/4 v9, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    const/4 v8, 0x0

    sget-boolean v0, Lcom/estrongs/android/pop/FexApplication;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/scanner/a;->a()Lcom/estrongs/android/scanner/a;

    move-result-object v1

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/b/k;->j:J

    iget-wide v4, p0, Lcom/estrongs/android/pop/app/b/k;->k:J

    iget v6, p0, Lcom/estrongs/android/pop/app/b/k;->m:I

    iget-object v7, p0, Lcom/estrongs/android/pop/app/b/k;->t:Lcom/estrongs/android/scanner/g;

    invoke-virtual/range {v1 .. v7}, Lcom/estrongs/android/scanner/a;->a(JJILcom/estrongs/android/scanner/g;)Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_e

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/b/b;

    iget-wide v0, v0, Lcom/estrongs/android/pop/app/b/b;->b:J

    iget-wide v4, p0, Lcom/estrongs/android/pop/app/b/k;->k:J

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/estrongs/android/pop/app/b/k;->a(JJ)Ljava/util/List;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v3, v1, [Landroid/util/Pair;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/k;->v:Ljava/util/Comparator;

    invoke-static {v3, v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v5

    if-gez v5, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    iget-wide v0, p0, Lcom/estrongs/android/pop/app/b/k;->k:J

    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/k;->t:Lcom/estrongs/android/scanner/g;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/app/b/d;->a(JLcom/estrongs/android/scanner/g;)Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_1
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/k;->x:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->v:Ljava/util/Comparator;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v8

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int v3, v2, v1

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v10, 0x36ee80

    cmp-long v1, v4, v10

    if-gez v1, :cond_5

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-float v1, v4

    mul-float/2addr v1, v13

    const v2, 0x476a6000    # 60000.0f

    div-float/2addr v1, v2

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v1, v4

    if-lt v1, v12, :cond_4

    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/k;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0f0002

    new-array v5, v12, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v8

    invoke-virtual {v2, v4, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    :goto_4
    move v5, v8

    move-object v2, v9

    :goto_5
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_8

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/estrongs/android/pop/app/b/b;

    if-nez v5, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/k;->i:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/k;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/k;->f:Ljava/util/List;

    iget-object v7, p0, Lcom/estrongs/android/pop/app/b/k;->f:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/app/b/b;

    iput-boolean v8, v1, Lcom/estrongs/android/pop/app/b/b;->g:Z

    :cond_3
    :goto_6
    iput-object v4, v2, Lcom/estrongs/android/pop/app/b/b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/k;->u:Lcom/estrongs/android/pop/app/b/c;

    iput-object v1, v2, Lcom/estrongs/android/pop/app/b/b;->l:Lcom/estrongs/android/pop/app/b/c;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/k;->g:Ljava/util/List;

    iget-object v7, v2, Lcom/estrongs/android/pop/app/b/b;->i:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_5

    :cond_4
    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/k;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0803bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_4

    :cond_5
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v10, 0x5265c00

    cmp-long v1, v4, v10

    if-gez v1, :cond_6

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-float v1, v4

    mul-float/2addr v1, v13

    const v2, 0x4a5bba00    # 3600000.0f

    div-float/2addr v1, v2

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v1, v4

    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/k;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0f0001

    new-array v5, v12, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v8

    invoke-virtual {v2, v4, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto/16 :goto_4

    :cond_6
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-float v1, v4

    mul-float/2addr v1, v13

    const v2, 0x4ca4cb80    # 8.64E7f

    div-float/2addr v1, v2

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v1, v4

    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/k;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v4, 0x7f0f0000

    new-array v5, v12, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v8

    invoke-virtual {v2, v4, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto/16 :goto_4

    :cond_7
    iput-boolean v12, v2, Lcom/estrongs/android/pop/app/b/b;->f:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/k;->i:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_8
    if-eqz v2, :cond_9

    iput-boolean v12, v2, Lcom/estrongs/android/pop/app/b/b;->g:Z

    :cond_9
    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/k;->f:Ljava/util/List;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v2, v3

    goto/16 :goto_3

    :cond_a
    move v2, v8

    :cond_b
    if-nez v2, :cond_c

    iput-boolean v12, p0, Lcom/estrongs/android/pop/app/b/k;->q:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->d:Lcom/estrongs/android/pop/app/b/a/a;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->d:Lcom/estrongs/android/pop/app/b/a/a;

    invoke-virtual {v0, v8}, Lcom/estrongs/android/pop/app/b/a/a;->a(Z)V

    :cond_c
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->f:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/b/b;

    iput-boolean v12, v0, Lcom/estrongs/android/pop/app/b/b;->h:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->f:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/b/b;

    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/b/k;->r:Z

    iput-boolean v1, v0, Lcom/estrongs/android/pop/app/b/b;->k:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->f:Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/k;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/b/b;

    iget-wide v0, v0, Lcom/estrongs/android/pop/app/b/b;->b:J

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/b/k;->k:J

    :cond_d
    return-void

    :cond_e
    move-object v0, v9

    goto/16 :goto_1
.end method

.method private j()J
    .locals 2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/b/k;->j:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/b/k;->j:J

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/b/k;->k:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/b/k;->j:J

    return-wide v0
.end method

.method static synthetic j(Lcom/estrongs/android/pop/app/b/k;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/b/k;->n:Z

    return v0
.end method

.method private k()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->c:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/android/ui/c/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    sget v1, Lcom/estrongs/android/ui/c/a;->a:I

    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/k;->d:Lcom/estrongs/android/pop/app/b/a/a;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/b/a/a;->getItemCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->d:Lcom/estrongs/android/pop/app/b/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/b/a/a;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method static synthetic k(Lcom/estrongs/android/pop/app/b/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/b/k;->g()V

    return-void
.end method

.method static synthetic l(Lcom/estrongs/android/pop/app/b/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/b/k;->h()V

    return-void
.end method

.method static synthetic m(Lcom/estrongs/android/pop/app/b/k;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->c:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic n(Lcom/estrongs/android/pop/app/b/k;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/b/k;->q:Z

    return v0
.end method

.method static synthetic o(Lcom/estrongs/android/pop/app/b/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/b/k;->f()V

    return-void
.end method

.method static synthetic p(Lcom/estrongs/android/pop/app/b/k;)I
    .locals 2

    iget v0, p0, Lcom/estrongs/android/pop/app/b/k;->l:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/estrongs/android/pop/app/b/k;->l:I

    return v0
.end method

.method static synthetic q(Lcom/estrongs/android/pop/app/b/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/b/k;->i()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/estrongs/fs/h;I)Lcom/estrongs/android/pop/app/b/b;
    .locals 6

    const v5, 0x7f0803c2

    const/16 v4, 0x33

    instance-of v0, p1, Lcom/estrongs/fs/impl/r/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/estrongs/android/pop/app/b/b;

    invoke-direct {v1}, Lcom/estrongs/android/pop/app/b/b;-><init>()V

    move-object v0, p1

    check-cast v0, Lcom/estrongs/fs/impl/r/b;

    iget-wide v2, v0, Lcom/estrongs/fs/impl/r/b;->timeForLog:J

    iput-wide v2, v1, Lcom/estrongs/android/pop/app/b/b;->b:J

    iget-object v0, v1, Lcom/estrongs/android/pop/app/b/b;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/estrongs/android/pop/app/b/b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v1, Lcom/estrongs/android/pop/app/b/b;->j:I

    packed-switch p2, :pswitch_data_0

    const-string v0, "net://"

    iput-object v0, v1, Lcom/estrongs/android/pop/app/b/b;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/estrongs/android/pop/app/b/b;->d:Ljava/lang/String;

    iput v4, v1, Lcom/estrongs/android/pop/app/b/b;->c:I

    :goto_1
    move-object v0, v1

    goto :goto_0

    :pswitch_0
    const-string v0, "net://"

    iput-object v0, v1, Lcom/estrongs/android/pop/app/b/b;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/estrongs/android/pop/app/b/b;->d:Ljava/lang/String;

    iput v4, v1, Lcom/estrongs/android/pop/app/b/b;->c:I

    goto :goto_1

    :pswitch_1
    const-string v0, "ftp://"

    iput-object v0, v1, Lcom/estrongs/android/pop/app/b/b;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0803c1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/estrongs/android/pop/app/b/b;->d:Ljava/lang/String;

    const/16 v0, 0x34

    iput v0, v1, Lcom/estrongs/android/pop/app/b/b;->c:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a()V
    .locals 2

    invoke-static {}, Lcom/estrongs/android/scanner/a;->a()Lcom/estrongs/android/scanner/a;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/k;->a:Lcom/estrongs/android/scanner/h;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/scanner/a;->b(Lcom/estrongs/android/scanner/h;)V

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/app/b/x;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/b/k;->e:Lcom/estrongs/android/pop/app/b/x;

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/b/k;->o:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/b/k;->n:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/b/k;->o:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/b/k;->p:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->e:Lcom/estrongs/android/pop/app/b/x;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->e:Lcom/estrongs/android/pop/app/b/x;

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/b/x;->a()V

    :cond_2
    new-instance v0, Lcom/estrongs/android/pop/app/b/s;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/pop/app/b/s;-><init>(Lcom/estrongs/android/pop/app/b/k;Z)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/b/s;->start()V

    goto :goto_0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->g:Ljava/util/List;

    return-object v0
.end method

.method public c()V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/b/k;->n:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    check-cast v0, Lcom/estrongs/android/pop/app/b/i;

    iput-boolean v2, v0, Lcom/estrongs/android/pop/app/b/i;->a:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/b/k;->k()V

    return-void
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/k;->h:Ljava/util/List;

    return-object v0
.end method
