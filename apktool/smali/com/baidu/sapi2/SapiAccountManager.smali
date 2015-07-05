.class public final Lcom/baidu/sapi2/SapiAccountManager;
.super Ljava/lang/Object;


# static fields
.field public static final SESSION_BDUSS:Ljava/lang/String; = "bduss"

.field public static final SESSION_DISPLAYNAME:Ljava/lang/String; = "displayname"

.field public static final SESSION_PTOKEN:Ljava/lang/String; = "ptoken"

.field public static final SESSION_STOKEN:Ljava/lang/String; = "stoken"

.field public static final SESSION_UID:Ljava/lang/String; = "uid"

.field public static final VERSION_CODE:I = 0x2f

.field public static final VERSION_NAME:Ljava/lang/String; = "6.9.2"

.field private static a:Lcom/baidu/sapi2/SapiAccountManager;

.field private static b:Lcom/baidu/sapi2/SapiConfiguration;

.field private static c:Lcom/baidu/sapi2/c;

.field private static d:Lcom/baidu/sapi2/shell/SapiAccountService;

.field private static e:Lcom/baidu/sapi2/SapiAccountManager$SilentShareListener;

.field private static f:Lcom/baidu/sapi2/SapiAccountManager$ReceiveShareListener;

.field private static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/sapi2/SapiAccountManager;->g:Ljava/util/List;

    sget-object v0, Lcom/baidu/sapi2/SapiAccountManager;->g:Ljava/util/List;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "uid"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "displayname"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "bduss"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "ptoken"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "stoken"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic b()Lcom/baidu/sapi2/shell/SapiAccountService;
    .locals 1

    sget-object v0, Lcom/baidu/sapi2/SapiAccountManager;->d:Lcom/baidu/sapi2/shell/SapiAccountService;

    return-object v0
.end method

.method static synthetic c()Lcom/baidu/sapi2/c;
    .locals 1

    sget-object v0, Lcom/baidu/sapi2/SapiAccountManager;->c:Lcom/baidu/sapi2/c;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/baidu/sapi2/SapiAccountManager;
    .locals 2

    const-class v1, Lcom/baidu/sapi2/SapiAccountManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/sapi2/SapiAccountManager;->a:Lcom/baidu/sapi2/SapiAccountManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/sapi2/SapiAccountManager;

    invoke-direct {v0}, Lcom/baidu/sapi2/SapiAccountManager;-><init>()V

    sput-object v0, Lcom/baidu/sapi2/SapiAccountManager;->a:Lcom/baidu/sapi2/SapiAccountManager;

    :cond_0
    sget-object v0, Lcom/baidu/sapi2/SapiAccountManager;->a:Lcom/baidu/sapi2/SapiAccountManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getReceiveShareListener()Lcom/baidu/sapi2/SapiAccountManager$ReceiveShareListener;
    .locals 1

    sget-object v0, Lcom/baidu/sapi2/SapiAccountManager;->f:Lcom/baidu/sapi2/SapiAccountManager$ReceiveShareListener;

    return-object v0
.end method

.method public static getSilentShareListener()Lcom/baidu/sapi2/SapiAccountManager$SilentShareListener;
    .locals 1

    sget-object v0, Lcom/baidu/sapi2/SapiAccountManager;->e:Lcom/baidu/sapi2/SapiAccountManager$SilentShareListener;

    return-object v0
.end method

.method public static registerReceiveShareListener(Lcom/baidu/sapi2/SapiAccountManager$ReceiveShareListener;)V
    .locals 0

    sput-object p0, Lcom/baidu/sapi2/SapiAccountManager;->f:Lcom/baidu/sapi2/SapiAccountManager$ReceiveShareListener;

    return-void
.end method

.method public static registerSilentShareListener(Lcom/baidu/sapi2/SapiAccountManager$SilentShareListener;)V
    .locals 0

    sput-object p0, Lcom/baidu/sapi2/SapiAccountManager;->e:Lcom/baidu/sapi2/SapiAccountManager$SilentShareListener;

    return-void
.end method

.method public static unregisterReceiveShareListener()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/sapi2/SapiAccountManager;->f:Lcom/baidu/sapi2/SapiAccountManager$ReceiveShareListener;

    return-void
.end method

.method public static unregisterSilentShareListener()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/sapi2/SapiAccountManager;->e:Lcom/baidu/sapi2/SapiAccountManager$SilentShareListener;

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    sget-object v0, Lcom/baidu/sapi2/SapiAccountManager;->b:Lcom/baidu/sapi2/SapiConfiguration;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " have not been initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method a(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/baidu/sapi2/SapiAccountManager;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAccountService()Lcom/baidu/sapi2/shell/SapiAccountService;
    .locals 1

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiAccountManager;->a()V

    sget-object v0, Lcom/baidu/sapi2/SapiAccountManager;->d:Lcom/baidu/sapi2/shell/SapiAccountService;

    return-object v0
