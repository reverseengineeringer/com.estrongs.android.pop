.class public abstract Lcom/dianxinos/library/notify/network/n;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/dianxinos/library/notify/network/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/dianxinos/library/notify/network/n;->a:Lcom/dianxinos/library/notify/network/n;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/dianxinos/library/notify/network/n;
    .locals 2

    const-class v1, Lcom/dianxinos/library/notify/network/n;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dianxinos/library/notify/network/n;->a:Lcom/dianxinos/library/notify/network/n;

    if-nez v0, :cond_0

    new-instance v0, Lcom/dianxinos/library/notify/network/o;

    invoke-direct {v0}, Lcom/dianxinos/library/notify/network/o;-><init>()V

    sput-object v0, Lcom/dianxinos/library/notify/network/n;->a:Lcom/dianxinos/library/notify/network/n;

    :cond_0
    sget-object v0, Lcom/dianxinos/library/notify/network/n;->a:Lcom/dianxinos/library/notify/network/n;
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
.method public a(Ljava/lang/String;Lcom/dianxinos/library/notify/network/k;)V
    .locals 9

    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v8}, Lcom/dianxinos/library/notify/network/n;->a(Ljava/lang/String;Lcom/dianxinos/library/notify/network/k;JJI)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/dianxinos/library/notify/network/k;JJI)V
    .locals 11

    const/4 v9, 0x5

    const/4 v10, 0x3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v10}, Lcom/dianxinos/library/notify/network/n;->a(Ljava/lang/String;Lcom/dianxinos/library/notify/network/k;JJIII)V

    return-void
.end method

.method public abstract a(Ljava/lang/String;Lcom/dianxinos/library/notify/network/k;JJIII)V
.end method
