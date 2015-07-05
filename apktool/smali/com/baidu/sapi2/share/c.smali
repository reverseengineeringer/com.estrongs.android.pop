.class Lcom/baidu/sapi2/share/c;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/lang/String; = "isValid"

.field static final b:Ljava/lang/String; = "username"

.field static final c:Ljava/lang/String; = "displayname"

.field static final d:Ljava/lang/String; = "email"

.field static final e:Ljava/lang/String; = "phoneNumber"

.field static final f:Ljava/lang/String; = "bduss"

.field static final g:Ljava/lang/String; = "ptoken"

.field static final h:Ljava/lang/String; = "json"

.field static final i:Ljava/lang/String; = "socialAccounts"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)Lcom/baidu/sapi2/SapiAccount;
    .locals 5

    const/4 v1, 0x0

    new-instance v2, Lcom/baidu/sapi2/share/g;

    invoke-direct {v2, p0}, Lcom/baidu/sapi2/share/g;-><init>(Landroid/content/Context;)V

    const-string v0, "1"

    const-string v3, "isValid"

    invoke-virtual {v2, v3}, Lcom/baidu/sapi2/share/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Lcom/baidu/sapi2/SapiAccount;

    invoke-direct {v0}, Lcom/baidu/sapi2/SapiAccount;-><init>()V

    const-string v3, "displayname"

    invoke-virtual {v2, v3}, Lcom/baidu/sapi2/share/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/baidu/sapi2/SapiAccount;->displayname:Ljava/lang/String;

    const-string v3, "username"

    invoke-virtual {v2, v3}, Lcom/baidu/sapi2/share/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/baidu/sapi2/SapiAccount;->username:Ljava/lang/String;

    const-string v3, "email"

    invoke-virtual {v2, v3}, Lcom/baidu/sapi2/share/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/baidu/sapi2/SapiAccount;->email:Ljava/lang/String;

    const-string v3, "phoneNumber"

    invoke-virtual {v2, v3}, Lcom/baidu/sapi2/share/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/baidu/sapi2/SapiAccount;->phone:Ljava/lang/String;

    const-string v3, "bduss"

    invoke-virtual {v2, v3}, Lcom/baidu/sapi2/share/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    const-string v3, "ptoken"

    invoke-virtual {v2, v3}, Lcom/baidu/sapi2/share/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/baidu/sapi2/SapiAccount;->ptoken:Ljava/lang/String;

    const-string v3, "json"

    invoke-virtual {v2, v3}, Lcom/baidu/sapi2/share/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/baidu/sapi2/SapiAccount;->extra:Ljava/lang/String;

    const-string v3, "socialAccounts"

    invoke-virtual {v2, v3}, Lcom/baidu/sapi2/share/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/sapi2/share/c;->a(Lcom/baidu/sapi2/SapiAccount;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/baidu/sapi2/SapiAccount;->extra:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, v0, Lcom/baidu/sapi2/SapiAccount;->extra:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "uid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iput-object v3, v0, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    :cond_1
    const-string v3, "bduss"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iput-object v3, v0, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    :cond_2
    const-string v3, "ptoken"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "ptoken"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/baidu/sapi2/SapiAccount;->ptoken:Ljava/lang/String;

    :cond_3
    const-string v3, "stoken"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "stoken"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/baidu/sapi2/SapiAccount;->stoken:Ljava/lang/String;

    :cond_4
    const-string v3, "uname"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    iput-object v3, v0, Lcom/baidu/sapi2/SapiAccount;->username:Ljava/lang/String;

    :cond_5
    const-string v3, "displayname"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iput-object v2, v0, Lcom/baidu/sapi2/SapiAccount;->displayname:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_1
    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->isValidAccount(Lcom/baidu/sapi2/SapiAccount;)Z

    move-result v2

    if-eqz v2, :cond_7

    :goto_2
    move-object v1, v0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_7
    move-object v0, v1

    goto :goto_2
.end method

.method static a(Lcom/baidu/sapi2/SapiAccount;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/baidu/sapi2/utils/enums/SocialType;->getSocialType(I)Lcom/baidu/sapi2/utils/enums/SocialType;

    move-result-object v1

    const-string v2, "headURL"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/baidu/sapi2/utils/d;->a(Lcom/baidu/sapi2/SapiAccount;Lcom/baidu/sapi2/utils/enums/SocialType;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
