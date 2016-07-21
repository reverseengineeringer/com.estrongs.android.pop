.class public Lcom/dianxinos/library/notify/d/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/dianxinos/library/notify/d/b;


# instance fields
.field private b:Lcom/dianxinos/library/notify/network/n;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/dianxinos/library/notify/network/n;->a()Lcom/dianxinos/library/notify/network/n;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/library/notify/d/b;->b:Lcom/dianxinos/library/notify/network/n;

    return-void
.end method

.method public static declared-synchronized a()Lcom/dianxinos/library/notify/d/b;
    .locals 2

    const-class v1, Lcom/dianxinos/library/notify/d/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dianxinos/library/notify/d/b;->a:Lcom/dianxinos/library/notify/d/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/dianxinos/library/notify/d/b;

    invoke-direct {v0}, Lcom/dianxinos/library/notify/d/b;-><init>()V

    sput-object v0, Lcom/dianxinos/library/notify/d/b;->a:Lcom/dianxinos/library/notify/d/b;

    :cond_0
    sget-object v0, Lcom/dianxinos/library/notify/d/b;->a:Lcom/dianxinos/library/notify/d/b;
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
.method public a(Lcom/dianxinos/library/notify/d/d;)V
    .locals 3

    iget-object v0, p0, Lcom/dianxinos/library/notify/d/b;->b:Lcom/dianxinos/library/notify/network/n;

    invoke-static {}, Lcom/dianxinos/library/notify/d/e;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/dianxinos/library/notify/d/c;

    invoke-direct {v2, p0, p1}, Lcom/dianxinos/library/notify/d/c;-><init>(Lcom/dianxinos/library/notify/d/b;Lcom/dianxinos/library/notify/d/d;)V

    invoke-virtual {v0, v1, v2}, Lcom/dianxinos/library/notify/network/n;->a(Ljava/lang/String;Lcom/dianxinos/library/notify/network/k;)V

    return-void
.end method
