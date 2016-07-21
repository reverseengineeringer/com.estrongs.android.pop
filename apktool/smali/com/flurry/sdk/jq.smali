.class public final Lcom/flurry/sdk/jq;
.super Lcom/flurry/sdk/kf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/kf",
        "<",
        "Lcom/flurry/sdk/kp;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/flurry/sdk/jq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/flurry/sdk/jq;->a:Lcom/flurry/sdk/jq;

    return-void
.end method

.method protected constructor <init>()V
    .locals 9

    const-class v0, Lcom/flurry/sdk/jq;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x5

    const-wide/16 v4, 0x1388

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v0, 0xb

    new-instance v8, Lcom/flurry/sdk/kd;

    invoke-direct {v8}, Lcom/flurry/sdk/kd;-><init>()V

    invoke-direct {v7, v0, v8}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/flurry/sdk/kf;-><init>(Ljava/lang/String;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/jq;
    .locals 2

    const-class v1, Lcom/flurry/sdk/jq;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/jq;->a:Lcom/flurry/sdk/jq;

    if-nez v0, :cond_0

    new-instance v0, Lcom/flurry/sdk/jq;

    invoke-direct {v0}, Lcom/flurry/sdk/jq;-><init>()V

    sput-object v0, Lcom/flurry/sdk/jq;->a:Lcom/flurry/sdk/jq;

    :cond_0
    sget-object v0, Lcom/flurry/sdk/jq;->a:Lcom/flurry/sdk/jq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b()V
    .locals 2

    const-class v1, Lcom/flurry/sdk/jq;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/jq;->a:Lcom/flurry/sdk/jq;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/jq;->a:Lcom/flurry/sdk/jq;

    invoke-virtual {v0}, Lcom/flurry/sdk/jq;->c()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/flurry/sdk/jq;->a:Lcom/flurry/sdk/jq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
