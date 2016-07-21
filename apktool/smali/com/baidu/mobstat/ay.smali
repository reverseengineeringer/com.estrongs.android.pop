.class public Lcom/baidu/mobstat/ay;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/baidu/mobstat/ay;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/mobstat/ay;

    invoke-direct {v0}, Lcom/baidu/mobstat/ay;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/ay;->a:Lcom/baidu/mobstat/ay;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 2

    new-instance v0, Lcom/baidu/mobstat/bc;

    invoke-direct {v0, p1}, Lcom/baidu/mobstat/bc;-><init>(Lorg/json/JSONObject;)V

    iget-boolean v1, v0, Lcom/baidu/mobstat/bc;->a:Z

    sput-boolean v1, Lcom/baidu/mobstat/ba;->c:Z

    iget-object v1, v0, Lcom/baidu/mobstat/bc;->b:Ljava/lang/String;

    sput-object v1, Lcom/baidu/mobstat/ba;->d:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/baidu/mobstat/bc;->c:Z

    sput-boolean v0, Lcom/baidu/mobstat/ba;->e:Z

    return-void
.end method

.method private a()Z
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Lcom/baidu/mobstat/x;->a:Lcom/baidu/mobstat/x;

    invoke-virtual {v1}, Lcom/baidu/mobstat/x;->b()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/baidu/mobstat/x;->b:Lcom/baidu/mobstat/x;

    invoke-virtual {v1}, Lcom/baidu/mobstat/x;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/baidu/mobstat/x;->c:Lcom/baidu/mobstat/x;

    invoke-virtual {v1}, Lcom/baidu/mobstat/x;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/baidu/mobstat/x;->d:Lcom/baidu/mobstat/x;

    invoke-virtual {v1}, Lcom/baidu/mobstat/x;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/baidu/mobstat/x;->e:Lcom/baidu/mobstat/x;

    invoke-virtual {v1}, Lcom/baidu/mobstat/x;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 5

    const/4 v0, 0x0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "he"

    invoke-virtual {v2, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    const-string v1, "APP_MEM"

    invoke-static {v1}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/baidu/mobstat/ax;->a(Landroid/content/Context;)Lcom/baidu/mobstat/ax;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/ax;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/baidu/mobstat/cu;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v1}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    :try_start_1
    const-string v1, "app_mem"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    add-int/2addr v0, v1

    move v1, v0

    :goto_1
    const-string v0, "APP_APK"

    invoke-static {v0}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/mobstat/x;->e:Lcom/baidu/mobstat/x;

    const/16 v3, 0x5000

    invoke-virtual {v0, v3}, Lcom/baidu/mobstat/x;->a(I)Ljava/util/List;

    move-result-object v0

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/Throwable;)V

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    :try_start_2
    const-string v0, "app_apk"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    :goto_3
    const-string v0, "APP_CHANGE"

    invoke-static {v0}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/mobstat/x;->d:Lcom/baidu/mobstat/x;

    const/16 v3, 0x2800

    invoke-virtual {v0, v3}, Lcom/baidu/mobstat/x;->a(I)Ljava/util/List;

    move-result-object v0

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_4

    :try_start_3
    const-string v0, "app_change"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v0

    add-int/2addr v1, v0

    :cond_4
    :goto_5
    const-string v0, "APP_TRACE2"

    invoke-static {v0}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/mobstat/x;->c:Lcom/baidu/mobstat/x;

    const/16 v3, 0x3c00

    invoke-virtual {v0, v3}, Lcom/baidu/mobstat/x;->a(I)Ljava/util/List;

    move-result-object v0

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_6

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_6

    :try_start_4
    const-string v0, "app_trace2"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v0

    add-int/2addr v1, v0

    :cond_6
    :goto_7
    const-string v0, "APP_LIST2"

    invoke-static {v0}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/mobstat/x;->b:Lcom/baidu/mobstat/x;

    const v3, 0xb400

    invoke-virtual {v0, v3}, Lcom/baidu/mobstat/x;->a(I)Ljava/util/List;

    move-result-object v0

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_8

    :catch_4
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_8

    :try_start_5
    const-string v0, "app_list2"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v0

    add-int/2addr v1, v0

    :cond_8
    :goto_9
    const-string v0, "AP_LIST"

    invoke-static {v0}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/String;)V

    const v0, 0x2d000

    sub-int/2addr v0, v1

    sget-object v3, Lcom/baidu/mobstat/x;->a:Lcom/baidu/mobstat/x;

    invoke-virtual {v3, v0}, Lcom/baidu/mobstat/x;->a(I)Ljava/util/List;

    move-result-object v0

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_a

    :catch_5
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_9
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_a

    :try_start_6
    const-string v0, "ap_list"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v0

    add-int/2addr v1, v0

    :cond_a
    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "log in bytes is almost :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_7
    const-string v2, "payload"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/baidu/mobstat/ak;->a()Lcom/baidu/mobstat/ak;

    move-result-object v0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mobstat/ak;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    :goto_c
    return-void

    :catch_6
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/Throwable;)V

    goto :goto_b

    :catch_7
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/Throwable;)V

    goto :goto_c
