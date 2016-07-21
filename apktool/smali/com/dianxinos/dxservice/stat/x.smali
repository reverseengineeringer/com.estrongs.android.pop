.class public final Lcom/dianxinos/dxservice/stat/x;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/Long;


# instance fields
.field private b:Lcom/dianxinos/dxservice/stat/af;

.field private final c:Lcom/dianxinos/dxservice/stat/ae;

.field private final d:Lcom/dianxinos/dxservice/stat/ac;

.field private final e:Lcom/dianxinos/dxservice/stat/ab;

.field private final f:Landroid/content/Context;

.field private g:Ljava/lang/Runnable;

.field private h:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/dianxinos/dxservice/stat/t;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/dianxinos/dxservice/stat/z;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/dianxinos/dxservice/stat/x;->a:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/dianxinos/dxservice/stat/y;

    invoke-direct {v0, p0}, Lcom/dianxinos/dxservice/stat/y;-><init>(Lcom/dianxinos/dxservice/stat/x;)V

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/x;->g:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/x;->h:Ljava/util/Queue;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/x;->i:Ljava/util/Map;

    iput-object p1, p0, Lcom/dianxinos/dxservice/stat/x;->f:Landroid/content/Context;

    new-instance v0, Lcom/dianxinos/dxservice/stat/ae;

    iget-object v1, p0, Lcom/dianxinos/dxservice/stat/x;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/dianxinos/dxservice/stat/ae;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/x;->c:Lcom/dianxinos/dxservice/stat/ae;

    new-instance v0, Lcom/dianxinos/dxservice/stat/ac;

    iget-object v1, p0, Lcom/dianxinos/dxservice/stat/x;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/dianxinos/dxservice/stat/ac;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/x;->d:Lcom/dianxinos/dxservice/stat/ac;

    new-instance v0, Lcom/dianxinos/dxservice/stat/ab;

    iget-object v1, p0, Lcom/dianxinos/dxservice/stat/x;->f:Landroid/content/Context;

    const-string v2, "sk"

    invoke-direct {v0, v1, v2}, Lcom/dianxinos/dxservice/stat/ab;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/x;->e:Lcom/dianxinos/dxservice/stat/ab;

    return-void
.end method

