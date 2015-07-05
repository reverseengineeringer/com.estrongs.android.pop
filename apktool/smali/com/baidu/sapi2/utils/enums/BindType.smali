.class public final enum Lcom/baidu/sapi2/utils/enums/BindType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/sapi2/utils/enums/BindType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EXPLICIT:Lcom/baidu/sapi2/utils/enums/BindType;

.field public static final enum IMPLICIT:Lcom/baidu/sapi2/utils/enums/BindType;

.field public static final enum OPTIONAL:Lcom/baidu/sapi2/utils/enums/BindType;

.field private static final synthetic d:[Lcom/baidu/sapi2/utils/enums/BindType;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/baidu/sapi2/utils/enums/BindType;

    const-string v1, "EXPLICIT"

    const-string v3, "explicit"

    const-string v4, "afterauth"

    const-string v5, "finishbind"

    invoke-direct/range {v0 .. v5}, Lcom/baidu/sapi2/utils/enums/BindType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/utils/enums/BindType;->EXPLICIT:Lcom/baidu/sapi2/utils/enums/BindType;

    new-instance v3, Lcom/baidu/sapi2/utils/enums/BindType;

    const-string v4, "OPTIONAL"

    const-string v6, "optional"

    const-string v7, "afterauth"

    const-string v8, "finishbind"

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/baidu/sapi2/utils/enums/BindType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/baidu/sapi2/utils/enums/BindType;->OPTIONAL:Lcom/baidu/sapi2/utils/enums/BindType;

    new-instance v3, Lcom/baidu/sapi2/utils/enums/BindType;

    const-string v4, "IMPLICIT"

    const-string v6, "implicit"

    const-string v7, "afterauth"

    const-string v8, "afterauth"

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/baidu/sapi2/utils/enums/BindType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/baidu/sapi2/utils/enums/BindType;->IMPLICIT:Lcom/baidu/sapi2/utils/enums/BindType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/baidu/sapi2/utils/enums/BindType;

    sget-object v1, Lcom/baidu/sapi2/utils/enums/BindType;->EXPLICIT:Lcom/baidu/sapi2/utils/enums/BindType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/sapi2/utils/enums/BindType;->OPTIONAL:Lcom/baidu/sapi2/utils/enums/BindType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/baidu/sapi2/utils/enums/BindType;->IMPLICIT:Lcom/baidu/sapi2/utils/enums/BindType;

    aput-object v1, v0, v10

    sput-object v0, Lcom/baidu/sapi2/utils/enums/BindType;->d:[Lcom/baidu/sapi2/utils/enums/BindType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/sapi2/utils/enums/BindType;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/sapi2/utils/enums/BindType;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/sapi2/utils/enums/BindType;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/sapi2/utils/enums/BindType;->c:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/sapi2/utils/enums/BindType;
    .locals 1

    const-class v0, Lcom/baidu/sapi2/utils/enums/BindType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/utils/enums/BindType;

    return-object v0
.end method

.method public static values()[Lcom/baidu/sapi2/utils/enums/BindType;
    .locals 1

    sget-object v0, Lcom/baidu/sapi2/utils/enums/BindType;->d:[Lcom/baidu/sapi2/utils/enums/BindType;

    invoke-virtual {v0}, [Lcom/baidu/sapi2/utils/enums/BindType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/sapi2/utils/enums/BindType;

    return-object v0
.end method


# virtual methods
.method public getCallbackPage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/utils/enums/BindType;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getFinishBindPage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/utils/enums/BindType;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/utils/enums/BindType;->a:Ljava/lang/String;

    return-object v0
.end method
