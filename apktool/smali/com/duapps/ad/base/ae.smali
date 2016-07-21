.class public Lcom/duapps/ad/base/ae;
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


# static fields
.field private static final i:Ljava/lang/String;


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

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/entity/AdData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/duapps/ad/base/ae;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duapps/ad/base/ae;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJ)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/duapps/ad/entity/a/a;-><init>(Landroid/content/Context;IJ)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/base/ae;->j:Ljava/util/List;

    new-instance v0, Lcom/duapps/ad/base/af;

    invoke-direct {v0, p0}, Lcom/duapps/ad/base/af;-><init>(Lcom/duapps/ad/base/ae;)V

    iput-object v0, p0, Lcom/duapps/ad/base/ae;->a:Lcom/duapps/ad/base/am;

    return-void
.end method

.method static synthetic a(Lcom/duapps/ad/base/ae;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/base/ae;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/duapps/ad/base/ae;Ljava/util/List;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1}, Lcom/duapps/ad/base/ae;->a(Ljava/util/List;)Ljava/util/List;

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

    iget-object v3, p0, Lcom/duapps/ad/base/ae;->f:Landroid/content/Context;

    iget-object v4, v0, Lcom/duapps/ad/entity/AdData;->c:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/duapps/ad/base/ap;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method static synthetic b(Lcom/duapps/ad/base/ae;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/base/ae;->j:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/duapps/ad/base/ae;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/base/ae;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/duapps/ad/base/ae;)I
    .locals 1

    iget v0, p0, Lcom/duapps/ad/base/ae;->g:I

    return v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/duapps/ad/base/ae;->i:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/duapps/ad/base/ae;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/ap;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/duapps/ad/base/ae;->i:Ljava/lang/String;

    const-string v1, "no net"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/duapps/ad/base/ae;->c()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/duapps/ad/base/ae;->i:Ljava/lang/String;

    const-string v1, "no need refresh"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/duapps/ad/base/ae;->c:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/duapps/ad/base/ae;->i:Ljava/lang/String;

    const-string v1, "ad request refreshing"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/duapps/ad/base/ae;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/t;->a(Landroid/content/Context;)Lcom/duapps/ad/base/t;

    move-result-object v0

    iget v1, p0, Lcom/duapps/ad/base/ae;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/duapps/ad/base/ae;->a:Lcom/duapps/ad/base/am;

    invoke-virtual {v0, v1, v2, v3}, Lcom/duapps/ad/base/t;->a(IILcom/duapps/ad/base/am;)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/duapps/ad/base/ae;->f:Landroid/content/Context;

    iget v1, p0, Lcom/duapps/ad/base/ae;->g:I

    invoke-static {v0, v1}, Lcom/duapps/ad/base/r;->a(Landroid/content/Context;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/duapps/ad/base/ae;->d:J

    return-void
.end method

.method public b()Lcom/duapps/ad/entity/a/c;
    .locals 5

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/duapps/ad/base/ae;->j:Ljava/util/List;

    monitor-enter v3

    move-object v0, v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/duapps/ad/base/ae;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v0, p0, Lcom/duapps/ad/base/ae;->j:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/AdData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/duapps/ad/entity/AdData;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    move-object v2, v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v3, Lcom/duapps/ad/base/ae;->i:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DL poll title-> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v2, :cond_3

    iget-object v0, v2, Lcom/duapps/ad/entity/AdData;->b:Ljava/lang/String;

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duapps/ad/base/ae;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/r;->n(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/duapps/ad/base/ae;->a()V

    :cond_2
    iget-object v3, p0, Lcom/duapps/ad/base/ae;->f:Landroid/content/Context;

    if-nez v2, :cond_4

    const-string v0, "FAIL"

    :goto_1
    iget v4, p0, Lcom/duapps/ad/base/ae;->g:I

    invoke-static {v3, v0, v4}, Lcom/duapps/ad/stats/b;->b(Landroid/content/Context;Ljava/lang/String;I)V

    if-nez v2, :cond_5

    move-object v0, v1

    :goto_2
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    const-string v0, "null"

    goto :goto_0

    :cond_4
    const-string v0, "OK"

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/duapps/ad/entity/f;

    iget-object v1, p0, Lcom/duapps/ad/base/ae;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/duapps/ad/base/ae;->h:Lcom/duapps/ad/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/duapps/ad/entity/f;-><init>(Landroid/content/Context;Lcom/duapps/ad/entity/AdData;Lcom/duapps/ad/d;)V

    goto :goto_2
.end method

.method public c()I
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/duapps/ad/base/ae;->j:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/base/ae;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/AdData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/duapps/ad/entity/AdData;->a()Z

    move-result v4

    if-nez v4, :cond_1

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
    :try_start_1
    iget-object v0, v0, Lcom/duapps/ad/entity/AdData;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/duapps/ad/base/ae;->f:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/duapps/ad/base/ap;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1
.end method

.method public synthetic d()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/duapps/ad/base/ae;->b()Lcom/duapps/ad/entity/a/c;

    move-result-object v0

    return-object v0
.end method
