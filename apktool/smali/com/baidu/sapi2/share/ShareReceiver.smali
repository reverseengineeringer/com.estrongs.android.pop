.class public final Lcom/baidu/sapi2/share/ShareReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

.field private static c:Lcom/baidu/sapi2/c;

.field private static d:Lcom/baidu/sapi2/share/f;

.field private static e:Z

.field private static f:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/sapi2/share/ShareReceiver;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;
    .locals 1

    sget-object v0, Lcom/baidu/sapi2/share/ShareReceiver;->b:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    return-object v0
.end method

.method static synthetic b()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/baidu/sapi2/share/ShareReceiver;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method a(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    sput-object p1, Lcom/baidu/sapi2/share/ShareReceiver;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/baidu/sapi2/c;->a(Landroid/content/Context;)Lcom/baidu/sapi2/c;

    move-result-object v0

    sput-object v0, Lcom/baidu/sapi2/share/ShareReceiver;->c:Lcom/baidu/sapi2/c;

    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getSapiConfiguration()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiConfiguration;->loginShareStrategy()Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    move-result-object v0

    sput-object v0, Lcom/baidu/sapi2/share/ShareReceiver;->b:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    new-instance v0, Lcom/baidu/sapi2/share/ShareReceiver$a;

    invoke-direct {v0, p0}, Lcom/baidu/sapi2/share/ShareReceiver$a;-><init>(Lcom/baidu/sapi2/share/ShareReceiver;)V

    sput-object v0, Lcom/baidu/sapi2/share/ShareReceiver;->d:Lcom/baidu/sapi2/share/f;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/sapi2/share/ShareReceiver;->e:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/sapi2/share/ShareReceiver;->e:Z

    goto :goto_0
.end method

.method a(Lcom/baidu/sapi2/share/ShareModel;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x4
    .end annotation

    sget-object v0, Lcom/baidu/sapi2/share/ShareReceiver;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/baidu/sapi2/share/ShareModel;->b(Landroid/content/Context;)V

    new-instance v1, Landroid/content/Intent;

    const-string v0, "baidu.intent.action.SHARE_V6"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/baidu/sapi2/share/ShareModel;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Lcom/baidu/sapi2/share/ShareModel;

    sget-object v0, Lcom/baidu/sapi2/share/ShareEvent;->SYNC_ACK:Lcom/baidu/sapi2/share/ShareEvent;

    invoke-direct {v2, v0}, Lcom/baidu/sapi2/share/ShareModel;-><init>(Lcom/baidu/sapi2/share/ShareEvent;)V

    sget-object v0, Lcom/baidu/sapi2/share/ShareReceiver;->c:Lcom/baidu/sapi2/c;

    invoke-virtual {v0}, Lcom/baidu/sapi2/c;->d()Lcom/baidu/sapi2/SapiAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v3, Lcom/baidu/sapi2/share/ShareReceiver;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/sapi2/utils/SapiUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/baidu/sapi2/SapiAccount;->app:Ljava/lang/String;

    :cond_0
    invoke-virtual {v2, v0}, Lcom/baidu/sapi2/share/ShareModel;->a(Lcom/baidu/sapi2/SapiAccount;)V

    invoke-virtual {v2}, Lcom/baidu/sapi2/share/ShareModel;->a()Ljava/util/List;

    move-result-object v0

    sget-object v3, Lcom/baidu/sapi2/share/ShareReceiver;->c:Lcom/baidu/sapi2/c;

    invoke-virtual {v3}, Lcom/baidu/sapi2/c;->e()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Lcom/baidu/sapi2/share/ShareModel;->a()Ljava/util/List;

    move-result-object v0

    sget-object v3, Lcom/baidu/sapi2/share/ShareReceiver;->c:Lcom/baidu/sapi2/c;

    invoke-virtual {v3}, Lcom/baidu/sapi2/c;->f()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Lcom/baidu/sapi2/share/ShareModel;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/SapiAccount;

    sget-object v4, Lcom/baidu/sapi2/share/ShareReceiver;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/baidu/sapi2/utils/SapiUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/baidu/sapi2/SapiAccount;->app:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/baidu/sapi2/share/ShareReceiver;->a:Landroid/content/Context;

    sget-object v3, Lcom/baidu/sapi2/share/ShareReceiver;->b:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    invoke-static {v0, v3, v2}, Lcom/baidu/sapi2/share/a;->b(Landroid/content/Context;Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;Lcom/baidu/sapi2/share/ShareModel;)V

    const-string v0, "LOGIN_SHARE_MODEL"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    sget-object v0, Lcom/baidu/sapi2/share/ShareReceiver;->c:Lcom/baidu/sapi2/c;

    invoke-virtual {v0}, Lcom/baidu/sapi2/c;->l()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "RELOGIN_CREDENTIALS"

    sget-object v2, Lcom/baidu/sapi2/share/ShareReceiver;->a:Landroid/content/Context;

    sget-object v3, Lcom/baidu/sapi2/share/ShareReceiver;->c:Lcom/baidu/sapi2/c;

    invoke-virtual {v3}, Lcom/baidu/sapi2/c;->l()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/sapi2/share/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const-string v0, "RUNTIME_ENVIRONMENT"

    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiAccountManager;->getSapiConfiguration()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v2

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->environment:Lcom/baidu/sapi2/utils/enums/Domain;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-le v0, v2, :cond_3

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_3
    sget-object v0, Lcom/baidu/sapi2/share/ShareReceiver;->a:Landroid/content/Context;

    const-string v2, "com.baidu.permission.SHARE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getReceiveShareListener()Lcom/baidu/sapi2/SapiAccountManager$ReceiveShareListener;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/baidu/sapi2/share/ShareReceiver;->f:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/baidu/sapi2/share/ShareReceiver;->f:Landroid/os/Handler;

    :cond_0
    sget-object v0, Lcom/baidu/sapi2/share/ShareReceiver;->f:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/sapi2/share/ShareReceiver$c;

    invoke-direct {v1, p0}, Lcom/baidu/sapi2/share/ShareReceiver$c;-><init>(Lcom/baidu/sapi2/share/ShareReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    sget-boolean v0, Lcom/baidu/sapi2/share/ShareReceiver;->e:Z

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/baidu/sapi2/share/ShareReceiver;->a(Landroid/content/Context;)V

    :cond_2
    sget-boolean v0, Lcom/baidu/sapi2/share/ShareReceiver;->e:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/baidu/sapi2/share/ShareReceiver;->b:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    sget-object v1, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->DISABLED:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    if-ne v0, v1, :cond_4

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "baidu.intent.action.SHARE_V6"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "LOGIN_SHARE_MODEL"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/share/ShareModel;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/baidu/sapi2/share/ShareModel;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/baidu/sapi2/share/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_5
    const-string v1, "RUNTIME_ENVIRONMENT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v1, "RUNTIME_ENVIRONMENT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    instance-of v1, v1, Lcom/baidu/sapi2/utils/enums/Domain;

    if-eqz v1, :cond_6

    const-string v1, "RUNTIME_ENVIRONMENT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/baidu/sapi2/utils/enums/Domain;

    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiAccountManager;->getSapiConfiguration()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v2

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->environment:Lcom/baidu/sapi2/utils/enums/Domain;

    if-ne v1, v2, :cond_3

    :cond_6
    const-string v1, "RELOGIN_CREDENTIALS"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/baidu/sapi2/share/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/sapi2/share/ShareReceiver;->d:Lcom/baidu/sapi2/share/f;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/baidu/sapi2/share/ShareReceiver;->d:Lcom/baidu/sapi2/share/f;

    invoke-interface {v1, v0}, Lcom/baidu/sapi2/share/f;->a(Lcom/baidu/sapi2/share/ShareModel;)V

    goto :goto_0
.end method
