.class public Lcom/duapps/ad/inmobi/c;
.super Lcom/duapps/ad/entity/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/duapps/ad/entity/a/a",
        "<",
        "Lcom/duapps/ad/entity/a/c;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/duapps/ad/base/am;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/duapps/ad/base/am",
            "<",
            "Lcom/duapps/ad/inmobi/IMDataModel;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/inmobi/IMData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;IJI)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/duapps/ad/entity/a/a;-><init>(Landroid/content/Context;IJ)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/inmobi/c;->j:Ljava/util/List;

    new-instance v0, Lcom/duapps/ad/inmobi/d;

    invoke-direct {v0, p0}, Lcom/duapps/ad/inmobi/d;-><init>(Lcom/duapps/ad/inmobi/c;)V

    iput-object v0, p0, Lcom/duapps/ad/inmobi/c;->a:Lcom/duapps/ad/base/am;

    iput p5, p0, Lcom/duapps/ad/inmobi/c;->i:I

    return-void
.end method

.method static synthetic a(Lcom/duapps/ad/inmobi/c;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/inmobi/c;->j:Ljava/util/List;

    return-object v0
.end method

.method private a(Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/duapps/ad/inmobi/c;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/t;->a(Landroid/content/Context;)Lcom/duapps/ad/base/t;

    move-result-object v0

    iget v1, p0, Lcom/duapps/ad/inmobi/c;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/duapps/ad/inmobi/c;->a:Lcom/duapps/ad/base/am;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/duapps/ad/base/t;->a(ILjava/lang/String;Ljava/lang/String;Lcom/duapps/ad/base/am;)V

    return-void
.end method

.method static synthetic b(Lcom/duapps/ad/inmobi/c;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/inmobi/c;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/duapps/ad/inmobi/c;)I
    .locals 1

    iget v0, p0, Lcom/duapps/ad/inmobi/c;->g:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/duapps/ad/inmobi/c;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/ap;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "InMobiCacheManager"

    const-string v1, "no net"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/duapps/ad/inmobi/c;->i:I

    if-nez v0, :cond_2

    const-string v0, "InMobiCacheManager"

    const-string v1, "cacheSize is zero"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/duapps/ad/inmobi/c;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/ag;->a(Landroid/content/Context;)Lcom/duapps/ad/base/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duapps/ad/base/ag;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InMobiCacheManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImCache inId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/duapps/ad/inmobi/c;->i:I

    invoke-virtual {p0}, Lcom/duapps/ad/inmobi/c;->c()I

    move-result v2

    sub-int/2addr v1, v2

    if-lez v1, :cond_0

    iget-boolean v2, p0, Lcom/duapps/ad/inmobi/c;->c:Z

    if-nez v2, :cond_0

    iput-boolean v4, p0, Lcom/duapps/ad/inmobi/c;->c:Z

    iput-boolean v4, p0, Lcom/duapps/ad/inmobi/c;->e:Z

    invoke-direct {p0, v0, v1}, Lcom/duapps/ad/inmobi/c;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 2

    if-gez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/duapps/ad/inmobi/c;->i:I

    iget-object v0, p0, Lcom/duapps/ad/inmobi/c;->f:Landroid/content/Context;

    iget v1, p0, Lcom/duapps/ad/inmobi/c;->g:I

    invoke-static {v0, v1}, Lcom/duapps/ad/base/r;->c(Landroid/content/Context;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/duapps/ad/inmobi/c;->d:J

    goto :goto_0
.end method

.method public b()Lcom/duapps/ad/entity/a/c;
    .locals 5

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/duapps/ad/inmobi/c;->j:Ljava/util/List;

    monitor-enter v3

    move-object v0, v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/duapps/ad/inmobi/c;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v0, p0, Lcom/duapps/ad/inmobi/c;->j:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/inmobi/IMData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/duapps/ad/inmobi/IMData;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    move-object v2, v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/duapps/ad/inmobi/c;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/r;->n(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/duapps/ad/inmobi/c;->a()V

    :cond_2
    iget-object v3, p0, Lcom/duapps/ad/inmobi/c;->f:Landroid/content/Context;

    if-nez v2, :cond_3

    const-string v0, "FAIL"

    :goto_0
    iget v4, p0, Lcom/duapps/ad/inmobi/c;->g:I

    invoke-static {v3, v0, v4}, Lcom/duapps/ad/stats/b;->c(Landroid/content/Context;Ljava/lang/String;I)V

    if-nez v2, :cond_4

    move-object v0, v1

    :goto_1
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    const-string v0, "OK"

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/duapps/ad/inmobi/l;

    iget-object v1, p0, Lcom/duapps/ad/inmobi/c;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/duapps/ad/inmobi/c;->h:Lcom/duapps/ad/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/duapps/ad/inmobi/l;-><init>(Landroid/content/Context;Lcom/duapps/ad/inmobi/IMData;Lcom/duapps/ad/d;)V

    goto :goto_1
.end method

.method public c()I
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/duapps/ad/inmobi/c;->j:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/duapps/ad/inmobi/c;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/inmobi/IMData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/duapps/ad/inmobi/IMData;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1
.end method

.method public synthetic d()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/duapps/ad/inmobi/c;->b()Lcom/duapps/ad/entity/a/c;

    move-result-object v0

    return-object v0
.end method
