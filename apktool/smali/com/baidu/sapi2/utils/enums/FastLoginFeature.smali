.class public final enum Lcom/baidu/sapi2/utils/enums/FastLoginFeature;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/sapi2/utils/enums/FastLoginFeature;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEVICE_LOGIN:Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

.field public static final enum NM_LOGIN:Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

.field public static final enum QR_LOGIN:Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

.field public static final enum RENREN_WEBVIEW:Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

.field public static final enum SINA_WEIBO_SSO:Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

.field public static final enum SINA_WEIBO_WEBVIEW:Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

.field public static final enum TX_QQ_WEBVIEW:Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

.field public static final enum TX_WEIBO_WEBVIEW:Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

.field public static final enum TX_WEIXIN_SSO:Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

.field public static final enum VOICE_LOGIN:Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

.field private static final synthetic b:[Lcom/baidu/sapi2/utils/enums/FastLoginFeature;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    const-string v1, "TX_WEIXIN_SSO"

    const-string v2, "tweixin_sso"

    invoke-direct {v0, v1, v4, v2}, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;->TX_WEIXIN_SSO:Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    new-instance v0, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    const-string v1, "SINA_WEIBO_SSO"

    const-string v2, "tsina_sso"

    invoke-direct {v0, v1, v5, v2}, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;->SINA_WEIBO_SSO:Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    new-instance v0, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    const-string v1, "SINA_WEIBO_WEBVIEW"

    const-string v2, "tsina"

    invoke-direct {v0, v1, v6, v2}, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;->SINA_WEIBO_WEBVIEW:Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    new-instance v0, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    const-string v1, "TX_WEIBO_WEBVIEW"

    const-string v2, "tqq"

    invoke-direct {v0, v1, v7, v2}, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;->TX_WEIBO_WEBVIEW:Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    new-instance v0, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    const-string v1, "TX_QQ_WEBVIEW"

    const-string v2, "qzone"

    invoke-direct {v0, v1, v8, v2}, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;->TX_QQ_WEBVIEW:Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    new-instance v0, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    const-string v1, "RENREN_WEBVIEW"

    const/4 v2, 0x5

    const-string v3, "renren"

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;->RENREN_WEBVIEW:Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    new-instance v0, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    const-string v1, "DEVICE_LOGIN"

    const/4 v2, 0x6

    const-string v3, "device_login"

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;->DEVICE_LOGIN:Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    new-instance v0, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    const-string v1, "QR_LOGIN"

    const/4 v2, 0x7

    const-string v3, "qr_app_login"

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;->QR_LOGIN:Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    new-instance v0, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    const-string v1, "NM_LOGIN"

    const/16 v2, 0x8

    const-string v3, "nuomi_login"

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;->NM_LOGIN:Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    new-instance v0, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    const-string v1, "VOICE_LOGIN"

    const/16 v2, 0x9

    const-string v3, "voice_login"

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;->VOICE_LOGIN:Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    sget-object v1, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;->TX_WEIXIN_SSO:Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;->SINA_WEIBO_SSO:Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;->SINA_WEIBO_WEBVIEW:Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    aput-object v1, v0, v6

    sget-object v1, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;->TX_WEIBO_WEBVIEW:Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    aput-object v1, v0, v7

    sget-object v1, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;->TX_QQ_WEBVIEW:Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;->RENREN_WEBVIEW:Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;->DEVICE_LOGIN:Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;->QR_LOGIN:Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;->NM_LOGIN:Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;->VOICE_LOGIN:Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;->b:[Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;->a:Ljava/lang/String;

    return-void
.end method

.method public static getDefault()Lcom/baidu/sapi2/utils/enums/FastLoginFeature;
    .locals 1

    sget-object v0, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;->SINA_WEIBO_SSO:Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    return-object v0
.end method

.method public static mapStrToValue(Ljava/lang/String;)Lcom/baidu/sapi2/utils/enums/FastLoginFeature;
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;->getDefault()Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;->values()[Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;->getStrValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;->getDefault()Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    move-result-object v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/sapi2/utils/enums/FastLoginFeature;
    .locals 1

    const-class v0, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    return-object v0
.end method

.method public static values()[Lcom/baidu/sapi2/utils/enums/FastLoginFeature;
    .locals 1

    sget-object v0, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;->b:[Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    invoke-virtual {v0}, [Lcom/baidu/sapi2/utils/enums/FastLoginFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    return-object v0
.end method


# virtual methods
.method public getStrValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;->a:Ljava/lang/String;

    return-object v0
.end method
