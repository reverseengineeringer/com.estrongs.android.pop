.class public Lcom/duapps/ad/offerwall/a/b;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/duapps/ad/base/am;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/duapps/ad/base/am",
            "<",
            "Lcom/duapps/ad/entity/AdModel;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Landroid/content/Context;

.field private d:Lcom/duapps/ad/offerwall/a/a;

.field private e:Z

.field private f:Z

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/entity/AdData;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/os/Handler;

.field private i:Lcom/duapps/ad/entity/AdModel;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/duapps/ad/offerwall/a/a;)V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/duapps/ad/offerwall/a/b;-><init>(ILandroid/content/Context;Lcom/duapps/ad/offerwall/a/a;I)V

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Lcom/duapps/ad/offerwall/a/a;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/offerwall/a/b;->g:Ljava/util/List;

    new-instance v0, Lcom/duapps/ad/offerwall/a/c;

    invoke-direct {v0, p0}, Lcom/duapps/ad/offerwall/a/c;-><init>(Lcom/duapps/ad/offerwall/a/b;)V

    iput-object v0, p0, Lcom/duapps/ad/offerwall/a/b;->a:Lcom/duapps/ad/base/am;

    iput p1, p0, Lcom/duapps/ad/offerwall/a/b;->b:I

    iput-object p2, p0, Lcom/duapps/ad/offerwall/a/b;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/duapps/ad/offerwall/a/b;->d:Lcom/duapps/ad/offerwall/a/a;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/duapps/ad/offerwall/a/b;->h:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/duapps/ad/offerwall/a/b;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/b;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/duapps/ad/offerwall/a/b;Lcom/duapps/ad/entity/AdModel;)Lcom/duapps/ad/entity/AdModel;
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/offerwall/a/b;->i:Lcom/duapps/ad/entity/AdModel;

    return-object p1
.end method

.method static synthetic a(Lcom/duapps/ad/offerwall/a/b;Ljava/util/List;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1}, Lcom/duapps/ad/offerwall/a/b;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/entity/AdData;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/entity/AdData;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/AdData;

    iget-object v3, p0, Lcom/duapps/ad/offerwall/a/b;->c:Landroid/content/Context;

    iget-object v4, v0, Lcom/duapps/ad/entity/AdData;->c:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/duapps/ad/base/ap;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method static synthetic a(Lcom/duapps/ad/offerwall/a/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/duapps/ad/offerwall/a/b;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/duapps/ad/offerwall/a/b;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/b;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/duapps/ad/offerwall/a/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/duapps/ad/offerwall/a/b;->f:Z

    return p1
.end method

.method static synthetic c(Lcom/duapps/ad/offerwall/a/b;)I
    .locals 1

    iget v0, p0, Lcom/duapps/ad/offerwall/a/b;->b:I

    return v0
.end method

.method static synthetic d(Lcom/duapps/ad/offerwall/a/b;)Lcom/duapps/ad/offerwall/a/a;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/b;->d:Lcom/duapps/ad/offerwall/a/a;

    return-object v0
.end method

.method static synthetic e(Lcom/duapps/ad/offerwall/a/b;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/b;->h:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 5

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/duapps/ad/offerwall/a/b;->g:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/duapps/ad/offerwall/a/b;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/AdData;

    iget-object v0, v0, Lcom/duapps/ad/entity/AdData;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/duapps/ad/offerwall/a/b;->c:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/duapps/ad/base/ap;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    monitor-exit v2

    return v1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(I)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duapps/ad/offerwall/a/b;->f:Z

    iget-object v1, p0, Lcom/duapps/ad/offerwall/a/b;->g:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/b;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duapps/ad/base/t;->a(Landroid/content/Context;)Lcom/duapps/ad/base/t;

    move-result-object v0

    iget v1, p0, Lcom/duapps/ad/offerwall/a/b;->b:I

    iget-object v2, p0, Lcom/duapps/ad/offerwall/a/b;->a:Lcom/duapps/ad/base/am;

    const/16 v3, 0xa

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/duapps/ad/base/t;->b(IILcom/duapps/ad/base/am;I)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/duapps/ad/offerwall/a/b;->e:Z

    return v0
.end method

.method public c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/entity/AdData;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/duapps/ad/offerwall/a/b;->g:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/duapps/ad/offerwall/a/b;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/duapps/ad/offerwall/a/b;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()Z
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/b;->i:Lcom/duapps/ad/entity/AdModel;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/b;->i:Lcom/duapps/ad/entity/AdModel;

    iget v0, v0, Lcom/duapps/ad/entity/AdModel;->g:I

    if-gtz v0, :cond_2

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/duapps/ad/offerwall/a/b;->i:Lcom/duapps/ad/entity/AdModel;

    iget v2, v2, Lcom/duapps/ad/entity/AdModel;->f:I

    if-nez v2, :cond_3

    move v2, v1

    :goto_2
    div-int v3, v0, v2

    rem-int/2addr v0, v2

    if-eqz v0, :cond_4

    add-int/lit8 v0, v3, 0x1

    :goto_3
    iget-object v2, p0, Lcom/duapps/ad/offerwall/a/b;->i:Lcom/duapps/ad/entity/AdModel;

    iget v2, v2, Lcom/duapps/ad/entity/AdModel;->e:I

    if-lt v2, v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/b;->i:Lcom/duapps/ad/entity/AdModel;

    iget v0, v0, Lcom/duapps/ad/entity/AdModel;->g:I

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/duapps/ad/offerwall/a/b;->i:Lcom/duapps/ad/entity/AdModel;

    iget v2, v2, Lcom/duapps/ad/entity/AdModel;->f:I

    goto :goto_2

    :cond_4
    move v0, v3

    goto :goto_3
.end method

.method public e()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duapps/ad/offerwall/a/b;->d:Lcom/duapps/ad/offerwall/a/a;

    iget-object v1, p0, Lcom/duapps/ad/offerwall/a/b;->g:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
