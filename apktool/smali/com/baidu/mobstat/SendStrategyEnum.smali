.class public final enum Lcom/baidu/mobstat/SendStrategyEnum;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/mobstat/SendStrategyEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APP_START:Lcom/baidu/mobstat/SendStrategyEnum;

.field public static final enum ONCE_A_DAY:Lcom/baidu/mobstat/SendStrategyEnum;

.field public static final enum SET_TIME_INTERVAL:Lcom/baidu/mobstat/SendStrategyEnum;

.field private static final synthetic a:[Lcom/baidu/mobstat/SendStrategyEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/baidu/mobstat/SendStrategyEnum;

    const-string v1, "APP_START"

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/SendStrategyEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/SendStrategyEnum;->APP_START:Lcom/baidu/mobstat/SendStrategyEnum;

    new-instance v0, Lcom/baidu/mobstat/SendStrategyEnum;

    const-string v1, "ONCE_A_DAY"

    invoke-direct {v0, v1, v3}, Lcom/baidu/mobstat/SendStrategyEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/SendStrategyEnum;->ONCE_A_DAY:Lcom/baidu/mobstat/SendStrategyEnum;

    new-instance v0, Lcom/baidu/mobstat/SendStrategyEnum;

    const-string v1, "SET_TIME_INTERVAL"

    invoke-direct {v0, v1, v4}, Lcom/baidu/mobstat/SendStrategyEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/SendStrategyEnum;->SET_TIME_INTERVAL:Lcom/baidu/mobstat/SendStrategyEnum;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/baidu/mobstat/SendStrategyEnum;

    sget-object v1, Lcom/baidu/mobstat/SendStrategyEnum;->APP_START:Lcom/baidu/mobstat/SendStrategyEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mobstat/SendStrategyEnum;->ONCE_A_DAY:Lcom/baidu/mobstat/SendStrategyEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/mobstat/SendStrategyEnum;->SET_TIME_INTERVAL:Lcom/baidu/mobstat/SendStrategyEnum;

    aput-object v1, v0, v4

    sput-object v0, Lcom/baidu/mobstat/SendStrategyEnum;->a:[Lcom/baidu/mobstat/SendStrategyEnum;

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

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mobstat/SendStrategyEnum;
    .locals 1

    const-class v0, Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/SendStrategyEnum;

    return-object v0
.end method

.method public static values()[Lcom/baidu/mobstat/SendStrategyEnum;
    .locals 1

    sget-object v0, Lcom/baidu/mobstat/SendStrategyEnum;->a:[Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v0}, [Lcom/baidu/mobstat/SendStrategyEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mobstat/SendStrategyEnum;

    return-object v0
.end method
