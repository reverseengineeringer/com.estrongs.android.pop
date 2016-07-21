.class Lcom/dianxinos/dxservice/stat/ad;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/dianxinos/dxservice/stat/ac;

.field private final b:Lcom/dianxinos/dxservice/a/h;

.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/dianxinos/dxservice/stat/ac;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/dianxinos/dxservice/stat/ad;->a:Lcom/dianxinos/dxservice/stat/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/dianxinos/dxservice/a/h;->a(Landroid/content/Context;)Lcom/dianxinos/dxservice/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/ad;->b:Lcom/dianxinos/dxservice/a/h;

    iput-object p2, p0, Lcom/dianxinos/dxservice/stat/ad;->c:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/dianxinos/dxservice/a/f;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/dianxinos/dxservice/stat/u;->b()[B

    move-result-object v0

    invoke-static {p3, v0}, Lcom/dianxinos/dxservice/stat/s;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/dianxinos/dxservice/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/dianxinos/dxservice/stat/u;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/dianxinos/dxservice/stat/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/dianxinos/dxservice/a/c;->c:Z

    if-eqz v1, :cond_0

    const-string v1, "stat.EventReporter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pub = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "stat.EventReporter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cipher = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "a"

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "b"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    sget-object v3, Lcom/dianxinos/dxservice/stat/aa;->a:Ljava/util/TimeZone;

    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    if-eq v2, v3, :cond_1

    const-string v2, "c"

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v2, "d"

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/dianxinos/dxservice/stat/aa;->a(J)J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "e"

    invoke-static {}, Lcom/dianxinos/dxservice/stat/aa;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "f"

    iget-object v2, p0, Lcom/dianxinos/dxservice/stat/ad;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/dianxinos/DXStatService/a/a;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "g"

    iget-object v2, p0, Lcom/dianxinos/dxservice/stat/ad;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/dianxinos/DXStatService/stat/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "c"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/dianxinos/dxservice/stat/u;->b()[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/dianxinos/dxservice/stat/s;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private a(I)[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x3

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x0

    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/dianxinos/dxservice/stat/ad;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/dianxinos/DXStatService/stat/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/dianxinos/dxservice/a/c;->d:Z

    if-eqz v1, :cond_0

    const-string v1, "stat.EventReporter"

    const-string v2, "No lc info!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/dianxinos/dxservice/stat/ad;->b:Lcom/dianxinos/dxservice/a/h;

    invoke-virtual {v1}, Lcom/dianxinos/dxservice/a/h;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/dxservice/stat/ad;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/dianxinos/dxservice/core/c;->a(Landroid/content/Context;)Lcom/dianxinos/dxservice/core/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dianxinos/dxservice/core/c;->b()Z

    sget-boolean v2, Lcom/dianxinos/dxservice/a/c;->d:Z

    if-eqz v2, :cond_2

    const-string v2, "stat.EventReporter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Try to upload with token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data"

    iget-object v3, p0, Lcom/dianxinos/dxservice/stat/ad;->c:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/dianxinos/dxservice/a/c;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-direct {p0, v4, p1}, Lcom/dianxinos/dxservice/stat/ad;->a(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dianxinos/dxservice/stat/aa;->a(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {p2}, Lcom/dianxinos/dxservice/stat/aa;->a(Ljava/lang/String;)[B

    move-result-object v5

    array-length v6, v4

    array-length v7, v5

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x4

    new-array v6, v6, [B

    array-length v7, v4

    invoke-direct {p0, v7}, Lcom/dianxinos/dxservice/stat/ad;->a(I)[B

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-static {v7, v8, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v7, 0x0

    const/4 v8, 0x4

    array-length v9, v4

    invoke-static {v4, v7, v6, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v7, 0x0

    array-length v4, v4

    add-int/lit8 v4, v4, 0x4

    array-length v8, v5

    invoke-static {v5, v7, v6, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, Landroid/util/Pair;

    const-string v5, "data"

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    new-instance v0, Lcom/dianxinos/dxservice/a/f;

    iget-object v4, p0, Lcom/dianxinos/dxservice/stat/ad;->c:Landroid/content/Context;

    const-string v5, "DXCoreService"

    const-string v6, "stat.EventReporter"

    invoke-direct {v0, v4, v2, v5, v6}, Lcom/dianxinos/dxservice/a/f;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "token"

    invoke-direct {p0, v0, v2, v1}, Lcom/dianxinos/dxservice/stat/ad;->a(Lcom/dianxinos/dxservice/a/f;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/dianxinos/dxservice/a/f;->b(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    invoke-static {v0}, Lcom/dianxinos/dxservice/stat/al;->b(I)Z

    move-result v1

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v1, :cond_0

    const-string v1, "stat.EventReporter"

    const-string v2, "Failed to connect the stat server."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    sget-boolean v2, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v2, :cond_0

    const-string v2, "stat.EventReporter"

    const-string v3, "Can not generate the header."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_1
    move-exception v1

    sget-boolean v2, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v2, :cond_0

    const-string v2, "stat.EventReporter"

    const-string v3, "Can not zip the data."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_3
    sget-boolean v1, Lcom/dianxinos/dxservice/a/c;->d:Z

    if-eqz v1, :cond_0

    const-string v1, "stat.EventReporter"

    const-string v2, "Successfully upload the content."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
