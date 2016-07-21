.class public Lcom/dianxinos/library/notify/a;
.super Ljava/lang/Object;


# static fields
.field private static final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dianxinos/library/notify/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:J

.field public f:J

.field public g:I

.field public h:I

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/dianxinos/library/notify/a;->i:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dianxinos/library/notify/a;->j:Z

    return-void
.end method

.method public static a()Lcom/dianxinos/library/notify/a;
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    sget-object v1, Lcom/dianxinos/library/notify/a;->i:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/dianxinos/library/notify/a;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    sget-object v0, Lcom/dianxinos/library/notify/a;->i:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/library/notify/a;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    new-instance v0, Lcom/dianxinos/library/notify/a;

    invoke-direct {v0}, Lcom/dianxinos/library/notify/a;-><init>()V

    :cond_1
    iput-boolean v3, v0, Lcom/dianxinos/library/notify/a;->j:Z

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/dianxinos/library/notify/a;->i:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lcom/dianxinos/library/notify/a;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x18

    if-ge v0, v2, :cond_0

    sget-object v0, Lcom/dianxinos/library/notify/a;->i:Ljava/util/List;

    sget-object v2, Lcom/dianxinos/library/notify/a;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v2, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/dianxinos/library/notify/a;->j:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/library/notify/a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/library/notify/a;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/library/notify/a;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/library/notify/a;->d:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dianxinos/library/notify/a;->e:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dianxinos/library/notify/a;->f:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/dianxinos/library/notify/a;->g:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/dianxinos/library/notify/a;->h:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized finalize()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/dianxinos/library/notify/a;->j:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/dianxinos/library/notify/a;->b()V

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
