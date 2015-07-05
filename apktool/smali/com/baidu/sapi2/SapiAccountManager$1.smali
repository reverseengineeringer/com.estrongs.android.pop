.class Lcom/baidu/sapi2/SapiAccountManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/SapiConfiguration;

.field final synthetic b:Lcom/baidu/sapi2/SapiAccountManager;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiAccountManager;Lcom/baidu/sapi2/SapiConfiguration;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiAccountManager$1;->b:Lcom/baidu/sapi2/SapiAccountManager;

    iput-object p2, p0, Lcom/baidu/sapi2/SapiAccountManager$1;->a:Lcom/baidu/sapi2/SapiConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountManager$1;->a:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccountManager$1;->a:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->getClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountManager$1;->a:Lcom/baidu/sapi2/SapiConfiguration;

    invoke-static {}, Lcom/baidu/sapi2/utils/SapiUtils;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/sapi2/share/b;->c()V

    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountManager$1;->a:Lcom/baidu/sapi2/SapiConfiguration;

    iget-boolean v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->syncCacheOnInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountManager$1;->a:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiCache;->init(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountManager$1;->a:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->deviceLoginSignKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->b()Lcom/baidu/sapi2/shell/SapiAccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/shell/SapiAccountService;->p()V

    :cond_1
    invoke-static {}, Lcom/baidu/sapi2/utils/a;->a()V

    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->c()Lcom/baidu/sapi2/c;

    move-result-object v0

    const-string v1, "6.9.2"

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/c;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->c()Lcom/baidu/sapi2/c;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccountManager$1;->a:Lcom/baidu/sapi2/SapiConfiguration;

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiConfiguration;->loginShareStrategy()Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;)V

    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountManager$1;->a:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/b;->a(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
