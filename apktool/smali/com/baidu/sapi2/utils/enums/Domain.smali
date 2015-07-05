.class public final enum Lcom/baidu/sapi2/utils/enums/Domain;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/sapi2/utils/enums/Domain;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DOMAIN_ONLINE:Lcom/baidu/sapi2/utils/enums/Domain;

.field public static final enum DOMAIN_QA:Lcom/baidu/sapi2/utils/enums/Domain;

.field public static final enum DOMAIN_RD:Lcom/baidu/sapi2/utils/enums/Domain;

.field private static final synthetic f:[Lcom/baidu/sapi2/utils/enums/Domain;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/baidu/sapi2/utils/enums/Domain;

    const-string v1, "DOMAIN_ONLINE"

    const-string v3, "http://passport.baidu.com"

    const-string v4, "http://wappass.baidu.com"

    const-string v5, "https://openapi.baidu.com"

    const-string v6, "http://wappass.bdimg.com"

    const-string v7, "http://himg.baidu.com"

    invoke-direct/range {v0 .. v7}, Lcom/baidu/sapi2/utils/enums/Domain;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/utils/enums/Domain;->DOMAIN_ONLINE:Lcom/baidu/sapi2/utils/enums/Domain;

    new-instance v3, Lcom/baidu/sapi2/utils/enums/Domain;

    const-string v4, "DOMAIN_RD"

    const-string v6, "http://passport.rdtest.baidu.com"

    const-string v7, "http://passport.rdtest.baidu.com:8000"

    const-string v8, "http://dbl-dev-rd23.vm.baidu.com:8080"

    const-string v9, "http://passport.rdtest.baidu.com:8000"

    const-string v10, "http://passport.baidu.com"

    move v5, v11

    invoke-direct/range {v3 .. v10}, Lcom/baidu/sapi2/utils/enums/Domain;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/baidu/sapi2/utils/enums/Domain;->DOMAIN_RD:Lcom/baidu/sapi2/utils/enums/Domain;

    new-instance v3, Lcom/baidu/sapi2/utils/enums/Domain;

    const-string v4, "DOMAIN_QA"

    const-string v6, "http://passport.qatest.baidu.com"

    const-string v7, "http://wappass.qatest.baidu.com"

    const-string v8, "http://db-infbk-online-17.db01.baidu.com:8080"

    const-string v9, "http://wappass.qatest.baidu.com"

    const-string v10, "http://passport.baidu.com"

    move v5, v12

    invoke-direct/range {v3 .. v10}, Lcom/baidu/sapi2/utils/enums/Domain;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/baidu/sapi2/utils/enums/Domain;->DOMAIN_QA:Lcom/baidu/sapi2/utils/enums/Domain;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/baidu/sapi2/utils/enums/Domain;

    sget-object v1, Lcom/baidu/sapi2/utils/enums/Domain;->DOMAIN_ONLINE:Lcom/baidu/sapi2/utils/enums/Domain;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/sapi2/utils/enums/Domain;->DOMAIN_RD:Lcom/baidu/sapi2/utils/enums/Domain;

    aput-object v1, v0, v11

    sget-object v1, Lcom/baidu/sapi2/utils/enums/Domain;->DOMAIN_QA:Lcom/baidu/sapi2/utils/enums/Domain;

    aput-object v1, v0, v12

    sput-object v0, Lcom/baidu/sapi2/utils/enums/Domain;->f:[Lcom/baidu/sapi2/utils/enums/Domain;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/baidu/sapi2/utils/enums/Domain;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/sapi2/utils/enums/Domain;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/sapi2/utils/enums/Domain;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/baidu/sapi2/utils/enums/Domain;->d:Ljava/lang/String;

    iput-object p7, p0, Lcom/baidu/sapi2/utils/enums/Domain;->e:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/sapi2/utils/enums/Domain;
    .locals 1

    const-class v0, Lcom/baidu/sapi2/utils/enums/Domain;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/utils/enums/Domain;

    return-object v0
.end method

.method public static values()[Lcom/baidu/sapi2/utils/enums/Domain;
    .locals 1

    sget-object v0, Lcom/baidu/sapi2/utils/enums/Domain;->f:[Lcom/baidu/sapi2/utils/enums/Domain;

    invoke-virtual {v0}, [Lcom/baidu/sapi2/utils/enums/Domain;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/sapi2/utils/enums/Domain;

    return-object v0
.end method


# virtual methods
.method public getConfigUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/utils/enums/Domain;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/utils/enums/Domain;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPortraitUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/utils/enums/Domain;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/utils/enums/Domain;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getWap()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/utils/enums/Domain;->b:Ljava/lang/String;

    return-object v0
.end method
