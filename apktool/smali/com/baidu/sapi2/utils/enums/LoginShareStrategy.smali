.class public final enum Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CHOICE:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

.field public static final enum DISABLED:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

.field public static final enum SILENT:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

.field private static final synthetic b:[Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    const-string v1, "DISABLED"

    const-string v2, "disabled"

    invoke-direct {v0, v1, v3, v2}, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->DISABLED:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    new-instance v0, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    const-string v1, "SILENT"

    const-string v2, "silent"

    invoke-direct {v0, v1, v4, v2}, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->SILENT:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    new-instance v0, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    const-string v1, "CHOICE"

    const-string v2, "choice"

    invoke-direct {v0, v1, v5, v2}, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->CHOICE:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    sget-object v1, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->DISABLED:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->SILENT:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->CHOICE:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    aput-object v1, v0, v5

    sput-object v0, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->b:[Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

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

    iput-object p3, p0, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->a:Ljava/lang/String;

    return-void
.end method

.method public static getDefault()Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;
    .locals 1

    sget-object v0, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->SILENT:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    return-object v0
.end method

.method public static mapStrToValue(Ljava/lang/String;)Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->getDefault()Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->values()[Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->getStrValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->getDefault()Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    move-result-object v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;
    .locals 1

    const-class v0, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    return-object v0
.end method

.method public static values()[Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;
    .locals 1

    sget-object v0, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->b:[Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    invoke-virtual {v0}, [Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    return-object v0
.end method


# virtual methods
.method public getStrValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->a:Ljava/lang/String;

    return-object v0
.end method
