.class public Lcom/dianxinos/lockscreen/c/j;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/concurrent/ThreadFactory;

.field private static final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/dianxinos/lockscreen/c/j;


# instance fields
.field private d:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dianxinos/lockscreen/c/k;

    invoke-direct {v0}, Lcom/dianxinos/lockscreen/c/k;-><init>()V

    sput-object v0, Lcom/dianxinos/lockscreen/c/j;->a:Ljava/util/concurrent/ThreadFactory;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/dianxinos/lockscreen/c/j;->b:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x3

    const/16 v3, 0x1e

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/dianxinos/lockscreen/c/j;->b:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lcom/dianxinos/lockscreen/c/j;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/dianxinos/lockscreen/c/j;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static declared-synchronized a()Lcom/dianxinos/lockscreen/c/j;
    .locals 2

    const-class v1, Lcom/dianxinos/lockscreen/c/j;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dianxinos/lockscreen/c/j;->c:Lcom/dianxinos/lockscreen/c/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/dianxinos/lockscreen/c/j;

    invoke-direct {v0}, Lcom/dianxinos/lockscreen/c/j;-><init>()V

    sput-object v0, Lcom/dianxinos/lockscreen/c/j;->c:Lcom/dianxinos/lockscreen/c/j;

    :cond_0
    sget-object v0, Lcom/dianxinos/lockscreen/c/j;->c:Lcom/dianxinos/lockscreen/c/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/c/j;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
