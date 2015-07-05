.class Lcom/baidu/mobstat/ad;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/baidu/mobstat/ad;


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/mobstat/ad;

    invoke-direct {v0}, Lcom/baidu/mobstat/ad;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/ad;->a:Lcom/baidu/mobstat/ad;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobstat/ad;->b:Z

    return-void
.end method

.method public static a()Lcom/baidu/mobstat/ad;
    .locals 1

    sget-object v0, Lcom/baidu/mobstat/ad;->a:Lcom/baidu/mobstat/ad;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    const-string v0, "sdkstat"

    const-string v1, "openExceptonAnalysis"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/util/e;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/baidu/mobstat/ad;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/ad;->b:Z

    invoke-static {}, Lcom/baidu/mobstat/u;->a()Lcom/baidu/mobstat/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/u;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 9

    if-nez p1, :cond_1

    const-string v0, "sdkstat"

    const-string v1, "exceptonAnalysis, context=null"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/util/e;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/u;->a()Lcom/baidu/mobstat/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/u;->b(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v8

    if-nez v8, :cond_2

    const-string v0, "sdkstat"

    const-string v1, "no exception str"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/util/e;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "sdkstat"

    const-string v1, "move exception cache to stat cache"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/util/e;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v7, v0

    :goto_1
    :try_start_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v7, v0, :cond_0

    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->getInstance()Lcom/baidu/mobstat/DataCore;

    move-result-object v1

    const-string v2, "t"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "c"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "y"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "v"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/baidu/mobstat/DataCore;->putException(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->getInstance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/DataCore;->flush(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "sdkstat"

    invoke-static {v1, v0}, Lcom/baidu/mobstat/util/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