.end method

.method public getLoginAccounts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/sapi2/SapiAccount;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiAccountManager;->a()V

    sget-object v0, Lcom/baidu/sapi2/SapiAccountManager;->c:Lcom/baidu/sapi2/c;

    invoke-virtual {v0}, Lcom/baidu/sapi2/c;->f()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSapiConfiguration()Lcom/baidu/sapi2/SapiConfiguration;
    .locals 1

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiAccountManager;->a()V

    sget-object v0, Lcom/baidu/sapi2/SapiAccountManager;->b:Lcom/baidu/sapi2/SapiConfiguration;

    return-object v0
.end method

.method public getSession()Lcom/baidu/sapi2/SapiAccount;
    .locals 1

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiAccountManager;->a()V

    sget-object v0, Lcom/baidu/sapi2/SapiAccountManager;->c:Lcom/baidu/sapi2/c;

    invoke-virtual {v0}, Lcom/baidu/sapi2/c;->d()Lcom/baidu/sapi2/SapiAccount;

    move-result-object v0

    return-object v0
.end method

.method public getSession(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiAccountManager;->a()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/sapi2/SapiAccountManager;->getSession(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSession(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiAccountManager;->a()V

    invoke-virtual {p0, p1}, Lcom/baidu/sapi2/SapiAccountManager;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiAccountManager;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiAccountManager;->getSession()Lcom/baidu/sapi2/SapiAccount;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiAccountManager;->getSession()Lcom/baidu/sapi2/SapiAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccount;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public getShareAccounts()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/sapi2/SapiAccount;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiAccountManager;->a()V

    sget-object v0, Lcom/baidu/sapi2/SapiAccountManager;->c:Lcom/baidu/sapi2/c;

    invoke-virtual {v0}, Lcom/baidu/sapi2/c;->e()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/SapiAccount;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->isValidAccount(Lcom/baidu/sapi2/SapiAccount;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/baidu/sapi2/SapiAccountManager;->c:Lcom/baidu/sapi2/c;

    invoke-virtual {v3, v0}, Lcom/baidu/sapi2/c;->d(Lcom/baidu/sapi2/SapiAccount;)V

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-object v1
.end method

.method public declared-synchronized init(Lcom/baidu/sapi2/SapiConfiguration;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " initialized failed: SapiConfiguration can\'t be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/baidu/sapi2/SapiAccountManager;->b:Lcom/baidu/sapi2/SapiConfiguration;

    if-nez v0, :cond_1

    sput-object p1, Lcom/baidu/sapi2/SapiAccountManager;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, p1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Landroid/content/Context;)Lcom/baidu/sapi2/c;

    move-result-object v0

    sput-object v0, Lcom/baidu/sapi2/SapiAccountManager;->c:Lcom/baidu/sapi2/c;

    new-instance v0, Lcom/baidu/sapi2/shell/SapiAccountService;

    iget-object v1, p1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/sapi2/shell/SapiAccountService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/sapi2/SapiAccountManager;->d:Lcom/baidu/sapi2/shell/SapiAccountService;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/baidu/sapi2/SapiAccountManager$1;

    invoke-direct {v1, p0, p1}, Lcom/baidu/sapi2/SapiAccountManager$1;-><init>(Lcom/baidu/sapi2/SapiAccountManager;Lcom/baidu/sapi2/SapiConfiguration;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " had already been initialized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/baidu/sapi2/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public isLogin()Z
    .locals 1

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiAccountManager;->a()V

    sget-object v0, Lcom/baidu/sapi2/SapiAccountManager;->c:Lcom/baidu/sapi2/c;

    invoke-virtual {v0}, Lcom/baidu/sapi2/c;->d()Lcom/baidu/sapi2/SapiAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logout()V
    .locals 1

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiAccountManager;->a()V

    invoke-static {}, Lcom/baidu/sapi2/share/b;->a()Lcom/baidu/sapi2/share/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/share/b;->b()V

    return-void
.end method

.method public removeLoginAccount(Lcom/baidu/sapi2/SapiAccount;)V
    .locals 1

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiAccountManager;->a()V

    sget-object v0, Lcom/baidu/sapi2/SapiAccountManager;->c:Lcom/baidu/sapi2/c;

    invoke-virtual {v0, p1}, Lcom/baidu/sapi2/c;->e(Lcom/baidu/sapi2/SapiAccount;)V

    return-void
.end method

.method public validate(Lcom/baidu/sapi2/SapiAccount;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiAccountManager;->a()V

    invoke-static {p1}, Lcom/baidu/sapi2/utils/SapiUtils;->isValidAccount(Lcom/baidu/sapi2/SapiAccount;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/baidu/sapi2/share/b;->a()Lcom/baidu/sapi2/share/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/sapi2/share/b;->a(Lcom/baidu/sapi2/SapiAccount;)V

    const/4 v0, 0x1

    goto :goto_0
.end method
