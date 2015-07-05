.class public Lcom/baidu/sapi2/utils/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "is_social_account"

.field public static final b:Ljava/lang/String; = "social_type"

.field public static final c:Ljava/lang/String; = "social_portrait"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/baidu/sapi2/SapiAccount;Lcom/baidu/sapi2/utils/enums/SocialType;Ljava/lang/String;)V
    .locals 2

    const-string v0, "is_social_account"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/baidu/sapi2/utils/d;->a(Lcom/baidu/sapi2/SapiAccount;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "social_type"

    invoke-virtual {p1}, Lcom/baidu/sapi2/utils/enums/SocialType;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/baidu/sapi2/utils/d;->a(Lcom/baidu/sapi2/SapiAccount;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "social_portrait"

    invoke-static {p0, v0, p2}, Lcom/baidu/sapi2/utils/d;->a(Lcom/baidu/sapi2/SapiAccount;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Lcom/baidu/sapi2/SapiAccount;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccount;->extra:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/SapiAccount;->extra:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccount;->extra:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/SapiAccount;->extra:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
