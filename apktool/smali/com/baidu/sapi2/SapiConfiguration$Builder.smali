.class public Lcom/baidu/sapi2/SapiConfiguration$Builder;
.super Ljava/lang/Object;


# instance fields
.field private A:Z

.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/baidu/sapi2/utils/enums/Domain;

.field private g:Lcom/baidu/sapi2/utils/enums/BindType;

.field private h:Lcom/baidu/sapi2/utils/enums/RegistMode;

.field private i:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/sapi2/utils/enums/FastLoginFeature;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Lcom/baidu/sapi2/utils/enums/Switch;

.field private t:Ljava/lang/String;

.field private u:Z

.field private v:Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->l:Z

    iput-boolean v1, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->p:Z

    iput-boolean v1, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->q:Z

    iput-boolean v2, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->r:Z

    sget-object v0, Lcom/baidu/sapi2/utils/enums/Switch;->OFF:Lcom/baidu/sapi2/utils/enums/Switch;

    iput-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->s:Lcom/baidu/sapi2/utils/enums/Switch;

    iput-boolean v1, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->u:Z

    iput-boolean v1, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->w:Z

    iput-boolean v2, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->x:Z

    iput-boolean v1, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->y:Z

    iput-boolean v1, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->z:Z

    iput-boolean v1, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->A:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic A(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->A:Z

    return v0
.end method

.method static synthetic a(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Lcom/baidu/sapi2/utils/enums/Domain;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->f:Lcom/baidu/sapi2/utils/enums/Domain;

    return-object v0
.end method

.method static synthetic g(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Lcom/baidu/sapi2/utils/enums/BindType;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->g:Lcom/baidu/sapi2/utils/enums/BindType;

    return-object v0
.end method

.method static synthetic h(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Lcom/baidu/sapi2/utils/enums/RegistMode;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->h:Lcom/baidu/sapi2/utils/enums/RegistMode;

    return-object v0
.end method

.method static synthetic i(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->i:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    return-object v0
.end method

.method static synthetic j(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->j:Ljava/util/List;

    return-object v0
.end method

.method static synthetic k(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->l:Z

    return v0
.end method

.method static synthetic m(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic p(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->p:Z

    return v0
.end method

.method static synthetic q(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->q:Z

    return v0
.end method

.method static synthetic r(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->r:Z

    return v0
.end method

.method static synthetic s(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Lcom/baidu/sapi2/utils/enums/Switch;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->s:Lcom/baidu/sapi2/utils/enums/Switch;

    return-object v0
.end method

.method static synthetic t(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic u(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->u:Z

    return v0
.end method

.method static synthetic v(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->v:Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;

    return-object v0
.end method

.method static synthetic w(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->w:Z

    return v0
.end method

.method static synthetic x(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->x:Z

    return v0
.end method

.method static synthetic y(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->y:Z

    return v0
.end method

.method static synthetic z(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->z:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/baidu/sapi2/SapiConfiguration;
    .locals 4

    iget-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tpl, appId, appsignkey can not be null, please use setProductLineInfo(String tpl, String appId, String appSignKey)to initialize them."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->f:Lcom/baidu/sapi2/utils/enums/Domain;

    if-nez v0, :cond_2

    sget-object v0, Lcom/baidu/sapi2/utils/enums/Domain;->DOMAIN_ONLINE:Lcom/baidu/sapi2/utils/enums/Domain;

    iput-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->f:Lcom/baidu/sapi2/utils/enums/Domain;

    :cond_2
    iget-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->g:Lcom/baidu/sapi2/utils/enums/BindType;

    if-nez v0, :cond_3

    sget-object v0, Lcom/baidu/sapi2/utils/enums/BindType;->IMPLICIT:Lcom/baidu/sapi2/utils/enums/BindType;

    iput-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->g:Lcom/baidu/sapi2/utils/enums/BindType;

    :cond_3
    iget-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->h:Lcom/baidu/sapi2/utils/enums/RegistMode;

    if-nez v0, :cond_4

    sget-object v0, Lcom/baidu/sapi2/utils/enums/RegistMode;->NORMAL:Lcom/baidu/sapi2/utils/enums/RegistMode;

    iput-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->h:Lcom/baidu/sapi2/utils/enums/RegistMode;

    :cond_4
    iget-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->i:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    if-nez v0, :cond_5

    invoke-static {}, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->getDefault()Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->i:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    :cond_5
    iget-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->j:Ljava/util/List;

    if-nez v0, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->j:Ljava/util/List;

    :cond_6
    iget-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->v:Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;

    if-nez v0, :cond_7

    new-instance v0, Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;

    sget-object v1, Lcom/baidu/sapi2/utils/enums/Switch;->OFF:Lcom/baidu/sapi2/utils/enums/Switch;

    sget-object v2, Lcom/baidu/sapi2/utils/enums/Switch;->OFF:Lcom/baidu/sapi2/utils/enums/Switch;

    sget-object v3, Lcom/baidu/sapi2/utils/enums/Switch;->OFF:Lcom/baidu/sapi2/utils/enums/Switch;

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;-><init>(Lcom/baidu/sapi2/utils/enums/Switch;Lcom/baidu/sapi2/utils/enums/Switch;Lcom/baidu/sapi2/utils/enums/Switch;)V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->v:Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;

    :cond_7
    iget-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->s:Lcom/baidu/sapi2/utils/enums/Switch;

    if-nez v0, :cond_8

    sget-object v0, Lcom/baidu/sapi2/utils/enums/Switch;->OFF:Lcom/baidu/sapi2/utils/enums/Switch;

    iput-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->s:Lcom/baidu/sapi2/utils/enums/Switch;

    :cond_8
    iget-boolean v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->u:Z

    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->enable(Z)V

    new-instance v0, Lcom/baidu/sapi2/SapiConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/sapi2/SapiConfiguration;-><init>(Lcom/baidu/sapi2/SapiConfiguration$Builder;Lcom/baidu/sapi2/SapiConfiguration$a;)V

    return-object v0
.end method

.method public collapseFastLoginArea(Z)Lcom/baidu/sapi2/SapiConfiguration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->p:Z

    return-object p0
.end method

.method public configurableViewLayout(Lcom/baidu/sapi2/utils/enums/Switch;)Lcom/baidu/sapi2/SapiConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->s:Lcom/baidu/sapi2/utils/enums/Switch;

    return-object p0
.end method

.method public customActionBar(Z)Lcom/baidu/sapi2/SapiConfiguration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->q:Z

    return-object p0
.end method

.method public debug(Z)Lcom/baidu/sapi2/SapiConfiguration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->u:Z

    return-object p0
.end method

.method public enableB2CSync(Z)Lcom/baidu/sapi2/SapiConfiguration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->A:Z

    return-object p0
.end method

.method public enableQuickUser(Z)Lcom/baidu/sapi2/SapiConfiguration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->y:Z

    return-object p0
.end method

.method public enableVoiceUser(Z)Lcom/baidu/sapi2/SapiConfiguration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->z:Z

    return-object p0
.end method

.method public varargs fastLoginSupport([Lcom/baidu/sapi2/utils/enums/FastLoginFeature;)Lcom/baidu/sapi2/SapiConfiguration$Builder;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->j:Ljava/util/List;

    if-nez p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->j:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public fastRegConfirm(Z)Lcom/baidu/sapi2/SapiConfiguration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->l:Z

    return-object p0
.end method

.method public fastRegConfirmMsg(Ljava/lang/String;)Lcom/baidu/sapi2/SapiConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->m:Ljava/lang/String;

    return-object p0
.end method

.method public fastRegTitleText(Ljava/lang/String;)Lcom/baidu/sapi2/SapiConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->t:Ljava/lang/String;

    return-object p0
.end method

.method public initialShareStrategy(Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;)Lcom/baidu/sapi2/SapiConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->i:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    return-object p0
.end method

.method public presetPhoneNumber(Ljava/lang/String;)Lcom/baidu/sapi2/SapiConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->o:Ljava/lang/String;

    return-object p0
.end method

.method public registMode(Lcom/baidu/sapi2/utils/enums/RegistMode;)Lcom/baidu/sapi2/SapiConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->h:Lcom/baidu/sapi2/utils/enums/RegistMode;

    return-object p0
.end method

.method public setDeviceLoginSignKey(Ljava/lang/String;)Lcom/baidu/sapi2/SapiConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method public setProductLineInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/sapi2/SapiConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public setRuntimeEnvironment(Lcom/baidu/sapi2/utils/enums/Domain;)Lcom/baidu/sapi2/SapiConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->f:Lcom/baidu/sapi2/utils/enums/Domain;

    return-object p0
.end method

.method public setSocialBindType(Lcom/baidu/sapi2/utils/enums/BindType;)Lcom/baidu/sapi2/SapiConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->g:Lcom/baidu/sapi2/utils/enums/BindType;

    return-object p0
.end method

.method public showRegLink(Z)Lcom/baidu/sapi2/SapiConfiguration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->r:Z

    return-object p0
.end method

.method public skin(Ljava/lang/String;)Lcom/baidu/sapi2/SapiConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->n:Ljava/lang/String;

    return-object p0
.end method

.method public smsLoginConfig(Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;)Lcom/baidu/sapi2/SapiConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->v:Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;

    return-object p0
.end method

.method public syncCacheOnInit(Z)Lcom/baidu/sapi2/SapiConfiguration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->x:Z

    return-object p0
.end method

.method public uniteVerify(Z)Lcom/baidu/sapi2/SapiConfiguration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->w:Z

    return-object p0
.end method

.method public wxAppID(Ljava/lang/String;)Lcom/baidu/sapi2/SapiConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiConfiguration$Builder;->k:Ljava/lang/String;

    return-object p0
.end method
