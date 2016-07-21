.class public Lcom/dianxinos/lockscreen/b/b;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/dianxinos/lockscreen/b/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dianxinos/lockscreen/c/g;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "http://cq01-duapps-qa-2016-09.epc.baidu.com:8888/appLock/getConf"

    :goto_0
    sput-object v0, Lcom/dianxinos/lockscreen/b/b;->a:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "http://common.duapps.com/appLock/getConf"

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/lockscreen/b/b;->b:Landroid/content/Context;

    new-instance v0, Lcom/dianxinos/lockscreen/b/e;

    invoke-direct {v0, p1}, Lcom/dianxinos/lockscreen/b/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dianxinos/lockscreen/b/b;->c:Lcom/dianxinos/lockscreen/b/e;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 8

    const/4 v1, 0x1

    const-string v0, "LockScreenAppsPuller"

    const-string v2, "start pull "

    invoke-static {v0, v2}, Lcom/dianxinos/lockscreen/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/b/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/DXStatService/stat/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v0, "module"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "lockscreen"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/dianxinos/lockscreen/b/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/a;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dianxinos/lockscreen/a;->d()Ljava/lang/Long;

    move-result-object v0

    iget-object v4, p0, Lcom/dianxinos/lockscreen/b/b;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/dianxinos/lockscreen/c/e;->a(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3}, Lcom/dianxinos/lockscreen/a;->i()I

    move-result v5

    if-le v4, v5, :cond_1

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/dianxinos/lockscreen/a;->a(J)V

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "pkg_utime"

    const-string v7, "0"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "conf_utime"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v6, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/dianxinos/lockscreen/b/b;->c:Lcom/dianxinos/lockscreen/b/e;

    sget-object v6, Lcom/dianxinos/lockscreen/b/b;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v6, v4, v2}, Lcom/dianxinos/lockscreen/b/e;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/dianxinos/lockscreen/b/a;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v4, "LockScreenAppsPuller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "request reponse code:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/dianxinos/lockscreen/b/a;->a:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/dianxinos/lockscreen/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xc8

    iget v5, v2, Lcom/dianxinos/lockscreen/b/a;->a:I

    if-ne v4, v5, :cond_5

    iget-object v4, v2, Lcom/dianxinos/lockscreen/b/a;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v0, "LockScreenAppsPuller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "request result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/dianxinos/lockscreen/b/a;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/dianxinos/lockscreen/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, v2, Lcom/dianxinos/lockscreen/b/a;->b:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "conf"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v4, "LockScreenAppsPuller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "conf:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/dianxinos/lockscreen/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "utime"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/dianxinos/lockscreen/a;->a(J)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/b/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/c/e;->a(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/dianxinos/lockscreen/a;->b(I)V

    const-string v0, "data"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "LockScreenAppsPuller"

    const-string v2, "can not find data from conf"

    invoke-static {v0, v2}, Lcom/dianxinos/lockscreen/c/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    move v0, v1

    :cond_3
    :goto_1
    return v0

    :cond_4
    iget-object v2, p0, Lcom/dianxinos/lockscreen/b/b;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/dianxinos/lockscreen/a;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/a;

    move-result-object v2

    const-string v3, "switch"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/dianxinos/lockscreen/a;->c(Z)V

    const-string v3, "label_switch"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/dianxinos/lockscreen/a;->d(Z)V

    iget-object v2, p0, Lcom/dianxinos/lockscreen/b/b;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    :cond_5
    const/16 v3, 0x130

    iget v2, v2, Lcom/dianxinos/lockscreen/b/a;->a:I

    if-ne v3, v2, :cond_3

    move v0, v1

    goto :goto_1
.end method
