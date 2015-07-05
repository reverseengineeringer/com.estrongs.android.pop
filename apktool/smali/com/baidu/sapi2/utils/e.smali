.class public Lcom/baidu/sapi2/utils/e;
.super Ljava/lang/Object;


# static fields
.field static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static c:I


# instance fields
.field a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/sapi2/utils/e;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/sapi2/utils/e;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/baidu/sapi2/utils/e;->d()V

    invoke-direct {p0}, Lcom/baidu/sapi2/utils/e;->e()V

    return-void
.end method

.method private e()V
    .locals 2

    sget-object v0, Lcom/baidu/sapi2/utils/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/baidu/sapi2/utils/e;->b:Ljava/util/List;

    const-string v1, "http://119.75.220.29"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/baidu/sapi2/utils/e;->b:Ljava/util/List;

    const-string v1, "http://220.181.111.48"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/baidu/sapi2/utils/e;->b:Ljava/util/List;

    const-string v1, "http://123.125.115.81"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getSapiConfiguration()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->environment:Lcom/baidu/sapi2/utils/enums/Domain;

    invoke-virtual {v0}, Lcom/baidu/sapi2/utils/enums/Domain;->getURL()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/baidu/sapi2/utils/e;->c:I

    if-lez v1, :cond_1

    sget v0, Lcom/baidu/sapi2/utils/e;->c:I

    sget-object v1, Lcom/baidu/sapi2/utils/e;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    sput v0, Lcom/baidu/sapi2/utils/e;->c:I

    :cond_0
    sget-object v0, Lcom/baidu/sapi2/utils/e;->b:Ljava/util/List;

    sget v1, Lcom/baidu/sapi2/utils/e;->c:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public b()V
    .locals 1

    sget v0, Lcom/baidu/sapi2/utils/e;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/baidu/sapi2/utils/e;->c:I

    return-void
.end method

.method public c()Z
    .locals 2

    sget v0, Lcom/baidu/sapi2/utils/e;->c:I

    sget-object v1, Lcom/baidu/sapi2/utils/e;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/baidu/sapi2/utils/e;->c:I

    return-void
.end method