.method private a(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 4

    if-nez p2, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Number;->byteValue()B

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_3
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_4
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_5
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_0

    :cond_6
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_0

    :cond_7
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_8

    check-cast p1, Ljava/math/BigInteger;

    check-cast p2, Ljava/math/BigInteger;

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_0

    :cond_8
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/math/BigDecimal;

    check-cast p2, Ljava/math/BigDecimal;

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    goto/16 :goto_0
.end method

.method private static a(ILjava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/16 v0, 0xa

    if-ne v0, p0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const/16 v0, 0x9

    if-ne v0, p0, :cond_2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_0

    :cond_2
    if-nez p0, :cond_3

    invoke-static {p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    if-ne v0, p0, :cond_4

    invoke-static {p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    if-ne v0, p0, :cond_5

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_5
    const/4 v0, 0x3

    if-ne v0, p0, :cond_6

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_6
    const/4 v0, 0x4

    if-ne v0, p0, :cond_7

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_0

    :cond_7
    const/4 v0, 0x5

    if-ne v0, p0, :cond_8

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_0

    :cond_8
    const/4 v0, 0x6

    if-ne v0, p0, :cond_9

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_0

    :cond_9
    const/4 v0, 0x7

    if-ne v0, p0, :cond_0

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_0
.end method

.method private static a(ILjava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xa

    if-ne v0, p0, :cond_0

    new-instance v0, Ljava/lang/String;

    check-cast p1, [B

    check-cast p1, [B

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/dianxinos/dxservice/stat/x;)Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/x;->h:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic a(Lcom/dianxinos/dxservice/stat/x;Ljava/util/Queue;)Ljava/util/Queue;
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/dxservice/stat/x;->h:Ljava/util/Queue;

    return-object p1
.end method

.method private a(Lcom/dianxinos/dxservice/stat/t;)Z
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/x;->h:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/x;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/dianxinos/dxservice/a/e;->b(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/x;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/dianxinos/dxservice/a/e;->a(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/dianxinos/dxservice/stat/t;Ljava/lang/String;)Z
    .locals 6

    invoke-direct {p0, p2, p1}, Lcom/dianxinos/dxservice/stat/x;->a(Ljava/lang/String;Lcom/dianxinos/dxservice/stat/t;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v1, Lcom/dianxinos/dxservice/a/c;->d:Z

    if-eqz v1, :cond_0

    const-string v1, "stat.EventDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Push to db "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " success!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "d"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/dianxinos/dxservice/stat/x;->e:Lcom/dianxinos/dxservice/stat/ab;

    invoke-virtual {p1}, Lcom/dianxinos/dxservice/stat/t;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/dianxinos/dxservice/stat/ab;->a(Ljava/lang/String;J)V

    :cond_1
    invoke-virtual {p0}, Lcom/dianxinos/dxservice/stat/x;->c()Z

    :cond_2
    :goto_0
    return v0

    :cond_3
    sget-boolean v1, Lcom/dianxinos/dxservice/a/c;->d:Z

    if-eqz v1, :cond_2

    const-string v1, "stat.EventDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Push event:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " db failed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/dianxinos/dxservice/stat/x;Lcom/dianxinos/dxservice/stat/t;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/dianxinos/dxservice/stat/x;->b(Lcom/dianxinos/dxservice/stat/t;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Lcom/dianxinos/dxservice/stat/t;)Z
    .locals 13

    const/4 v12, 0x1

    const/4 v4, 0x0

    const/16 v11, 0x9

    const/4 v9, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/x;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/dxservice/stat/u;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    move v0, v9

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/dianxinos/dxservice/stat/u;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/dianxinos/dxservice/stat/t;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/dianxinos/dxservice/stat/s;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v5}, Lcom/dianxinos/dxservice/stat/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/dianxinos/dxservice/stat/t;->d()I

    move-result v0

    if-ne v12, v0, :cond_3

    invoke-virtual {p2}, Lcom/dianxinos/dxservice/stat/t;->c()I

    move-result v0

    if-ne v11, v0, :cond_13

    invoke-virtual {p2}, Lcom/dianxinos/dxservice/stat/t;->g()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/dianxinos/dxservice/stat/t;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    move-object v2, v0

    :goto_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/dianxinos/dxservice/stat/s;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v1, :cond_1

    const-string v1, "stat.EventDispatcher"

    const-string v2, "Failed to push the event."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move v0, v9

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {p2}, Lcom/dianxinos/dxservice/stat/t;->c()I

    move-result v0

    invoke-virtual {p2}, Lcom/dianxinos/dxservice/stat/t;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/dianxinos/dxservice/stat/x;->a(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    move-object v2, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x3

    invoke-virtual {p2}, Lcom/dianxinos/dxservice/stat/t;->d()I

    move-result v2

    if-ne v0, v2, :cond_9

    invoke-virtual {p2}, Lcom/dianxinos/dxservice/stat/t;->g()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Lcom/dianxinos/dxservice/stat/t;->c()I

    move-result v0

    invoke-virtual {p2}, Lcom/dianxinos/dxservice/stat/t;->g()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/dianxinos/dxservice/stat/x;->a(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v4

    move-object v4, v0

    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/x;->c:Lcom/dianxinos/dxservice/stat/ae;

    invoke-virtual {v0, p1}, Lcom/dianxinos/dxservice/stat/ae;->a(Ljava/lang/String;)Lcom/dianxinos/dxservice/stat/v;

    move-result-object v0

    iget-object v2, p0, Lcom/dianxinos/dxservice/stat/x;->f:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual {v2, p1, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v7, "pk"

    const/4 v8, 0x0

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "pkv"

    const/4 v10, 0x0

    invoke-interface {v2, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v0}, Lcom/dianxinos/dxservice/stat/v;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v8, :cond_5

    :try_start_2
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual {v0, v7}, Lcom/dianxinos/dxservice/stat/v;->a(I)V

    :cond_5
    if-eqz v8, :cond_6

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    :cond_6
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v8, "pk"

    invoke-interface {v2, v8, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v5, "pkv"

    add-int/lit8 v7, v7, 0x1

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_7
    invoke-virtual {p2}, Lcom/dianxinos/dxservice/stat/t;->d()I

    move-result v2

    if-ne v12, v2, :cond_12

    invoke-virtual {p2}, Lcom/dianxinos/dxservice/stat/t;->i()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v6}, Lcom/dianxinos/dxservice/stat/v;->a(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {p2}, Lcom/dianxinos/dxservice/stat/t;->c()I

    move-result v4

    if-ne v11, v4, :cond_d

    invoke-virtual {p2}, Lcom/dianxinos/dxservice/stat/t;->c()I

    move-result v4

    invoke-static {v4, v2}, Lcom/dianxinos/dxservice/stat/x;->a(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    check-cast v3, Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-direct {p0, v7, v5}, Lcom/dianxinos/dxservice/stat/x;->a(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Lcom/dianxinos/dxservice/stat/v;->b()V

    throw v1

    :cond_8
    invoke-virtual {p2}, Lcom/dianxinos/dxservice/stat/t;->h()Ljava/lang/String;

    move-result-object v0

    move-object v3, v4

    move-object v4, v0

    goto/16 :goto_3

    :cond_9
    invoke-virtual {p2}, Lcom/dianxinos/dxservice/stat/t;->g()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p2}, Lcom/dianxinos/dxservice/stat/t;->c()I

    move-result v0

    invoke-virtual {p2}, Lcom/dianxinos/dxservice/stat/t;->g()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/dianxinos/dxservice/stat/x;->a(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/dianxinos/dxservice/stat/s;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v4

    move-object v4, v0

    goto/16 :goto_3

    :cond_a
    invoke-virtual {p2}, Lcom/dianxinos/dxservice/stat/t;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/dianxinos/dxservice/stat/s;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    move-object v3, v4

    move-object v4, v0

    goto/16 :goto_3

    :cond_b
    :try_start_4
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :cond_c
    invoke-virtual {p2}, Lcom/dianxinos/dxservice/stat/t;->c()I

    move-result v3

    invoke-static {v3, v2}, Lcom/dianxinos/dxservice/stat/x;->a(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_5
    invoke-virtual {p2}, Lcom/dianxinos/dxservice/stat/t;->i()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/dianxinos/dxservice/stat/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v1

    :try_start_5
    invoke-virtual {v0}, Lcom/dianxinos/dxservice/stat/v;->b()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move v0, v1

    goto/16 :goto_0

    :cond_d
    :try_start_6
    invoke-virtual {p2}, Lcom/dianxinos/dxservice/stat/t;->c()I

    move-result v3

    invoke-static {v3, v2}, Lcom/dianxinos/dxservice/stat/x;->a(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {p2}, Lcom/dianxinos/dxservice/stat/t;->g()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {p2}, Lcom/dianxinos/dxservice/stat/t;->g()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    :goto_6
    invoke-direct {p0, v2, v3}, Lcom/dianxinos/dxservice/stat/x;->a(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {p2}, Lcom/dianxinos/dxservice/stat/t;->c()I

    move-result v3

    invoke-static {v3, v2}, Lcom/dianxinos/dxservice/stat/x;->a(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_e
    invoke-virtual {p2}, Lcom/dianxinos/dxservice/stat/t;->c()I

    move-result v3

    invoke-virtual {p2}, Lcom/dianxinos/dxservice/stat/t;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/dianxinos/dxservice/stat/x;->a(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    goto :goto_6

    :cond_f
    invoke-virtual {p2}, Lcom/dianxinos/dxservice/stat/t;->c()I

    move-result v2

    if-ne v11, v2, :cond_10

    invoke-virtual {p2}, Lcom/dianxinos/dxservice/stat/t;->c()I

    move-result v2

    invoke-static {v2, v3}, Lcom/dianxinos/dxservice/stat/x;->a(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_7
    invoke-virtual {p2}, Lcom/dianxinos/dxservice/stat/t;->c()I

    move-result v2

    invoke-virtual {p2}, Lcom/dianxinos/dxservice/stat/t;->d()I

    move-result v3

    invoke-virtual {p2}, Lcom/dianxinos/dxservice/stat/t;->i()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {p2}, Lcom/dianxinos/dxservice/stat/t;->f()I

    move-result v8

    invoke-virtual/range {v0 .. v8}, Lcom/dianxinos/dxservice/stat/v;->a(Ljava/lang/String;IILjava/lang/String;Ljava/util/Date;Ljava/lang/String;II)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v1

    :try_start_7
    invoke-virtual {v0}, Lcom/dianxinos/dxservice/stat/v;->b()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move v0, v1

    goto/16 :goto_0

    :cond_10
    :try_start_8
    invoke-virtual {p2}, Lcom/dianxinos/dxservice/stat/t;->h()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {p2}, Lcom/dianxinos/dxservice/stat/t;->h()Ljava/lang/String;

    move-result-object v2

    :goto_8
    move-object v4, v2

    goto :goto_7

    :cond_11
    invoke-virtual {p2}, Lcom/dianxinos/dxservice/stat/t;->c()I

    move-result v2

    invoke-virtual {p2}, Lcom/dianxinos/dxservice/stat/t;->g()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/dianxinos/dxservice/stat/x;->a(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_12
    invoke-virtual {p2}, Lcom/dianxinos/dxservice/stat/t;->c()I

    move-result v2

    invoke-virtual {p2}, Lcom/dianxinos/dxservice/stat/t;->d()I

    move-result v3

    invoke-virtual {p2}, Lcom/dianxinos/dxservice/stat/t;->i()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {p2}, Lcom/dianxinos/dxservice/stat/t;->f()I

    move-result v8

    invoke-virtual/range {v0 .. v8}, Lcom/dianxinos/dxservice/stat/v;->a(Ljava/lang/String;IILjava/lang/String;Ljava/util/Date;Ljava/lang/String;II)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v1

    :try_start_9
    invoke-virtual {v0}, Lcom/dianxinos/dxservice/stat/v;->b()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    move v0, v1

    goto/16 :goto_0

    :cond_13
    move-object v3, v4

    goto/16 :goto_3
.end method

.method static synthetic b(Lcom/dianxinos/dxservice/stat/x;)Lcom/dianxinos/dxservice/stat/ac;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/x;->d:Lcom/dianxinos/dxservice/stat/ac;

    return-object v0
.end method

.method private b(Lcom/dianxinos/dxservice/stat/t;)Z
    .locals 3

    sget-boolean v0, Lcom/dianxinos/dxservice/a/c;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "stat.EventDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HandleEvent :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dianxinos/dxservice/stat/t;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Lcom/dianxinos/dxservice/stat/t;->b()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/x;->e:Lcom/dianxinos/dxservice/stat/ab;

    invoke-virtual {p1}, Lcom/dianxinos/dxservice/stat/t;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/dxservice/stat/ab;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/dianxinos/dxservice/stat/t;->f()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0}, Lcom/dianxinos/dxservice/stat/t;->b(I)V

    const-string v0, "i"

    invoke-direct {p0, p1, v0}, Lcom/dianxinos/dxservice/stat/x;->a(Lcom/dianxinos/dxservice/stat/t;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const-string v0, "d"

    invoke-direct {p0, p1, v0}, Lcom/dianxinos/dxservice/stat/x;->a(Lcom/dianxinos/dxservice/stat/t;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/dianxinos/dxservice/stat/t;->b()I

    move-result v1

    if-ne v0, v1, :cond_3

    const-string v0, "i"

    invoke-direct {p0, p1, v0}, Lcom/dianxinos/dxservice/stat/x;->a(Lcom/dianxinos/dxservice/stat/t;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/dianxinos/dxservice/stat/x;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/x;->i:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/Long;
    .locals 1

    sget-object v0, Lcom/dianxinos/dxservice/stat/x;->a:Ljava/lang/Long;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    sget-boolean v0, Lcom/dianxinos/dxservice/a/c;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "stat.EventDispatcher"

    const-string v1, "Start!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public a(Lcom/dianxinos/dxservice/stat/t;Z)Z
    .locals 3

    sget-boolean v0, Lcom/dianxinos/dxservice/a/c;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "stat.EventDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DispatchEvent:event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/x;->b:Lcom/dianxinos/dxservice/stat/af;

    if-nez v0, :cond_1

    new-instance v0, Lcom/dianxinos/dxservice/stat/af;

    iget-object v1, p0, Lcom/dianxinos/dxservice/stat/x;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/dianxinos/dxservice/stat/af;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/x;->b:Lcom/dianxinos/dxservice/stat/af;

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/x;->b:Lcom/dianxinos/dxservice/stat/af;

    invoke-virtual {v0}, Lcom/dianxinos/dxservice/stat/af;->a()V

    :cond_1
    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lcom/dianxinos/dxservice/stat/x;->a(Lcom/dianxinos/dxservice/stat/t;)Z

    move-result v0

    :goto_0
    return v0

    :cond_2
    invoke-direct {p0, p1}, Lcom/dianxinos/dxservice/stat/x;->b(Lcom/dianxinos/dxservice/stat/t;)Z

    move-result v0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    sget-boolean v0, Lcom/dianxinos/dxservice/a/c;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "stat.EventDispatcher"

    const-string v1, "Shutdown!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/x;->b:Lcom/dianxinos/dxservice/stat/af;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/x;->b:Lcom/dianxinos/dxservice/stat/af;

    invoke-virtual {v0}, Lcom/dianxinos/dxservice/stat/af;->b()V

    :cond_1
    return-void
.end method

.method public c()Z
    .locals 4

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/x;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/dianxinos/dxservice/a/e;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/x;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    new-instance v0, Lcom/dianxinos/dxservice/stat/z;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dianxinos/dxservice/stat/z;-><init>(Lcom/dianxinos/dxservice/stat/x;Lcom/dianxinos/dxservice/stat/y;)V

    iget-object v1, p0, Lcom/dianxinos/dxservice/stat/x;->i:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Lcom/dianxinos/dxservice/a/e;->a(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method
