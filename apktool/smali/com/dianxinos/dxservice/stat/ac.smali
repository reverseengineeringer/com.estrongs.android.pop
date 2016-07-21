.class final Lcom/dianxinos/dxservice/stat/ac;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/dianxinos/dxservice/stat/ae;

.field private final c:Lcom/dianxinos/dxservice/stat/ad;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dianxinos/dxservice/stat/ac;->a:Landroid/content/Context;

    new-instance v0, Lcom/dianxinos/dxservice/stat/ae;

    iget-object v1, p0, Lcom/dianxinos/dxservice/stat/ac;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/dianxinos/dxservice/stat/ae;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/ac;->b:Lcom/dianxinos/dxservice/stat/ae;

    new-instance v0, Lcom/dianxinos/dxservice/stat/ad;

    iget-object v1, p0, Lcom/dianxinos/dxservice/stat/ac;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/dianxinos/dxservice/stat/ad;-><init>(Lcom/dianxinos/dxservice/stat/ac;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/ac;->c:Lcom/dianxinos/dxservice/stat/ad;

    return-void
.end method

.method private a(Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b()Z
    .locals 14

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/ac;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/dxservice/a/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x4

    new-array v8, v0, [Ljava/lang/String;

    const-string v0, "d"

    aput-object v0, v8, v5

    const-string v0, "i"

    aput-object v0, v8, v4

    const/4 v0, 0x2

    const-string v1, "r"

    aput-object v1, v8, v0

    const/4 v0, 0x3

    const-string v1, "o"

    aput-object v1, v8, v0

    const/16 v3, 0x3e8

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    array-length v10, v8

    move v6, v5

    move-object v2, v7

    :goto_0
    if-ge v6, v10, :cond_0

    aget-object v11, v8, v6

    if-gtz v3, :cond_2

    :cond_0
    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/dianxinos/dxservice/a/c;->c:Z

    if-eqz v0, :cond_1

    const-string v0, "stat.EventReporter"

    const-string v1, "There is no data to upload!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v4

    :goto_1
    return v0

    :cond_2
    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/ac;->a:Landroid/content/Context;

    invoke-virtual {v0, v11, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pk"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move-object v0, v2

    :cond_3
    :goto_2
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move-object v2, v0

    goto :goto_0

    :cond_4
    if-nez v2, :cond_d

    move-object v0, v1

    :goto_3
    iget-object v2, p0, Lcom/dianxinos/dxservice/stat/ac;->b:Lcom/dianxinos/dxservice/stat/ae;

    invoke-virtual {v2, v11}, Lcom/dianxinos/dxservice/stat/ae;->a(Ljava/lang/String;)Lcom/dianxinos/dxservice/stat/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dianxinos/dxservice/stat/v;->c()Z

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual {v2}, Lcom/dianxinos/dxservice/stat/v;->a()V

    :try_start_0
    invoke-virtual {v2, v3}, Lcom/dianxinos/dxservice/stat/v;->b(I)Lcom/dianxinos/dxservice/stat/w;

    move-result-object v12

    if-eqz v12, :cond_e

    invoke-virtual {v12}, Lcom/dianxinos/dxservice/stat/w;->a()Lorg/json/JSONArray;

    move-result-object v13

    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-lez v13, :cond_e

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v12}, Lcom/dianxinos/dxservice/stat/w;->a()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    sub-int v1, v3, v1

    invoke-interface {v9, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    invoke-virtual {v2}, Lcom/dianxinos/dxservice/stat/v;->b()V

    move v3, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/dianxinos/dxservice/stat/v;->b()V

    throw v0

    :cond_5
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/dxservice/stat/w;

    :try_start_1
    invoke-virtual {v0}, Lcom/dianxinos/dxservice/stat/w;->a()Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/dianxinos/dxservice/stat/ac;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    sget-boolean v4, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v4, :cond_6

    const-string v4, "stat.EventReporter"

    const-string v5, "Failed to add dumpResult!"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/ac;->c:Lcom/dianxinos/dxservice/stat/ad;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/dianxinos/dxservice/stat/ad;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/dianxinos/dxservice/stat/al;->b(I)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/dianxinos/dxservice/stat/ac;->b:Lcom/dianxinos/dxservice/stat/ae;

    invoke-virtual {v3, v0}, Lcom/dianxinos/dxservice/stat/ae;->a(Ljava/lang/String;)Lcom/dianxinos/dxservice/stat/v;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dianxinos/dxservice/stat/v;->a()V

    :try_start_2
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/dxservice/stat/w;

    invoke-virtual {v0}, Lcom/dianxinos/dxservice/stat/w;->b()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/dianxinos/dxservice/stat/v;->a(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v3}, Lcom/dianxinos/dxservice/stat/v;->b()V

    goto :goto_6

    :catchall_1
    move-exception v0

    invoke-virtual {v3}, Lcom/dianxinos/dxservice/stat/v;->b()V

    throw v0

    :cond_8
    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/ac;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/dxservice/stat/aa;->b(Landroid/content/Context;)V

    :cond_9
    :goto_7
    invoke-static {v1}, Lcom/dianxinos/dxservice/stat/al;->b(I)Z

    move-result v0

    goto/16 :goto_1

    :cond_a
    invoke-static {v1}, Lcom/dianxinos/dxservice/stat/al;->a(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/ac;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/dxservice/stat/aa;->d(Landroid/content/Context;)V

    goto :goto_7

    :cond_b
    sget-boolean v0, Lcom/dianxinos/dxservice/a/c;->d:Z

    if-eqz v0, :cond_c

    const-string v0, "stat.EventReporter"

    const-string v1, "Network is unavilable!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    move v0, v5

    goto/16 :goto_1

    :cond_d
    move-object v0, v2

    goto/16 :goto_3

    :cond_e
    move v1, v3

    goto/16 :goto_4
.end method


# virtual methods
.method public a()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/dianxinos/dxservice/stat/ac;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/dianxinos/dxservice/stat/aa;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dianxinos/dxservice/stat/ac;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/dianxinos/dxservice/stat/aa;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/dianxinos/dxservice/stat/ac;->b()Z

    move-result v0

    :cond_0
    return v0
.end method
