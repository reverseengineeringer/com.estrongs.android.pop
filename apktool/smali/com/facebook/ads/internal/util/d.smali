.class public Lcom/facebook/ads/internal/util/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/util/d;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/util/d;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/util/d;->c:Ljava/util/Map;

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/facebook/ads/internal/dto/b;)J
    .locals 4

    const-wide/16 v0, -0x3e8

    sget-object v2, Lcom/facebook/ads/internal/util/d;->a:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/facebook/ads/internal/util/d;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    :pswitch_0
    return-wide v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/internal/util/d$1;->a:[I

    invoke-virtual {p1}, Lcom/facebook/ads/internal/dto/b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    const-wide/16 v0, 0x3a98

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static a(JLcom/facebook/ads/internal/dto/e;)V
    .locals 4

    sget-object v0, Lcom/facebook/ads/internal/util/d;->a:Ljava/util/Map;

    invoke-static {p2}, Lcom/facebook/ads/internal/util/d;->d(Lcom/facebook/ads/internal/dto/e;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/facebook/ads/internal/dto/e;)V
    .locals 2

    sget-object v0, Lcom/facebook/ads/internal/util/d;->c:Ljava/util/Map;

    invoke-static {p1}, Lcom/facebook/ads/internal/util/d;->d(Lcom/facebook/ads/internal/dto/e;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/facebook/ads/internal/dto/e;)Z
    .locals 8

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/facebook/ads/internal/util/d;->d(Lcom/facebook/ads/internal/dto/e;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/facebook/ads/internal/util/d;->b:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/facebook/ads/internal/util/d;->b:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/facebook/ads/internal/dto/e;->b()Lcom/facebook/ads/internal/dto/b;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/ads/internal/util/d;->a(Ljava/lang/String;Lcom/facebook/ads/internal/dto/b;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    cmp-long v0, v4, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static b(Lcom/facebook/ads/internal/dto/e;)V
    .locals 4

    sget-object v0, Lcom/facebook/ads/internal/util/d;->b:Ljava/util/Map;

    invoke-static {p0}, Lcom/facebook/ads/internal/util/d;->d(Lcom/facebook/ads/internal/dto/e;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static c(Lcom/facebook/ads/internal/dto/e;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/facebook/ads/internal/util/d;->c:Ljava/util/Map;

    invoke-static {p0}, Lcom/facebook/ads/internal/util/d;->d(Lcom/facebook/ads/internal/dto/e;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static d(Lcom/facebook/ads/internal/dto/e;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const-string v2, "%s:%s:%s:%d:%d:%d"

    const/4 v0, 0x6

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/dto/e;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/dto/e;->b()Lcom/facebook/ads/internal/dto/b;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    iget-object v4, p0, Lcom/facebook/ads/internal/dto/e;->e:Lcom/facebook/ads/internal/e;

    aput-object v4, v3, v0

    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/facebook/ads/internal/dto/e;->c()Lcom/facebook/ads/AdSize;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/facebook/ads/internal/dto/e;->c()Lcom/facebook/ads/AdSize;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/facebook/ads/internal/dto/e;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/internal/dto/e;->c()Lcom/facebook/ads/AdSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AdSize;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/internal/dto/e;->c()Lcom/facebook/ads/AdSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/AdSize;->getWidth()I

    move-result v1

    goto :goto_1
.end method
