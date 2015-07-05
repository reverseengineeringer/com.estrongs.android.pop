.class public final enum Lcom/baidu/kirin/objects/KirinCheckState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/kirin/objects/KirinCheckState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALREADY_UP_TO_DATE:Lcom/baidu/kirin/objects/KirinCheckState;

.field public static final enum ERROR_CHECK_VERSION:Lcom/baidu/kirin/objects/KirinCheckState;

.field public static final enum NEWER_VERSION_FOUND:Lcom/baidu/kirin/objects/KirinCheckState;

.field private static final synthetic a:[Lcom/baidu/kirin/objects/KirinCheckState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/baidu/kirin/objects/KirinCheckState;

    const-string v1, "ALREADY_UP_TO_DATE"

    invoke-direct {v0, v1, v2}, Lcom/baidu/kirin/objects/KirinCheckState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/kirin/objects/KirinCheckState;->ALREADY_UP_TO_DATE:Lcom/baidu/kirin/objects/KirinCheckState;

    new-instance v0, Lcom/baidu/kirin/objects/KirinCheckState;

    const-string v1, "NEWER_VERSION_FOUND"

    invoke-direct {v0, v1, v3}, Lcom/baidu/kirin/objects/KirinCheckState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/kirin/objects/KirinCheckState;->NEWER_VERSION_FOUND:Lcom/baidu/kirin/objects/KirinCheckState;

    new-instance v0, Lcom/baidu/kirin/objects/KirinCheckState;

    const-string v1, "ERROR_CHECK_VERSION"

    invoke-direct {v0, v1, v4}, Lcom/baidu/kirin/objects/KirinCheckState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/kirin/objects/KirinCheckState;->ERROR_CHECK_VERSION:Lcom/baidu/kirin/objects/KirinCheckState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/baidu/kirin/objects/KirinCheckState;

    sget-object v1, Lcom/baidu/kirin/objects/KirinCheckState;->ALREADY_UP_TO_DATE:Lcom/baidu/kirin/objects/KirinCheckState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/kirin/objects/KirinCheckState;->NEWER_VERSION_FOUND:Lcom/baidu/kirin/objects/KirinCheckState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/kirin/objects/KirinCheckState;->ERROR_CHECK_VERSION:Lcom/baidu/kirin/objects/KirinCheckState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/baidu/kirin/objects/KirinCheckState;->a:[Lcom/baidu/kirin/objects/KirinCheckState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/kirin/objects/KirinCheckState;
    .locals 1

    const-class v0, Lcom/baidu/kirin/objects/KirinCheckState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/kirin/objects/KirinCheckState;

    return-object v0
.end method

.method public static values()[Lcom/baidu/kirin/objects/KirinCheckState;
    .locals 1

    sget-object v0, Lcom/baidu/kirin/objects/KirinCheckState;->a:[Lcom/baidu/kirin/objects/KirinCheckState;

    invoke-virtual {v0}, [Lcom/baidu/kirin/objects/KirinCheckState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/kirin/objects/KirinCheckState;

    return-object v0
.end method
