.class public Lcom/dianxinos/library/b/b/a/d;
.super Ljava/lang/Object;


# static fields
.field private static final f:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/dianxinos/library/b/b/a/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Object;

.field public c:Lcom/dianxinos/library/b/b/d/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dianxinos/library/b/b/d/p",
            "<*>;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/String;

.field public e:[B

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/dianxinos/library/b/b/a/d;->f:Ljava/util/LinkedList;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dianxinos/library/b/b/a/d;->g:Z

    return-void
.end method

.method public static a()Lcom/dianxinos/library/b/b/a/d;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/dianxinos/library/b/b/a/d;->f:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/dianxinos/library/b/b/a/d;->f:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v0, Lcom/dianxinos/library/b/b/a/d;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/library/b/b/a/d;

    sget-object v2, Lcom/dianxinos/library/b/b/a/d;->f:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    new-instance v0, Lcom/dianxinos/library/b/b/a/d;

    invoke-direct {v0}, Lcom/dianxinos/library/b/b/a/d;-><init>()V

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/dianxinos/library/b/b/a/d;->g:Z

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
.method public b()V
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/dianxinos/library/b/b/a/d;->g:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dianxinos/library/b/b/a/d;->g:Z

    iput-object v1, p0, Lcom/dianxinos/library/b/b/a/d;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/dianxinos/library/b/b/a/d;->b:Ljava/lang/Object;

    iput-object v1, p0, Lcom/dianxinos/library/b/b/a/d;->c:Lcom/dianxinos/library/b/b/d/p;

    iput-object v1, p0, Lcom/dianxinos/library/b/b/a/d;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/dianxinos/library/b/b/a/d;->e:[B

    sget-object v1, Lcom/dianxinos/library/b/b/a/d;->f:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dianxinos/library/b/b/a/d;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v2, 0x100

    if-ge v0, v2, :cond_0

    sget-object v0, Lcom/dianxinos/library/b/b/a/d;->f:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v1

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/dianxinos/library/b/b/a/d;->b()V

    return-void
.end method