.end method

.method private c(Landroid/content/Context;)V
    .locals 8

    const-string v0, "collectAPWithStretegy 1"

    invoke-static {v0}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/baidu/mobstat/ax;->a(Landroid/content/Context;)Lcom/baidu/mobstat/ax;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/t;->a:Lcom/baidu/mobstat/t;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/ax;->a(Lcom/baidu/mobstat/t;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/baidu/mobstat/ax;->e()J

    move-result-wide v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "now time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": last time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; time interval: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    sub-long v2, v4, v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    :cond_0
    const-string v0, "collectAPWithStretegy 2"

    invoke-static {v0}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/baidu/mobstat/m;->a(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 12

    const-wide/16 v10, 0x0

    const-string v0, "collectAPPListWithStretegy 1"

    invoke-static {v0}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Lcom/baidu/mobstat/ax;->a(Landroid/content/Context;)Lcom/baidu/mobstat/ax;

    move-result-object v2

    sget-object v3, Lcom/baidu/mobstat/t;->b:Lcom/baidu/mobstat/t;

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/ax;->a(Lcom/baidu/mobstat/t;)J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/baidu/mobstat/ax;->f()J

    move-result-wide v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "now time: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ": last time: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "; userInterval : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/String;)V

    cmp-long v3, v4, v10

    if-eqz v3, :cond_0

    sub-long v4, v0, v4

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    :cond_0
    const-string v3, "collectUserAPPListWithStretegy 2"

    invoke-static {v3}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/baidu/mobstat/m;->a(Landroid/content/Context;Z)V

    :cond_1
    sget-object v3, Lcom/baidu/mobstat/t;->c:Lcom/baidu/mobstat/t;

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/ax;->a(Lcom/baidu/mobstat/t;)J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/baidu/mobstat/ax;->g()J

    move-result-wide v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "now time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": last time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; sysInterval : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/String;)V

    cmp-long v6, v4, v10

    if-eqz v6, :cond_2

    sub-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    :cond_2
    const-string v0, "collectSysAPPListWithStretegy 2"

    invoke-static {v0}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/baidu/mobstat/m;->a(Landroid/content/Context;Z)V

    :cond_3
    return-void
.end method

.method private e(Landroid/content/Context;)V
    .locals 8

    const-string v0, "collectAPPTraceWithStretegy 1"

    invoke-static {v0}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Lcom/baidu/mobstat/ax;->a(Landroid/content/Context;)Lcom/baidu/mobstat/ax;

    move-result-object v2

    sget-object v3, Lcom/baidu/mobstat/t;->e:Lcom/baidu/mobstat/t;

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/ax;->a(Lcom/baidu/mobstat/t;)J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/baidu/mobstat/ax;->i()J

    move-result-wide v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "now time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": last time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; time interval: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    sub-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const-string v0, "collectAPPTraceWithStretegy 2"

    invoke-static {v0}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/baidu/mobstat/m;->b(Landroid/content/Context;Z)V

    :cond_1
    return-void
.end method

.method private f(Landroid/content/Context;)V
    .locals 8

    const-string v0, "collectAPKWithStretegy 1"

    invoke-static {v0}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Lcom/baidu/mobstat/ax;->a(Landroid/content/Context;)Lcom/baidu/mobstat/ax;

    move-result-object v2

    sget-object v3, Lcom/baidu/mobstat/t;->g:Lcom/baidu/mobstat/t;

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/ax;->a(Lcom/baidu/mobstat/t;)J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/baidu/mobstat/ax;->h()J

    move-result-wide v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "now time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": last time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; interval : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    sub-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const-string v0, "collectAPKWithStretegy 2"

    invoke-static {v0}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/baidu/mobstat/m;->b(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private g(Landroid/content/Context;)V
    .locals 4

    invoke-static {p1}, Lcom/baidu/mobstat/ax;->a(Landroid/content/Context;)Lcom/baidu/mobstat/ax;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/t;->h:Lcom/baidu/mobstat/t;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/mobstat/ax;->a(Lcom/baidu/mobstat/t;J)V

    invoke-static {p1}, Lcom/baidu/mobstat/u;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/baidu/mobstat/ay;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/baidu/mobstat/ay;->b(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;J)V
    .locals 2

    invoke-static {p1}, Lcom/baidu/mobstat/ax;->a(Landroid/content/Context;)Lcom/baidu/mobstat/ax;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/t;->i:Lcom/baidu/mobstat/t;

    invoke-virtual {v0, v1, p2, p3}, Lcom/baidu/mobstat/ax;->a(Lcom/baidu/mobstat/t;J)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/baidu/mobstat/ax;->a(Landroid/content/Context;)Lcom/baidu/mobstat/ax;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/baidu/mobstat/ax;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 5

    const/16 v4, 0x2710

    const-string v0, "startDataAnynalyzed start"

    invoke-static {v0}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/baidu/mobstat/ay;->a(Lorg/json/JSONObject;)V

    invoke-static {p1}, Lcom/baidu/mobstat/ax;->a(Landroid/content/Context;)Lcom/baidu/mobstat/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/ax;->a()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is data collect closed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/String;)V

    if-nez v1, :cond_4

    sget-object v1, Lcom/baidu/mobstat/x;->a:Lcom/baidu/mobstat/x;

    invoke-virtual {v1, v4}, Lcom/baidu/mobstat/x;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ay;->c(Landroid/content/Context;)V

    :cond_0
    sget-object v1, Lcom/baidu/mobstat/x;->b:Lcom/baidu/mobstat/x;

    invoke-virtual {v1, v4}, Lcom/baidu/mobstat/x;->b(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ay;->d(Landroid/content/Context;)V

    :cond_1
    sget-object v1, Lcom/baidu/mobstat/x;->c:Lcom/baidu/mobstat/x;

    invoke-virtual {v1, v4}, Lcom/baidu/mobstat/x;->b(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ay;->e(Landroid/content/Context;)V

    :cond_2
    sget-boolean v1, Lcom/baidu/mobstat/ba;->f:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/baidu/mobstat/x;->e:Lcom/baidu/mobstat/x;

    invoke-virtual {v1, v4}, Lcom/baidu/mobstat/x;->b(I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ay;->f(Landroid/content/Context;)V

    :cond_3
    invoke-static {p1}, Lcom/baidu/mobstat/cu;->m(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/baidu/mobstat/ax;->l()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "sendLog"

    invoke-static {v0}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ay;->g(Landroid/content/Context;)V

    :cond_4
    :goto_0
    const-string v0, "startDataAnynalyzed finished"

    invoke-static {v0}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/String;)V

    return-void

    :cond_5
    if-nez v1, :cond_6

    const-string v0, "isWifiAvailable = false, will not sendLog"

    invoke-static {v0}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v0, "can not sendLog due to time stratergy"

    invoke-static {v0}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 8

    invoke-static {p1}, Lcom/baidu/mobstat/ax;->a(Landroid/content/Context;)Lcom/baidu/mobstat/ax;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/t;->i:Lcom/baidu/mobstat/t;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/ax;->a(Lcom/baidu/mobstat/t;)J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/baidu/mobstat/ax;->c()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v6, v4, v2

    cmp-long v6, v6, v0

    if-lez v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "need to update, checkWithLastUpdateTime lastUpdateTime ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "nowTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";timeInteveral="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "no need to update, checkWithLastUpdateTime lastUpdateTime ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "nowTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";timeInteveral="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/bb;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/baidu/mobstat/ax;->a(Landroid/content/Context;)Lcom/baidu/mobstat/ax;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/baidu/mobstat/ax;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p1}, Lcom/baidu/mobstat/ax;->a(Landroid/content/Context;)Lcom/baidu/mobstat/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/ax;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/ay;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
