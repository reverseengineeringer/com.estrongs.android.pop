.class final Lcom/baidu/sapi2/shell/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:I = 0x6


# instance fields
.field private b:Lcom/baidu/sapi2/SapiConfiguration;

.field private c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

.field private d:Lcom/baidu/sapi2/utils/e;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getSapiConfiguration()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    new-instance v0, Lcom/baidu/sapi2/utils/e;

    invoke-direct {v0, p1}, Lcom/baidu/sapi2/utils/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/sapi2/shell/a;->d:Lcom/baidu/sapi2/utils/e;

    return-void
.end method

.method private Q()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tpl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";android_sapi_v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "6.9.2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private R()Lcom/baidu/sapi2/utils/enums/Domain;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->environment:Lcom/baidu/sapi2/utils/enums/Domain;

    return-object v0
.end method

.method private S()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->d:Lcom/baidu/sapi2/utils/e;

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/sslcrypt/get_last_cert"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/sapi2/shell/a;Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;)Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/sapi2/shell/a;)Lcom/baidu/sapi2/utils/e;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->d:Lcom/baidu/sapi2/utils/e;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/sapi2/shell/a;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/baidu/sapi2/shell/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    const-string v0, "sign_key="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/android/common/security/MD5Util;->toMd5([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(ILcom/baidu/sapi2/shell/callback/FillUsernameCallBack;Ljava/lang/String;Lcom/baidu/sapi2/shell/b;)V
    .locals 4

    if-eqz p3, :cond_1

    new-instance v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    invoke-direct {v0}, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "userinfo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p4, v1}, Lcom/baidu/sapi2/shell/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "bduss"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->bduss:Ljava/lang/String;

    const-string v1, "ptoken"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->ptoken:Ljava/lang/String;

    const-string v1, "stoken"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->stoken:Ljava/lang/String;

    const-string v1, "displayname"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->displayname:Ljava/lang/String;

    const-string v1, "uid"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->uid:Ljava/lang/String;

    const-string v1, "uname"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->username:Ljava/lang/String;

    const-string v1, "email"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->email:Ljava/lang/String;

    sparse-switch p1, :sswitch_data_0

    invoke-virtual {p2, p1}, Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;->onSystemError(I)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    new-instance v1, Lcom/baidu/sapi2/SapiAccount;

    invoke-direct {v1}, Lcom/baidu/sapi2/SapiAccount;-><init>()V

    iget-object v3, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->displayname:Ljava/lang/String;

    iput-object v3, v1, Lcom/baidu/sapi2/SapiAccount;->displayname:Ljava/lang/String;

    iget-object v3, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->bduss:Ljava/lang/String;

    iput-object v3, v1, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    iget-object v3, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->ptoken:Ljava/lang/String;

    iput-object v3, v1, Lcom/baidu/sapi2/SapiAccount;->ptoken:Ljava/lang/String;

    iget-object v3, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->stoken:Ljava/lang/String;

    iput-object v3, v1, Lcom/baidu/sapi2/SapiAccount;->stoken:Ljava/lang/String;

    iget-object v3, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->uid:Ljava/lang/String;

    iput-object v3, v1, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    iget-object v3, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->username:Ljava/lang/String;

    iput-object v3, v1, Lcom/baidu/sapi2/SapiAccount;->username:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/sapi2/utils/SapiUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/baidu/sapi2/SapiAccount;->app:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/sapi2/SapiAccount;->extra:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/sapi2/share/b;->a()Lcom/baidu/sapi2/share/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/sapi2/share/b;->a(Lcom/baidu/sapi2/SapiAccount;)V

    invoke-virtual {p2, v0}, Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;->onSuccess(Lcom/baidu/sapi2/shell/response/SapiResponse;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p2, p1}, Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;->onSystemError(I)V

    goto :goto_0

    :sswitch_1
    :try_start_1
    invoke-virtual {p2}, Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;->onUsernameFormatError()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p2}, Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;->onUsernameAlreadyExist()V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p2}, Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;->onUserHaveUsername()V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p2}, Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;->onInvalidBduss()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p1}, Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;->onSystemError(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x27167 -> :sswitch_4
        0x27168 -> :sswitch_3
        0x27169 -> :sswitch_2
        0x2716e -> :sswitch_1
        0x2716f -> :sswitch_2
    .end sparse-switch
.end method

.method static synthetic a(Lcom/baidu/sapi2/shell/a;ILcom/baidu/sapi2/shell/callback/FillUsernameCallBack;Ljava/lang/String;Lcom/baidu/sapi2/shell/b;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/sapi2/shell/a;->a(ILcom/baidu/sapi2/shell/callback/FillUsernameCallBack;Ljava/lang/String;Lcom/baidu/sapi2/shell/b;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/sapi2/shell/a;ILcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/sapi2/shell/a;->d(ILcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/shell/b;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/shell/b;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/VoiceCheckCallBack;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/sapi2/shell/a;->b(Lcom/baidu/sapi2/shell/callback/VoiceCheckCallBack;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/VoiceLoginCallBack;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/callback/VoiceLoginCallBack;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/VoiceRegCallBack;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/callback/VoiceRegCallBack;Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const/16 v10, -0x64

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/baidu/sapi2/shell/a;->a(Ljava/lang/String;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;->onFinish()V

    invoke-virtual {p1, v1}, Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;->onSystemError(I)V

    :goto_0
    return-void

    :sswitch_0
    const-string v1, "sms"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "vcode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "upsmschannel"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0, v5, v1}, Lcom/baidu/sapi2/utils/SapiUtils;->sendSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->Q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v0}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    new-instance v1, Lorg/apache/http/impl/cookie/BasicClientCookie;

    const-string v2, "BAIDUID"

    iget-object v4, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/baidu/sapi2/utils/SapiUtils;->getClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "baidu.com"

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/BasicCookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-virtual {v1, v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    new-instance v6, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v6}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>()V

    const-string v0, "channel_id"

    invoke-virtual {v6, v0, v3}, Lcom/baidu/cloudsdk/common/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "callback"

    const-string v1, "p"

    invoke-virtual {v6, v0, v1}, Lcom/baidu/cloudsdk/common/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "apiver"

    const-string v1, "v3"

    invoke-virtual {v6, v0, v1}, Lcom/baidu/cloudsdk/common/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tt"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/baidu/cloudsdk/common/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v8, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    const-string v9, "https://passport.baidu.com/channel/unicast"

    new-instance v0, Lcom/baidu/sapi2/shell/a$b;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/baidu/sapi2/shell/a$b;-><init>(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9, v6, v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;->onFinish()V

    invoke-virtual {p1, v10}, Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;->onSystemError(I)V

    goto/16 :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;->onFinish()V

    const/16 v0, -0x64

    invoke-virtual {p1, v0}, Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;->onSystemError(I)V

    goto/16 :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;->onFinish()V

    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;->onUserNormalized()V

    goto/16 :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;->onFinish()V

    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;->onBdussInvalid()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0xee4a -> :sswitch_1
    .end sparse-switch
.end method

.method private a(Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/shell/b;)V
    .locals 5

    new-instance v0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->Q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "appid"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tpl"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cert_id"

    invoke-virtual {v0, v1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "crypttype"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "bduss"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "clientid"

    iget-object v3, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "clientip"

    iget-object v3, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "ptoken"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string v2, "username"

    invoke-virtual {v1, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "key"

    invoke-virtual {p7}, Lcom/baidu/sapi2/shell/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p7, p5, v1}, Lcom/baidu/sapi2/shell/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "userinfo"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/baidu/sapi2/shell/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sig"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v1, v0}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/baidu/sapi2/shell/a;->n()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/baidu/sapi2/shell/a$m;

    invoke-direct {v4, p0, p1, p7}, Lcom/baidu/sapi2/shell/a$m;-><init>(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;Lcom/baidu/sapi2/shell/b;)V

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    return-void
.end method

.method private a(Lcom/baidu/sapi2/shell/callback/VoiceLoginCallBack;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/VoiceLoginCallBack;->onFinish()V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "errno"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-virtual {p1, v1}, Lcom/baidu/sapi2/shell/callback/VoiceLoginCallBack;->onSystemError(I)V

    :goto_0
    return-void

    :pswitch_0
    new-instance v2, Lcom/baidu/sapi2/shell/response/SapiResponse;

    invoke-direct {v2}, Lcom/baidu/sapi2/shell/response/SapiResponse;-><init>()V

    iput v1, v2, Lcom/baidu/sapi2/shell/response/SapiResponse;->errorCode:I

    new-instance v1, Lcom/baidu/sapi2/SapiAccount;

    invoke-direct {v1}, Lcom/baidu/sapi2/SapiAccount;-><init>()V

    const-string v3, "uid"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    const-string v3, "bduss"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    const-string v3, "displayname"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/baidu/sapi2/SapiAccount;->displayname:Ljava/lang/String;

    const-string v3, "uname"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/baidu/sapi2/SapiAccount;->username:Ljava/lang/String;

    const-string v3, "ptoken"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/baidu/sapi2/SapiAccount;->ptoken:Ljava/lang/String;

    const-string v3, "stoken"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/sapi2/SapiAccount;->stoken:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/sapi2/SapiAccount;->app:Ljava/lang/String;

    iput-object p2, v1, Lcom/baidu/sapi2/SapiAccount;->extra:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/sapi2/share/b;->a()Lcom/baidu/sapi2/share/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/share/b;->a(Lcom/baidu/sapi2/SapiAccount;)V

    invoke-virtual {p1, v2}, Lcom/baidu/sapi2/shell/callback/VoiceLoginCallBack;->onSuccess(Lcom/baidu/sapi2/shell/response/SapiResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v0, -0x64

    invoke-virtual {p1, v0}, Lcom/baidu/sapi2/shell/callback/VoiceLoginCallBack;->onSystemError(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/baidu/sapi2/shell/callback/VoiceRegCallBack;Ljava/lang/String;Z)V
    .locals 4

    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/VoiceRegCallBack;->onFinish()V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "errno"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-virtual {p1, v1}, Lcom/baidu/sapi2/shell/callback/VoiceRegCallBack;->onSystemError(I)V

    :goto_0
    return-void

    :sswitch_0
    new-instance v2, Lcom/baidu/sapi2/shell/response/SapiResponse;

    invoke-direct {v2}, Lcom/baidu/sapi2/shell/response/SapiResponse;-><init>()V

    iput v1, v2, Lcom/baidu/sapi2/shell/response/SapiResponse;->errorCode:I

    if-eqz p3, :cond_0

    new-instance v1, Lcom/baidu/sapi2/SapiAccount;

    invoke-direct {v1}, Lcom/baidu/sapi2/SapiAccount;-><init>()V

    const-string v3, "uid"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    const-string v3, "bduss"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    const-string v3, "displayname"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/baidu/sapi2/SapiAccount;->displayname:Ljava/lang/String;

    const-string v3, "uname"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/baidu/sapi2/SapiAccount;->username:Ljava/lang/String;

    const-string v3, "ptoken"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/baidu/sapi2/SapiAccount;->ptoken:Ljava/lang/String;

    const-string v3, "stoken"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/sapi2/SapiAccount;->stoken:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/sapi2/SapiAccount;->app:Ljava/lang/String;

    iput-object p2, v1, Lcom/baidu/sapi2/SapiAccount;->extra:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/sapi2/share/b;->a()Lcom/baidu/sapi2/share/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/share/b;->a(Lcom/baidu/sapi2/SapiAccount;)V

    :cond_0
    invoke-virtual {p1, v2}, Lcom/baidu/sapi2/shell/callback/VoiceRegCallBack;->onSuccess(Lcom/baidu/sapi2/shell/response/SapiResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v0, -0x64

    invoke-virtual {p1, v0}, Lcom/baidu/sapi2/shell/callback/VoiceRegCallBack;->onSystemError(I)V

    goto :goto_0

    :sswitch_1
    :try_start_1
    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/VoiceRegCallBack;->onAuthExpired()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xf234 -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic a(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/baidu/sapi2/shell/b;)Z
    .locals 1

    invoke-direct/range {p0 .. p7}, Lcom/baidu/sapi2/shell/a;->a(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/baidu/sapi2/shell/b;)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/baidu/sapi2/shell/b;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
            "<",
            "Lcom/baidu/sapi2/shell/response/SapiAccountResponse;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/baidu/sapi2/shell/b;",
            ")Z"
        }
    .end annotation

    new-instance v1, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v1, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->Q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "crypttype"

    const-string v3, "6"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "tpl"

    iget-object v3, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "appid"

    iget-object v3, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "cuid"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v2, "cert_id"

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "isdpass"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "username"

    move-object/from16 v0, p4

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "isphone"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "password"

    move-object/from16 v0, p5

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "login_type"

    const-string v4, "3"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "key"

    invoke-virtual/range {p7 .. p7}, Lcom/baidu/sapi2/shell/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "sdk_version"

    const-string v4, "2"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "pinfo"

    invoke-static {}, Lcom/baidu/sapi2/utils/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v0, p2, v2}, Lcom/baidu/sapi2/shell/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "userinfo"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/baidu/sapi2/shell/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sig"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v8, v1}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    iget-object v9, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v10, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/baidu/sapi2/shell/a;->u()Ljava/lang/String;

    move-result-object v11

    new-instance v1, Lcom/baidu/sapi2/shell/a$j;

    move-object v2, p0

    move-object v3, p1

    move/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/baidu/sapi2/shell/a$j;-><init>(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/SapiCallBack;ZLcom/baidu/sapi2/shell/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10, v11, v8, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    const/4 v1, 0x1

    return v1
.end method

.method static synthetic b(Lcom/baidu/sapi2/shell/a;)Lcom/baidu/sapi2/SapiConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    return-object v0
.end method

.method private b(Lcom/baidu/sapi2/shell/callback/VoiceCheckCallBack;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/VoiceCheckCallBack;->onFinish()V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "errno"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-virtual {p1, v1}, Lcom/baidu/sapi2/shell/callback/VoiceCheckCallBack;->onSystemError(I)V

    :goto_0
    return-void

    :sswitch_0
    new-instance v2, Lcom/baidu/sapi2/shell/response/VoiceCheckResponse;

    invoke-direct {v2}, Lcom/baidu/sapi2/shell/response/VoiceCheckResponse;-><init>()V

    iput v1, v2, Lcom/baidu/sapi2/shell/response/VoiceCheckResponse;->errorCode:I

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/sapi2/shell/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/baidu/sapi2/shell/response/VoiceCheckResponse;->uid:Ljava/lang/String;

    const-string v1, "displayname"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/baidu/sapi2/shell/response/VoiceCheckResponse;->displayname:Ljava/lang/String;

    const-string v1, "1"

    const-string v3, "voice"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v2, Lcom/baidu/sapi2/shell/response/VoiceCheckResponse;->signUp:Z

    const-string v1, "1"

    const-string v3, "needverify"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v2, Lcom/baidu/sapi2/shell/response/VoiceCheckResponse;->needVerify:Z

    const-string v1, "token"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/baidu/sapi2/shell/response/VoiceCheckResponse;->authToken:Ljava/lang/String;

    const-string v1, "null"

    iget-object v3, v2, Lcom/baidu/sapi2/shell/response/VoiceCheckResponse;->authToken:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, v2, Lcom/baidu/sapi2/shell/response/VoiceCheckResponse;->authToken:Ljava/lang/String;

    :cond_0
    const-string v1, "authsid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/sapi2/shell/response/VoiceCheckResponse;->authSid:Ljava/lang/String;

    const-string v0, "null"

    iget-object v1, v2, Lcom/baidu/sapi2/shell/response/VoiceCheckResponse;->authSid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, v2, Lcom/baidu/sapi2/shell/response/VoiceCheckResponse;->authSid:Ljava/lang/String;

    :cond_1
    invoke-virtual {p1, v2}, Lcom/baidu/sapi2/shell/callback/VoiceCheckCallBack;->onSuccess(Lcom/baidu/sapi2/shell/response/SapiResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v0, -0x64

    invoke-virtual {p1, v0}, Lcom/baidu/sapi2/shell/callback/VoiceCheckCallBack;->onSystemError(I)V

    goto :goto_0

    :sswitch_1
    :try_start_1
    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/VoiceCheckCallBack;->onUsernameNotExist()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/VoiceCheckCallBack;->onUserNotNormalized()V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/VoiceCheckCallBack;->onUserForbidden()V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/VoiceCheckCallBack;->onLoginMergeConfirm()V

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/VoiceCheckCallBack;->onBdussInvalid()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x61a95 -> :sswitch_5
        0x61c11 -> :sswitch_4
    .end sparse-switch
.end method

.method static synthetic c(Lcom/baidu/sapi2/shell/a;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->Q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/sapi2/shell/a;)Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    return-object v0
.end method

.method private d(ILcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
            "<",
            "Lcom/baidu/sapi2/shell/response/SapiResponse;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_1

    new-instance v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    invoke-direct {v0}, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;-><init>()V

    iput p1, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->errorCode:I

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "displayname"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->displayname:Ljava/lang/String;

    const-string v2, "uname"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->username:Ljava/lang/String;

    const-string v2, "uid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->uid:Ljava/lang/String;

    const-string v2, "email"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->email:Ljava/lang/String;

    const-string v2, "bduss"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->bduss:Ljava/lang/String;

    const-string v2, "ptoken"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->ptoken:Ljava/lang/String;

    const-string v2, "stoken"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->stoken:Ljava/lang/String;

    const-string v2, "authsid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->authSid:Ljava/lang/String;

    if-eqz p2, :cond_0

    packed-switch p1, :pswitch_data_0

    invoke-interface {p2, p1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    new-instance v1, Lcom/baidu/sapi2/SapiAccount;

    invoke-direct {v1}, Lcom/baidu/sapi2/SapiAccount;-><init>()V

    iget-object v2, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->displayname:Ljava/lang/String;

    iput-object v2, v1, Lcom/baidu/sapi2/SapiAccount;->displayname:Ljava/lang/String;

    iget-object v2, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->bduss:Ljava/lang/String;

    iput-object v2, v1, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    iget-object v2, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->ptoken:Ljava/lang/String;

    iput-object v2, v1, Lcom/baidu/sapi2/SapiAccount;->ptoken:Ljava/lang/String;

    iget-object v2, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->stoken:Ljava/lang/String;

    iput-object v2, v1, Lcom/baidu/sapi2/SapiAccount;->stoken:Ljava/lang/String;

    iget-object v2, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->uid:Ljava/lang/String;

    iput-object v2, v1, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    iget-object v2, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->username:Ljava/lang/String;

    iput-object v2, v1, Lcom/baidu/sapi2/SapiAccount;->username:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/sapi2/utils/SapiUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/sapi2/SapiAccount;->app:Ljava/lang/String;

    iput-object p3, v1, Lcom/baidu/sapi2/SapiAccount;->extra:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/sapi2/share/b;->a()Lcom/baidu/sapi2/share/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/sapi2/share/b;->a(Lcom/baidu/sapi2/SapiAccount;)V

    invoke-interface {p2, v0}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSuccess(Lcom/baidu/sapi2/shell/response/SapiResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    if-eqz p2, :cond_0

    const/16 v0, -0x64

    invoke-interface {p2, v0}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->R()Lcom/baidu/sapi2/utils/enums/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/Domain;->getDeviceUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/yunid/device/service/status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public B()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->R()Lcom/baidu/sapi2/utils/enums/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/Domain;->getDeviceUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/yunid/device/login"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public C()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->R()Lcom/baidu/sapi2/utils/enums/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/Domain;->getDeviceUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/yunid/device/reg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public D()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->R()Lcom/baidu/sapi2/utils/enums/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/Domain;->getDeviceUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/yunid/device/forcereg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public E()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->d:Lcom/baidu/sapi2/utils/e;

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v2/sapi/qrlogin?lp=pc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public F()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->d:Lcom/baidu/sapi2/utils/e;

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v2/sapi/qrlogin?lp=app"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public G()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->d:Lcom/baidu/sapi2/utils/e;

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v2/sapi/smsgetlogin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public H()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->d:Lcom/baidu/sapi2/utils/e;

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v2/sapi/getdpass"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public I()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->d:Lcom/baidu/sapi2/utils/e;

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v2/sapi/bdussexchangeaccesstoken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public J()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->d:Lcom/baidu/sapi2/utils/e;

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v2/security/sapibindwidgetsend"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public K()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->d:Lcom/baidu/sapi2/utils/e;

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v2/security/sapibindwidgetbind"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public L()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->d:Lcom/baidu/sapi2/utils/e;

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v2/sapi/getvoiceid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public M()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->d:Lcom/baidu/sapi2/utils/e;

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v2/sapi/regvoice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public N()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->d:Lcom/baidu/sapi2/utils/e;

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v2/sapi/voicelogin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method O()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->d:Lcom/baidu/sapi2/utils/e;

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v2/sapi/sdk-e7e3227a11d7e4d3a3a1a8ea89bc76d8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method P()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->d:Lcom/baidu/sapi2/utils/e;

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v2/sapi/sdk-9fc05608ec97ba19262c82c1aa7770e7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;)I
    .locals 5

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ReloginCredentials can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p1, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->account:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x1fbd5

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v0, p1, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->password:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x1fbda

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->ubi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x1fbe9

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, -0xc8

    goto :goto_0

    :cond_5
    new-instance v1, Lcom/baidu/sapi2/shell/b;

    invoke-direct {v1}, Lcom/baidu/sapi2/shell/b;-><init>()V

    :try_start_0
    new-instance v0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->Q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "crypttype"

    const-string v3, "11"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tpl"

    iget-object v3, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "appid"

    iget-object v3, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/sapi2/utils/SapiUtils;->getClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    :cond_6
    const-string v0, "cuid"

    iget-object v3, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cert_id"

    const-string v3, "2"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "isdpass"

    const-string v3, "0"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "username"

    iget-object v3, p1, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->account:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "password"

    iget-object v3, p1, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->password:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "UBI"

    iget-object v3, p1, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->ubi:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "3"

    iget-object v3, p1, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "1"

    :goto_1
    const-string v3, "isphone"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "login_type"

    const-string v3, "3"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "key"

    invoke-virtual {v1}, Lcom/baidu/sapi2/shell/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sdk_version"

    const-string v1, "2"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pinfo"

    invoke-static {}, Lcom/baidu/sapi2/utils/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/baidu/sapi2/shell/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sig"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v1, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    :cond_7
    const/16 v0, -0x64

    goto/16 :goto_0

    :cond_8
    :try_start_1
    const-string v0, "0"

    goto :goto_1

    :cond_9
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0}, Lcom/baidu/sapi2/shell/a;->u()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v2, "UTF-8"

    invoke-direct {v1, v3, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-virtual {v1, v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    if-ne v1, v2, :cond_7

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0, v1}, Lcom/baidu/sapi2/shell/a;->a(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/baidu/sapi2/SapiAccount;

    invoke-direct {v3}, Lcom/baidu/sapi2/SapiAccount;-><init>()V

    const-string v4, "displayname"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/sapi2/SapiAccount;->displayname:Ljava/lang/String;

    const-string v4, "bduss"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    const-string v4, "ptoken"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/sapi2/SapiAccount;->ptoken:Ljava/lang/String;

    const-string v4, "stoken"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/sapi2/SapiAccount;->stoken:Ljava/lang/String;

    const-string v4, "uid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    const-string v4, "uname"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/baidu/sapi2/SapiAccount;->username:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/sapi2/utils/SapiUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/baidu/sapi2/SapiAccount;->app:Ljava/lang/String;

    iput-object v1, v3, Lcom/baidu/sapi2/SapiAccount;->extra:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/sapi2/share/b;->a()Lcom/baidu/sapi2/share/b;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/baidu/sapi2/share/b;->a(Lcom/baidu/sapi2/SapiAccount;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method a(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "errno"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move-object v1, v0

    const/16 v0, -0x64

    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method a(Lcom/baidu/sapi2/utils/enums/BindWidgetAction;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->R()Lcom/baidu/sapi2/utils/enums/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/Domain;->getWap()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/sapi2/utils/enums/BindWidgetAction;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->cancelRequests(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method a(ILcom/baidu/sapi2/shell/callback/QrAppLoginCallBack;Ljava/lang/String;)V
    .locals 5

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/baidu/sapi2/shell/callback/QrAppLoginCallBack;->onFinish()V

    :cond_0
    if-eqz p3, :cond_4

    new-instance v0, Lcom/baidu/sapi2/shell/response/QrAppLoginResponse;

    invoke-direct {v0}, Lcom/baidu/sapi2/shell/response/QrAppLoginResponse;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "errno"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/baidu/sapi2/shell/response/QrAppLoginResponse;->errorCode:I

    const-string v3, "local"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "country"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/baidu/sapi2/shell/response/QrAppLoginResponse;->country:Ljava/lang/String;

    const-string v4, "provice"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/baidu/sapi2/shell/response/QrAppLoginResponse;->province:Ljava/lang/String;

    const-string v4, "city"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/baidu/sapi2/shell/response/QrAppLoginResponse;->city:Ljava/lang/String;

    :cond_1
    const-string v3, "errno"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "errno"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lcom/baidu/sapi2/SapiAccount;

    invoke-direct {v3}, Lcom/baidu/sapi2/SapiAccount;-><init>()V

    const-string v4, "uid"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    const-string v4, "bduss"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    const-string v4, "displayname"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/sapi2/SapiAccount;->displayname:Ljava/lang/String;

    const-string v4, "uname"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/sapi2/SapiAccount;->username:Ljava/lang/String;

    const-string v4, "stoken"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/sapi2/SapiAccount;->stoken:Ljava/lang/String;

    const-string v4, "ptoken"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/baidu/sapi2/SapiAccount;->ptoken:Ljava/lang/String;

    iput-object p3, v3, Lcom/baidu/sapi2/SapiAccount;->extra:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/baidu/sapi2/SapiAccount;->app:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/sapi2/share/b;->a()Lcom/baidu/sapi2/share/b;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/baidu/sapi2/share/b;->a(Lcom/baidu/sapi2/SapiAccount;)V

    :cond_2
    if-eqz p2, :cond_3

    sparse-switch v2, :sswitch_data_0

    invoke-virtual {p2, v2}, Lcom/baidu/sapi2/shell/callback/QrAppLoginCallBack;->onSystemError(I)V

    :cond_3
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p2, v0}, Lcom/baidu/sapi2/shell/callback/QrAppLoginCallBack;->onSuccess(Lcom/baidu/sapi2/shell/response/SapiResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz p2, :cond_3

    const/16 v0, -0x64

    invoke-virtual {p2, v0}, Lcom/baidu/sapi2/shell/callback/QrAppLoginCallBack;->onSystemError(I)V

    goto :goto_0

    :sswitch_1
    :try_start_1
    invoke-virtual {p2}, Lcom/baidu/sapi2/shell/callback/QrAppLoginCallBack;->onQrCodeInvalid()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p2}, Lcom/baidu/sapi2/shell/callback/QrAppLoginCallBack;->onBdussInvalid()V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p2}, Lcom/baidu/sapi2/shell/callback/QrAppLoginCallBack;->onUserNotNormalized()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_3

    invoke-virtual {p2, p1}, Lcom/baidu/sapi2/shell/callback/QrAppLoginCallBack;->onSystemError(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x67 -> :sswitch_1
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x27166 -> :sswitch_2
    .end sparse-switch
.end method

.method a(ILcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
            "<",
            "Lcom/baidu/sapi2/shell/response/SapiResponse;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_4

    new-instance v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    invoke-direct {v0}, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "displayname"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->displayname:Ljava/lang/String;

    const-string v2, "uid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->uid:Ljava/lang/String;

    const-string v2, "bduss"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->bduss:Ljava/lang/String;

    const-string v2, "ptoken"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->ptoken:Ljava/lang/String;

    const-string v2, "error_code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x68

    if-ne v2, v3, :cond_1

    const-string v0, "force_reg_token"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/baidu/sapi2/shell/a;->d(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "error_code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "error_msg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Lcom/baidu/sapi2/SapiAccount;

    invoke-direct {v2}, Lcom/baidu/sapi2/SapiAccount;-><init>()V

    iget-object v3, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->uid:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    iget-object v3, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->bduss:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    iget-object v3, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->displayname:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/sapi2/SapiAccount;->displayname:Ljava/lang/String;

    iget-object v3, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->stoken:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/sapi2/SapiAccount;->stoken:Ljava/lang/String;

    iget-object v0, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->ptoken:Ljava/lang/String;

    iput-object v0, v2, Lcom/baidu/sapi2/SapiAccount;->ptoken:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/sapi2/SapiAccount;->app:Ljava/lang/String;

    const-string v0, "device_token"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Landroid/content/Context;)Lcom/baidu/sapi2/c;

    move-result-object v0

    const-string v3, "device_token"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/baidu/sapi2/c;->a(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/baidu/sapi2/share/b;->a()Lcom/baidu/sapi2/share/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/sapi2/share/b;->a(Lcom/baidu/sapi2/SapiAccount;)V

    :cond_3
    if-eqz p2, :cond_0

    const-string v0, "error_code"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "error_code"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz p2, :cond_0

    const/16 v0, -0x64

    invoke-interface {p2, v0}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p2, v0}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSuccess(Lcom/baidu/sapi2/shell/response/SapiResponse;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method a(ILcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;ZLcom/baidu/sapi2/shell/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
            "<",
            "Lcom/baidu/sapi2/shell/response/SapiAccountResponse;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/baidu/sapi2/shell/b;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_3

    new-instance v1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    invoke-direct {v1}, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;-><init>()V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "userinfo"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, ""

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p5, v2}, Lcom/baidu/sapi2/shell/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "displayname"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->displayname:Ljava/lang/String;

    const-string v3, "uname"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->username:Ljava/lang/String;

    const-string v3, "uid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->uid:Ljava/lang/String;

    const-string v3, "email"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->email:Ljava/lang/String;

    const-string v3, "bduss"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->bduss:Ljava/lang/String;

    const-string v3, "ptoken"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->ptoken:Ljava/lang/String;

    const-string v3, "stoken"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->stoken:Ljava/lang/String;

    const-string v3, "authsid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->authSid:Ljava/lang/String;

    :cond_0
    if-eqz p2, :cond_1

    packed-switch p1, :pswitch_data_0

    invoke-interface {p2, p1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    if-eqz p4, :cond_2

    new-instance v2, Lcom/baidu/sapi2/SapiAccount;

    invoke-direct {v2}, Lcom/baidu/sapi2/SapiAccount;-><init>()V

    iget-object v3, v1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->displayname:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/sapi2/SapiAccount;->displayname:Ljava/lang/String;

    iget-object v3, v1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->bduss:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    iget-object v3, v1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->ptoken:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/sapi2/SapiAccount;->ptoken:Ljava/lang/String;

    iget-object v3, v1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->stoken:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/sapi2/SapiAccount;->stoken:Ljava/lang/String;

    iget-object v3, v1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->uid:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    iget-object v3, v1, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->username:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/sapi2/SapiAccount;->username:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/sapi2/utils/SapiUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/baidu/sapi2/SapiAccount;->app:Ljava/lang/String;

    iput-object v0, v2, Lcom/baidu/sapi2/SapiAccount;->extra:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/sapi2/share/b;->a()Lcom/baidu/sapi2/share/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/sapi2/share/b;->a(Lcom/baidu/sapi2/SapiAccount;)V

    :cond_2
    invoke-interface {p2, v1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSuccess(Lcom/baidu/sapi2/shell/response/SapiResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    if-eqz p2, :cond_1

    const/16 v0, -0x64

    invoke-interface {p2, v0}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;->onFinish()V

    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;->onBdussInvalid()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;->onFinish()V

    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;->onNetworkFailed()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->isSimReady(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;->onFinish()V

    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;->onSimUnavailable()V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->Q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "appid"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tpl"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "clientid"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v1, "bduss"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/baidu/sapi2/shell/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sig"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v1, v0}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/baidu/sapi2/shell/a;->J()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/baidu/sapi2/shell/a$l;

    invoke-direct {v4, p0, p1, p2}, Lcom/baidu/sapi2/shell/a$l;-><init>(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/FillUserProfileCallBack;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto/16 :goto_0
.end method

.method public a(Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;->onNetworkFailed()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Lcom/baidu/sapi2/shell/b;

    invoke-direct {v3}, Lcom/baidu/sapi2/shell/b;-><init>()V

    new-instance v0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->Q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v8, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->S()Ljava/lang/String;

    move-result-object v9

    new-instance v0, Lcom/baidu/sapi2/shell/a$n;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/baidu/sapi2/shell/a$n;-><init>(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;Lcom/baidu/sapi2/shell/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9, v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto :goto_0
.end method

.method public a(Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bduss can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;->onFinish()V

    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;->onNetworkFailed()V

    :goto_0
    return-void

    :cond_2
    new-instance v0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->Q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "appid"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tpl"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "clientid"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "clientip"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v1, "bduss"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/baidu/sapi2/shell/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v3}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lcom/baidu/cloudsdk/common/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v0, "sig"

    invoke-virtual {v3, v0, v2}, Lcom/baidu/cloudsdk/common/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/baidu/sapi2/shell/a;->r()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/baidu/sapi2/shell/a$c;

    invoke-direct {v4, p0, p1, p2}, Lcom/baidu/sapi2/shell/a$c;-><init>(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto/16 :goto_0
.end method

.method public a(Lcom/baidu/sapi2/shell/callback/OAuthCallBack;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/OAuthCallBack;->onFinish()V

    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/OAuthCallBack;->onNetworkFailed()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/OAuthCallBack;->onFinish()V

    const v0, 0x27166

    invoke-virtual {p1, v0}, Lcom/baidu/sapi2/shell/callback/OAuthCallBack;->onSystemError(I)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->Q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "appid"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tpl"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "clientid"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "clientip"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v1, "bduss"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/baidu/sapi2/shell/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sig"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v1, v0}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/baidu/sapi2/shell/a;->I()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/baidu/sapi2/shell/a$p;

    invoke-direct {v4, p0, p1, p2}, Lcom/baidu/sapi2/shell/a$p;-><init>(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/OAuthCallBack;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto/16 :goto_0
.end method

.method public a(Lcom/baidu/sapi2/shell/callback/QrAppLoginCallBack;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/QrAppLoginCallBack;->onFinish()V

    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/QrAppLoginCallBack;->onNetworkFailed()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/QrAppLoginCallBack;->onFinish()V

    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/QrAppLoginCallBack;->onQrCodeInvalid()V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->Q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "sign"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cmd"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "clientid"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "clientip"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v1, "tpl"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appid"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/baidu/sapi2/shell/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sig"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v1, v0}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/baidu/sapi2/shell/a;->F()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/baidu/sapi2/shell/a$z;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/baidu/sapi2/shell/a$z;-><init>(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/QrAppLoginCallBack;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto/16 :goto_0
.end method

.method a(Lcom/baidu/sapi2/shell/callback/QrPCLoginCallBack;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/QrPCLoginCallBack;->onFinish()V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "errno"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-virtual {p1, v1}, Lcom/baidu/sapi2/shell/callback/QrPCLoginCallBack;->onSystemError(I)V

    :goto_0
    return-void

    :sswitch_0
    new-instance v2, Lcom/baidu/sapi2/shell/response/QrPCLoginResponse;

    invoke-direct {v2}, Lcom/baidu/sapi2/shell/response/QrPCLoginResponse;-><init>()V

    iput v1, v2, Lcom/baidu/sapi2/shell/response/QrPCLoginResponse;->errorCode:I

    const-string v1, "local"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "country"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/baidu/sapi2/shell/response/QrPCLoginResponse;->country:Ljava/lang/String;

    const-string v1, "provice"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/baidu/sapi2/shell/response/QrPCLoginResponse;->province:Ljava/lang/String;

    const-string v1, "city"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/sapi2/shell/response/QrPCLoginResponse;->city:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1, v2}, Lcom/baidu/sapi2/shell/callback/QrPCLoginCallBack;->onSuccess(Lcom/baidu/sapi2/shell/response/SapiResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v0, -0x64

    invoke-virtual {p1, v0}, Lcom/baidu/sapi2/shell/callback/QrPCLoginCallBack;->onSystemError(I)V

    goto :goto_0

    :sswitch_1
    :try_start_1
    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/QrPCLoginCallBack;->onQrCodeInvalid()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/QrPCLoginCallBack;->onBdussInvalid()V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/QrPCLoginCallBack;->onUserNotNormalized()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x67 -> :sswitch_1
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x27166 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Lcom/baidu/sapi2/shell/callback/QrPCLoginCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/QrPCLoginCallBack;->onFinish()V

    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/QrPCLoginCallBack;->onNetworkFailed()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/QrPCLoginCallBack;->onFinish()V

    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/QrPCLoginCallBack;->onQrCodeInvalid()V

    goto :goto_0

    :cond_3
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/baidu/sapi2/utils/enums/QrLoginAction;->LOGIN:Lcom/baidu/sapi2/utils/enums/QrLoginAction;

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/QrLoginAction;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/QrPCLoginCallBack;->onFinish()V

    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/QrPCLoginCallBack;->onBdussInvalid()V

    goto :goto_0

    :cond_4
    new-instance v1, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v1, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->Q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "sign"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "cmd"

    move-object/from16 v0, p3

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "bduss"

    move-object/from16 v0, p4

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "ptoken"

    move-object/from16 v0, p6

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "stoken"

    move-object/from16 v0, p5

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "clientid"

    iget-object v3, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "clientip"

    iget-object v3, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const-string v2, "tpl"

    iget-object v3, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "appid"

    iget-object v3, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/baidu/sapi2/shell/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sig"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v9, v1}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    iget-object v10, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v11, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/baidu/sapi2/shell/a;->E()Ljava/lang/String;

    move-result-object v12

    new-instance v1, Lcom/baidu/sapi2/shell/a$B;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/baidu/sapi2/shell/a$B;-><init>(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/QrPCLoginCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v11, v12, v9, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto/16 :goto_0
.end method

.method a(Lcom/baidu/sapi2/shell/callback/SapiCallBack;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
            "<",
            "Lcom/baidu/sapi2/shell/response/SapiResponse;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onNetworkFailed()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->Q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    new-instance v0, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "cuid"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/cloudsdk/common/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v1, "tpl"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/cloudsdk/common/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appid"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/cloudsdk/common/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/baidu/sapi2/shell/a;->m()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/baidu/sapi2/shell/a$w;

    invoke-direct {v4, p0, p1}, Lcom/baidu/sapi2/shell/a$w;-><init>(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/SapiCallBack;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto :goto_0
.end method

.method public a(Lcom/baidu/sapi2/shell/callback/SapiCallBack;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
            "<",
            "Lcom/baidu/sapi2/shell/response/GetHistoryPortraitsResponse;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "can\'t be null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bduss can\'t be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-ltz p2, :cond_2

    const/16 v1, 0xa

    if-le p2, v1, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "abnormal request history number"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {p1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onNetworkFailed()V

    :goto_0
    return-void

    :cond_4
    new-instance v1, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v1, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->Q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "appid"

    iget-object v3, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "tpl"

    iget-object v3, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "length"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "clientid"

    iget-object v3, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "clientip"

    iget-object v3, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string v2, "bduss"

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "ptoken"

    move-object/from16 v0, p4

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "stoken"

    move-object/from16 v0, p5

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/baidu/sapi2/shell/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v8, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v8}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>()V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v8, v2, v1}, Lcom/baidu/cloudsdk/common/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    const-string v1, "sig"

    invoke-virtual {v8, v1, v3}, Lcom/baidu/cloudsdk/common/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v10, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/baidu/sapi2/shell/a;->q()Ljava/lang/String;

    move-result-object v11

    new-instance v1, Lcom/baidu/sapi2/shell/a$f;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/baidu/sapi2/shell/a$f;-><init>(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/SapiCallBack;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10, v11, v8, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto/16 :goto_0
.end method

.method public a(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
            "<",
            "Lcom/baidu/sapi2/shell/response/SapiResponse;",
            ">;",
            "Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;",
            ")V"
        }
    .end annotation

    const/16 v5, -0x64

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ReloginCredentials can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p2, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->account:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const v0, 0x1fbd5

    invoke-interface {p1, v0}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p2, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->password:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_1

    const v0, 0x1fbda

    invoke-interface {p1, v0}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p2, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->ubi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_1

    const v0, 0x1fbe9

    invoke-interface {p1, v0}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    if-nez v0, :cond_6

    :cond_5
    if-eqz p1, :cond_1

    invoke-interface {p1, v5}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onNetworkFailed()V

    goto :goto_0

    :cond_7
    new-instance v1, Lcom/baidu/sapi2/shell/b;

    invoke-direct {v1}, Lcom/baidu/sapi2/shell/b;-><init>()V

    :try_start_0
    new-instance v0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->Q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "crypttype"

    const-string v3, "11"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tpl"

    iget-object v3, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "appid"

    iget-object v3, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/sapi2/utils/SapiUtils;->getClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    :cond_8
    const-string v0, "cuid"

    iget-object v3, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cert_id"

    const-string v3, "2"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "isdpass"

    const-string v3, "0"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "username"

    iget-object v3, p2, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->account:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "password"

    iget-object v3, p2, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->password:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "UBI"

    iget-object v3, p2, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->ubi:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "3"

    iget-object v3, p2, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "1"

    :goto_1
    const-string v3, "isphone"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "login_type"

    const-string v3, "3"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "key"

    invoke-virtual {v1}, Lcom/baidu/sapi2/shell/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sdk_version"

    const-string v1, "2"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pinfo"

    invoke-static {}, Lcom/baidu/sapi2/utils/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/baidu/sapi2/shell/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sig"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v0, v2}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/baidu/sapi2/shell/a;->u()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/baidu/sapi2/shell/a$h;

    invoke-direct {v4, p0, p1, p2}, Lcom/baidu/sapi2/shell/a$h;-><init>(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/SapiCallBack;Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    invoke-direct {p0, v5, p1, v1}, Lcom/baidu/sapi2/shell/a;->d(ILcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_9
    :try_start_1
    const-string v0, "0"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public a(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
            "<",
            "Lcom/baidu/sapi2/shell/response/GetPopularPortraitsInfoResponse;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onNetworkFailed()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->Q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "bduss"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v2}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/baidu/cloudsdk/common/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/baidu/sapi2/shell/a;->s()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/baidu/sapi2/shell/a$g;

    invoke-direct {v4, p0, p1, p2}, Lcom/baidu/sapi2/shell/a$g;-><init>(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto :goto_0
.end method

.method public a(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
            "<",
            "Lcom/baidu/sapi2/shell/response/GetPortraitResponse;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "can\'t be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bduss can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onNetworkFailed()V

    :goto_0
    return-void

    :cond_2
    new-instance v0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->Q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "appid"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tpl"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "clientid"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "clientip"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v1, "bduss"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "ptoken"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "stoken"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/baidu/sapi2/shell/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v6}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v1, v0}, Lcom/baidu/cloudsdk/common/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-string v0, "sig"

    invoke-virtual {v6, v0, v2}, Lcom/baidu/cloudsdk/common/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v8, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/baidu/sapi2/shell/a;->p()Ljava/lang/String;

    move-result-object v9

    new-instance v0, Lcom/baidu/sapi2/shell/a$e;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/baidu/sapi2/shell/a$e;-><init>(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9, v6, v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto/16 :goto_0
.end method

.method public a(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
            "<",
            "Lcom/baidu/sapi2/shell/response/SapiResponse;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "can\'t be null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bduss can\'t be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "series can\'t be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onNetworkFailed()V

    :goto_0
    return-void

    :cond_3
    new-instance v1, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v1, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->Q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "appid"

    iget-object v3, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "tpl"

    iget-object v3, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "clientid"

    iget-object v3, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "clientip"

    iget-object v3, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v2, "bduss"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "ptoken"

    move-object/from16 v0, p3

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "stoken"

    move-object/from16 v0, p4

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const-string v2, "serie"

    move-object/from16 v0, p5

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "num"

    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/baidu/sapi2/shell/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v9, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams;

    invoke-direct {v9}, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams;-><init>()V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v2, v1}, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const-string v1, "sig"

    invoke-virtual {v9, v1, v3}, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v11, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/baidu/sapi2/shell/a;->t()Ljava/lang/String;

    move-result-object v12

    new-instance v1, Lcom/baidu/sapi2/shell/a$d;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/baidu/sapi2/shell/a$d;-><init>(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v10, v11, v12, v9, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto/16 :goto_0
.end method

.method public a(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
            "<",
            "Lcom/baidu/sapi2/shell/response/SapiResponse;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/baidu/sapi2/shell/callback/SapiCallBack;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "can\'t be null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bduss can\'t be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-eqz p5, :cond_2

    move-object/from16 v0, p5

    array-length v1, v0

    if-nez v1, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "file can\'t be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {p1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onNetworkFailed()V

    :goto_0
    return-void

    :cond_4
    new-instance v1, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v1, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->Q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "appid"

    iget-object v3, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "tpl"

    iget-object v3, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "clientid"

    iget-object v3, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "clientip"

    iget-object v3, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string v2, "bduss"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "ptoken"

    move-object/from16 v0, p3

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "stoken"

    move-object/from16 v0, p4

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/baidu/sapi2/shell/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v9, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams;

    invoke-direct {v9}, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams;-><init>()V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v2, v1}, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    const-string v1, "sig"

    invoke-virtual {v9, v1, v3}, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "image/jpeg"

    :goto_2
    const-string v2, "file"

    new-instance v3, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p5

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v4, "portrait.jpg"

    invoke-virtual {v9, v2, v3, v4, v1}, Lcom/baidu/cloudsdk/common/http/MultipartRequestParams;->put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v11, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/baidu/sapi2/shell/a;->o()Ljava/lang/String;

    move-result-object v12

    new-instance v1, Lcom/baidu/sapi2/shell/a$k;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/baidu/sapi2/shell/a$k;-><init>(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    invoke-virtual {v10, v11, v12, v9, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v1, p6

    goto :goto_2
.end method

.method public a(Lcom/baidu/sapi2/shell/callback/VoiceCheckCallBack;Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/baidu/sapi2/shell/callback/VoiceCheckCallBack;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/VoiceCheckCallBack;->onFinish()V

    const v0, 0x27166

    invoke-virtual {p1, v0}, Lcom/baidu/sapi2/shell/callback/VoiceCheckCallBack;->onSystemError(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/VoiceCheckCallBack;->onFinish()V

    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/VoiceCheckCallBack;->onNetworkFailed()V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->Q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "appid"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tpl"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "clientid"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "clientip"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v1, "bduss"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/baidu/sapi2/shell/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sig"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v1, v0}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/baidu/sapi2/shell/a;->L()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/baidu/sapi2/shell/a$q;

    invoke-direct {v4, p0, p1, p2}, Lcom/baidu/sapi2/shell/a$q;-><init>(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/VoiceCheckCallBack;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto/16 :goto_0
.end method

.method public a(Lcom/baidu/sapi2/shell/callback/VoiceCheckCallBack;Ljava/lang/String;ZZ)V
    .locals 10

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/baidu/sapi2/shell/callback/VoiceCheckCallBack;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-boolean v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->voiceUserEnabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/VoiceCheckCallBack;->onFinish()V

    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/VoiceCheckCallBack;->onNotEnabled()V

    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/VoiceCheckCallBack;->onFinish()V

    const v0, 0x1fbd5

    invoke-virtual {p1, v0}, Lcom/baidu/sapi2/shell/callback/VoiceCheckCallBack;->onSystemError(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/VoiceCheckCallBack;->onFinish()V

    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/VoiceCheckCallBack;->onNetworkFailed()V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->Q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "appid"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tpl"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "clientid"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v1, "username"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_5

    const-string v1, "merge"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz p4, :cond_6

    const-string v1, "isphone"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/baidu/sapi2/shell/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sig"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v6, v0}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    iget-object v7, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v8, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/baidu/sapi2/shell/a;->L()Ljava/lang/String;

    move-result-object v9

    new-instance v0, Lcom/baidu/sapi2/shell/a$r;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/baidu/sapi2/shell/a$r;-><init>(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/VoiceCheckCallBack;Ljava/lang/String;ZZ)V

    invoke-virtual {v7, v8, v9, v6, v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto/16 :goto_0

    :cond_6
    const-string v1, "isphone"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public a(Lcom/baidu/sapi2/shell/callback/VoiceLoginCallBack;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/baidu/sapi2/shell/callback/VoiceLoginCallBack;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-boolean v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->voiceUserEnabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/VoiceLoginCallBack;->onFinish()V

    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/VoiceLoginCallBack;->onNotEnabled()V

    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "voiceMd5 can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "uid can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/VoiceLoginCallBack;->onFinish()V

    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/VoiceLoginCallBack;->onNetworkFailed()V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->Q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "appid"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tpl"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "clientid"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "clientip"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string v1, "voicemd5"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/baidu/sapi2/shell/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/baidu/sapi2/shell/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sig"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v1, v0}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/baidu/sapi2/shell/a;->N()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/baidu/sapi2/shell/a$A;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/baidu/sapi2/shell/a$A;-><init>(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/VoiceLoginCallBack;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto/16 :goto_0
.end method

.method public a(Lcom/baidu/sapi2/shell/callback/VoiceRegCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/baidu/sapi2/shell/callback/VoiceRegCallBack;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-boolean v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->voiceUserEnabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/VoiceRegCallBack;->onFinish()V

    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/VoiceRegCallBack;->onNotEnabled()V

    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "voiceMd5 can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/VoiceRegCallBack;->onFinish()V

    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/VoiceRegCallBack;->onNetworkFailed()V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->Q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "appid"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tpl"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "clientid"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cuid"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "clientip"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v1, "voicemd5"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "bduss"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "authsid"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-eqz p5, :cond_8

    const-string v1, "newuser"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/baidu/sapi2/shell/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sig"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v7, v0}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    iget-object v8, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v9, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/baidu/sapi2/shell/a;->M()Ljava/lang/String;

    move-result-object v10

    new-instance v0, Lcom/baidu/sapi2/shell/a$o;

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p5

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/baidu/sapi2/shell/a$o;-><init>(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/VoiceRegCallBack;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9, v10, v7, v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto/16 :goto_0

    :cond_8
    const-string v1, "newuser"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Landroid/content/Context;)Lcom/baidu/sapi2/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c;->q()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Landroid/content/Context;)Lcom/baidu/sapi2/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/sapi2/c;->a(Landroid/content/Context;)Lcom/baidu/sapi2/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sapi2/c;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Landroid/content/Context;)Lcom/baidu/sapi2/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/c;->c(Z)V

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v2}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v2, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->Q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "clientid"

    iget-object v4, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v3, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "clientip"

    iget-object v4, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v3, "tpl"

    iget-object v4, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "appid"

    iget-object v4, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "deviceid"

    iget-object v4, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/baidu/sapi2/utils/SapiUtils;->getCUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "app"

    iget-object v4, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "sync"

    invoke-static {p2, v0}, Lcom/baidu/sapi2/utils/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "time"

    iget-object v3, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/sapi2/c;->a(Landroid/content/Context;)Lcom/baidu/sapi2/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/sapi2/c;->u()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/sapi2/c;->a(Landroid/content/Context;)Lcom/baidu/sapi2/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/sapi2/c;->t()I

    move-result v3

    invoke-static {v1, v3}, Lcom/baidu/sapi2/share/SoftToken;->getToken(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v2, v0}, Lcom/baidu/sapi2/shell/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sign"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/baidu/sapi2/shell/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sig"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v0, v2}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/baidu/sapi2/shell/a;->P()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/baidu/sapi2/shell/a$a;

    invoke-direct {v4, p0, p3, p1, p2}, Lcom/baidu/sapi2/shell/a$a;-><init>(Lcom/baidu/sapi2/shell/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public a(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
            "<",
            "Lcom/baidu/sapi2/shell/response/SapiAccountResponse;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onNetworkFailed()V

    :cond_2
    move v0, v7

    goto :goto_0

    :cond_3
    new-instance v4, Lcom/baidu/sapi2/shell/b;

    invoke-direct {v4}, Lcom/baidu/sapi2/shell/b;-><init>()V

    new-instance v0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->Q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v9, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->S()Ljava/lang/String;

    move-result-object v10

    new-instance v0, Lcom/baidu/sapi2/shell/a$i;

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/baidu/sapi2/shell/a$i;-><init>(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/SapiCallBack;ZLcom/baidu/sapi2/shell/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9, v10, v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    move v0, v7

    goto :goto_0
.end method

.method b(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/baidu/sapi2/shell/a;->a(Ljava/lang/String;)I

    move-result v0

    const v1, 0x1adb0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method b()V
    .locals 5

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiConfiguration;->b2cSyncEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Landroid/content/Context;)Lcom/baidu/sapi2/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c;->o()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Landroid/content/Context;)Lcom/baidu/sapi2/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    new-instance v0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->Q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "clientid"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "clientip"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v1, "tpl"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appid"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "deviceid"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/sapi2/utils/SapiUtils;->getCUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "time"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/sapi2/c;->a(Landroid/content/Context;)Lcom/baidu/sapi2/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sapi2/c;->u()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/baidu/sapi2/shell/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sig"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v1, v0}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/baidu/sapi2/shell/a;->O()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/baidu/sapi2/shell/a$u;

    invoke-direct {v4, p0}, Lcom/baidu/sapi2/shell/a$u;-><init>(Lcom/baidu/sapi2/shell/a;)V

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto/16 :goto_0
.end method

.method b(ILcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
            "<",
            "Lcom/baidu/sapi2/shell/response/SapiResponse;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_3

    new-instance v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    invoke-direct {v0}, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "displayname"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->displayname:Ljava/lang/String;

    const-string v2, "uid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->uid:Ljava/lang/String;

    const-string v2, "bduss"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->bduss:Ljava/lang/String;

    const-string v2, "ptoken"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->ptoken:Ljava/lang/String;

    const-string v2, "error_code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "error_msg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/baidu/sapi2/SapiAccount;

    invoke-direct {v2}, Lcom/baidu/sapi2/SapiAccount;-><init>()V

    iget-object v3, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->uid:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    iget-object v3, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->bduss:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    iget-object v3, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->displayname:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/sapi2/SapiAccount;->displayname:Ljava/lang/String;

    iget-object v3, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->stoken:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/sapi2/SapiAccount;->stoken:Ljava/lang/String;

    iget-object v0, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->ptoken:Ljava/lang/String;

    iput-object v0, v2, Lcom/baidu/sapi2/SapiAccount;->ptoken:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/sapi2/SapiAccount;->app:Ljava/lang/String;

    const-string v0, "device_token"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Landroid/content/Context;)Lcom/baidu/sapi2/c;

    move-result-object v0

    const-string v3, "device_token"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/baidu/sapi2/c;->a(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/baidu/sapi2/share/b;->a()Lcom/baidu/sapi2/share/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/sapi2/share/b;->a(Lcom/baidu/sapi2/SapiAccount;)V

    :cond_1
    if-eqz p2, :cond_2

    const-string v0, "error_code"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "error_code"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSuccess(Lcom/baidu/sapi2/shell/response/SapiResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz p2, :cond_2

    const/16 v0, -0x64

    invoke-interface {p2, v0}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_2

    invoke-interface {p2, p1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method b(Lcom/baidu/sapi2/shell/callback/OAuthCallBack;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Lcom/baidu/sapi2/shell/callback/OAuthCallBack;->onFinish()V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "errno"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-virtual {p1, v1}, Lcom/baidu/sapi2/shell/callback/OAuthCallBack;->onSystemError(I)V

    :goto_0
    return-void

    :pswitch_0
    new-instance v2, Lcom/baidu/sapi2/shell/response/OAuthResponse;

    invoke-direct {v2}, Lcom/baidu/sapi2/shell/response/OAuthResponse;-><init>()V

    iput v1, v2, Lcom/baidu/sapi2/shell/response/OAuthResponse;->errorCode:I

    const-string v1, "errmsg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/baidu/sapi2/shell/response/OAuthResponse;->errorMsg:Ljava/lang/String;

    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/baidu/sapi2/shell/response/OAuthResponse;->accessToken:Ljava/lang/String;

    const-string v1, "expires_in"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v2, Lcom/baidu/sapi2/shell/response/OAuthResponse;->expiresIn:I

    const-string v1, "refresh_token"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/baidu/sapi2/shell/response/OAuthResponse;->refreshToken:Ljava/lang/String;

    const-string v1, "session_key"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/baidu/sapi2/shell/response/OAuthResponse;->sessionKey:Ljava/lang/String;

    const-string v1, "session_secret"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/sapi2/shell/response/OAuthResponse;->sessionSecret:Ljava/lang/String;

    iput-object p2, v2, Lcom/baidu/sapi2/shell/response/OAuthResponse;->extra:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/baidu/sapi2/shell/callback/OAuthCallBack;->onSuccess(Lcom/baidu/sapi2/shell/response/SapiResponse;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v0, -0x64

    invoke-virtual {p1, v0}, Lcom/baidu/sapi2/shell/callback/OAuthCallBack;->onSystemError(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method b(Lcom/baidu/sapi2/shell/callback/SapiCallBack;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
            "<",
            "Lcom/baidu/sapi2/shell/response/SapiResponse;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->deviceLoginSignKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/c;->a(Landroid/content/Context;)Lcom/baidu/sapi2/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/c;->b()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onNetworkFailed()V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->Q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/utils/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/sapi2/utils/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ptpl"

    iget-object v3, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "device_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device_info"

    invoke-static {}, Lcom/baidu/sapi2/utils/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "package_sign"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->deviceLoginSignKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v1, v0}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/baidu/sapi2/shell/a;->C()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/baidu/sapi2/shell/a$y;

    invoke-direct {v4, p0, p1}, Lcom/baidu/sapi2/shell/a$y;-><init>(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/SapiCallBack;)V

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
            "<",
            "Lcom/baidu/sapi2/shell/response/SapiResponse;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onNetworkFailed()V

    goto :goto_0

    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_0

    const/16 v1, 0x101

    invoke-interface {p1, v1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->Q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "username"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "clientid"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "clientip"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v1, "tpl"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appid"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/baidu/sapi2/shell/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sig"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v1, v0}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/baidu/sapi2/shell/a;->H()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/baidu/sapi2/shell/a$t;

    invoke-direct {v4, p0, p1, p2}, Lcom/baidu/sapi2/shell/a$t;-><init>(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method c()V
    .locals 5

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->Q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/c;->a(Landroid/content/Context;)Lcom/baidu/sapi2/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/c;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "device_id"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/sapi2/utils/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device_token"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/sapi2/c;->a(Landroid/content/Context;)Lcom/baidu/sapi2/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sapi2/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-instance v1, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v1, v0}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/baidu/sapi2/shell/a;->A()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/baidu/sapi2/shell/a$v;

    invoke-direct {v4, p0}, Lcom/baidu/sapi2/shell/a$v;-><init>(Lcom/baidu/sapi2/shell/a;)V

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto :goto_0
.end method

.method c(ILcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
            "<",
            "Lcom/baidu/sapi2/shell/response/SapiAccountResponse;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_2

    new-instance v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    invoke-direct {v0}, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "displayname"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->displayname:Ljava/lang/String;

    const-string v2, "uname"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->username:Ljava/lang/String;

    const-string v2, "uid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->uid:Ljava/lang/String;

    const-string v2, "bduss"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->bduss:Ljava/lang/String;

    const-string v2, "ptoken"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->ptoken:Ljava/lang/String;

    const-string v2, "stoken"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->stoken:Ljava/lang/String;

    const-string v2, "newreg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->newReg:Z

    iget-boolean v2, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->newReg:Z

    if-eqz v2, :cond_0

    const-string v2, "authsid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->authSid:Ljava/lang/String;

    :cond_0
    if-eqz p2, :cond_1

    const-string v2, "errno"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    invoke-interface {p2, p1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    :cond_1
    :goto_0
    return-void

    :sswitch_0
    invoke-interface {p2, v0}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSuccess(Lcom/baidu/sapi2/shell/response/SapiResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz p2, :cond_1

    const/16 v0, -0x64

    invoke-interface {p2, v0}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    goto :goto_0

    :sswitch_1
    :try_start_1
    const-string v0, "errno"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x10 -> :sswitch_1
        0x2e640 -> :sswitch_1
    .end sparse-switch
.end method

.method public c(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
            "<",
            "Lcom/baidu/sapi2/shell/response/SapiAccountResponse;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onNetworkFailed()V

    goto :goto_0

    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_0

    const/16 v1, -0x67

    invoke-interface {p1, v1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->Q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "sms"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "clientid"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "clientip"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v1, "tpl"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appid"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/baidu/sapi2/shell/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sig"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v1, v0}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/baidu/sapi2/shell/a;->G()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/baidu/sapi2/shell/a$s;

    invoke-direct {v4, p0, p1, p2}, Lcom/baidu/sapi2/shell/a$s;-><init>(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method d()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->R()Lcom/baidu/sapi2/utils/enums/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/Domain;->getWap()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/passport/login"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method d(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
            "<",
            "Lcom/baidu/sapi2/shell/response/SapiResponse;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->deviceLoginSignKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onNetworkFailed()V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->Q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/utils/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/sapi2/utils/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ptpl"

    iget-object v3, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "device_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device_info"

    invoke-static {}, Lcom/baidu/sapi2/utils/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "force_reg_token"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v1, v0}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/baidu/sapi2/shell/a;->D()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/baidu/sapi2/shell/a$x;

    invoke-direct {v4, p0, p1}, Lcom/baidu/sapi2/shell/a$x;-><init>(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/SapiCallBack;)V

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    goto :goto_0
.end method

.method e()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->R()Lcom/baidu/sapi2/utils/enums/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/Domain;->getWap()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/passport/getpass"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method e(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
            "<",
            "Lcom/baidu/sapi2/shell/response/SapiResponse;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->deviceLoginSignKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onNetworkFailed()V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->Q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/utils/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/sapi2/utils/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ptpl"

    iget-object v3, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "device_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device_token"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "package_sign"

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->deviceLoginSignKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v1, v0}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/baidu/sapi2/shell/a;->c:Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    iget-object v2, p0, Lcom/baidu/sapi2/shell/a;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/baidu/sapi2/shell/a;->B()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/baidu/sapi2/shell/a$C;

    invoke-direct {v4, p0, p1}, Lcom/baidu/sapi2/shell/a$C;-><init>(Lcom/baidu/sapi2/shell/a;Lcom/baidu/sapi2/shell/callback/SapiCallBack;)V

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method f()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->R()Lcom/baidu/sapi2/utils/enums/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/Domain;->getWap()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/wp/wappassword"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method f(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
            "<",
            "Lcom/baidu/sapi2/shell/response/SapiResponse;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "errno"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-interface {p1, v0}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    :goto_0
    return-void

    :pswitch_0
    new-instance v1, Lcom/baidu/sapi2/shell/response/SapiResponse;

    invoke-direct {v1}, Lcom/baidu/sapi2/shell/response/SapiResponse;-><init>()V

    iput v0, v1, Lcom/baidu/sapi2/shell/response/SapiResponse;->errorCode:I

    const-string v0, "\u77ed\u4fe1\u9a8c\u8bc1\u7801\u53d1\u9001\u6210\u529f"

    iput-object v0, v1, Lcom/baidu/sapi2/shell/response/SapiResponse;->errorMsg:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSuccess(Lcom/baidu/sapi2/shell/response/SapiResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v0, -0x64

    invoke-interface {p1, v0}, Lcom/baidu/sapi2/shell/callback/SapiCallBack;->onSystemError(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method g()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->R()Lcom/baidu/sapi2/utils/enums/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/Domain;->getWap()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/wp/recordindex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method h()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->R()Lcom/baidu/sapi2/utils/enums/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/Domain;->getWap()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v2/?bindingaccount&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method i()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->R()Lcom/baidu/sapi2/utils/enums/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/Domain;->getWap()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v2/?bindingret"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method j()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->R()Lcom/baidu/sapi2/utils/enums/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/Domain;->getWap()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/passport/authwidget"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method k()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->R()Lcom/baidu/sapi2/utils/enums/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/Domain;->getWap()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/wp/unitewidget"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method l()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->R()Lcom/baidu/sapi2/utils/enums/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/Domain;->getWap()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/wp/accountwidget-init"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method m()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->R()Lcom/baidu/sapi2/utils/enums/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/Domain;->getWap()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/wp/api/security/antireplaytoken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method n()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->d:Lcom/baidu/sapi2/utils/e;

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v2/sapi/center/filluname"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method o()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->d:Lcom/baidu/sapi2/utils/e;

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v2/sapi/center/setportrait"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method p()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->d:Lcom/baidu/sapi2/utils/e;

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v2/sapi/center/getportrait"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method q()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->R()Lcom/baidu/sapi2/utils/enums/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/Domain;->getPortraitUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/sys/history"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method r()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->d:Lcom/baidu/sapi2/utils/e;

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v2/sapi/center/getuinfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method s()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->R()Lcom/baidu/sapi2/utils/enums/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/Domain;->getPortraitUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/sys/portrait/hotitemlist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method t()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/a;->R()Lcom/baidu/sapi2/utils/enums/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/Domain;->getPortraitUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/sys/sethotitem"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method u()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->d:Lcom/baidu/sapi2/utils/e;

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v2/sapi/login"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->d:Lcom/baidu/sapi2/utils/e;

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/phoenix/account/ssologin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->d:Lcom/baidu/sapi2/utils/e;

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/phoenix/account/ssologin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->d:Lcom/baidu/sapi2/utils/e;

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/phoenix/account/startlogin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->d:Lcom/baidu/sapi2/utils/e;

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/phoenix/account/afterauth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/shell/a;->d:Lcom/baidu/sapi2/utils/e;

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/phoenix/account/finishbind"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
