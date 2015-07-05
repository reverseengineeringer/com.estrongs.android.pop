.class public final enum Lcom/baidu/sapi2/utils/enums/NMLoginType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/sapi2/utils/enums/NMLoginType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALIPAY:Lcom/baidu/sapi2/utils/enums/NMLoginType;

.field public static final enum QIHU_360:Lcom/baidu/sapi2/utils/enums/NMLoginType;

.field public static final enum QQ:Lcom/baidu/sapi2/utils/enums/NMLoginType;

.field public static final enum RENREN:Lcom/baidu/sapi2/utils/enums/NMLoginType;

.field public static final enum SINA_WEIBO:Lcom/baidu/sapi2/utils/enums/NMLoginType;

.field private static final synthetic b:[Lcom/baidu/sapi2/utils/enums/NMLoginType;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/baidu/sapi2/utils/enums/NMLoginType;

    const-string v1, "QQ"

    const-string v2, "qq"

    invoke-direct {v0, v1, v3, v2}, Lcom/baidu/sapi2/utils/enums/NMLoginType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/utils/enums/NMLoginType;->QQ:Lcom/baidu/sapi2/utils/enums/NMLoginType;

    new-instance v0, Lcom/baidu/sapi2/utils/enums/NMLoginType;

    const-string v1, "RENREN"

    const-string v2, "renren"

    invoke-direct {v0, v1, v4, v2}, Lcom/baidu/sapi2/utils/enums/NMLoginType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/utils/enums/NMLoginType;->RENREN:Lcom/baidu/sapi2/utils/enums/NMLoginType;

    new-instance v0, Lcom/baidu/sapi2/utils/enums/NMLoginType;

    const-string v1, "SINA_WEIBO"

    const-string v2, "sina"

    invoke-direct {v0, v1, v5, v2}, Lcom/baidu/sapi2/utils/enums/NMLoginType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/utils/enums/NMLoginType;->SINA_WEIBO:Lcom/baidu/sapi2/utils/enums/NMLoginType;

    new-instance v0, Lcom/baidu/sapi2/utils/enums/NMLoginType;

    const-string v1, "ALIPAY"

    const-string v2, "alipay"

    invoke-direct {v0, v1, v6, v2}, Lcom/baidu/sapi2/utils/enums/NMLoginType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/utils/enums/NMLoginType;->ALIPAY:Lcom/baidu/sapi2/utils/enums/NMLoginType;

    new-instance v0, Lcom/baidu/sapi2/utils/enums/NMLoginType;

    const-string v1, "QIHU_360"

    const-string v2, "360"

    invoke-direct {v0, v1, v7, v2}, Lcom/baidu/sapi2/utils/enums/NMLoginType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/utils/enums/NMLoginType;->QIHU_360:Lcom/baidu/sapi2/utils/enums/NMLoginType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/baidu/sapi2/utils/enums/NMLoginType;

    sget-object v1, Lcom/baidu/sapi2/utils/enums/NMLoginType;->QQ:Lcom/baidu/sapi2/utils/enums/NMLoginType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/sapi2/utils/enums/NMLoginType;->RENREN:Lcom/baidu/sapi2/utils/enums/NMLoginType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/sapi2/utils/enums/NMLoginType;->SINA_WEIBO:Lcom/baidu/sapi2/utils/enums/NMLoginType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/sapi2/utils/enums/NMLoginType;->ALIPAY:Lcom/baidu/sapi2/utils/enums/NMLoginType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/baidu/sapi2/utils/enums/NMLoginType;->QIHU_360:Lcom/baidu/sapi2/utils/enums/NMLoginType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/baidu/sapi2/utils/enums/NMLoginType;->b:[Lcom/baidu/sapi2/utils/enums/NMLoginType;

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

    iput-object p3, p0, Lcom/baidu/sapi2/utils/enums/NMLoginType;->a:Ljava/lang/String;

    return-void
.end method

.method public static mapStrToValue(Ljava/lang/String;)Lcom/baidu/sapi2/utils/enums/NMLoginType;
    .locals 6

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/baidu/sapi2/utils/enums/NMLoginType;->values()[Lcom/baidu/sapi2/utils/enums/NMLoginType;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/NMLoginType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/sapi2/utils/enums/NMLoginType;
    .locals 1

    const-class v0, Lcom/baidu/sapi2/utils/enums/NMLoginType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/utils/enums/NMLoginType;

    return-object v0
.end method

.method public static values()[Lcom/baidu/sapi2/utils/enums/NMLoginType;
    .locals 1

    sget-object v0, Lcom/baidu/sapi2/utils/enums/NMLoginType;->b:[Lcom/baidu/sapi2/utils/enums/NMLoginType;

    invoke-virtual {v0}, [Lcom/baidu/sapi2/utils/enums/NMLoginType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/sapi2/utils/enums/NMLoginType;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/utils/enums/NMLoginType;->a:Ljava/lang/String;

    return-object v0
.end method
