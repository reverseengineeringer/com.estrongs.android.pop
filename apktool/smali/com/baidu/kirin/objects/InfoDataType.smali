.class public final enum Lcom/baidu/kirin/objects/InfoDataType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/kirin/objects/InfoDataType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CrashInfo:Lcom/baidu/kirin/objects/InfoDataType;

.field public static final enum ErrorInfo:Lcom/baidu/kirin/objects/InfoDataType;

.field public static final enum EventInfo:Lcom/baidu/kirin/objects/InfoDataType;

.field public static final enum SessionInfo:Lcom/baidu/kirin/objects/InfoDataType;

.field public static final enum UerEventInfo:Lcom/baidu/kirin/objects/InfoDataType;

.field private static final synthetic a:[Lcom/baidu/kirin/objects/InfoDataType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/baidu/kirin/objects/InfoDataType;

    const-string v1, "EventInfo"

    invoke-direct {v0, v1, v2}, Lcom/baidu/kirin/objects/InfoDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/kirin/objects/InfoDataType;->EventInfo:Lcom/baidu/kirin/objects/InfoDataType;

    new-instance v0, Lcom/baidu/kirin/objects/InfoDataType;

    const-string v1, "UerEventInfo"

    invoke-direct {v0, v1, v3}, Lcom/baidu/kirin/objects/InfoDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/kirin/objects/InfoDataType;->UerEventInfo:Lcom/baidu/kirin/objects/InfoDataType;

    new-instance v0, Lcom/baidu/kirin/objects/InfoDataType;

    const-string v1, "ErrorInfo"

    invoke-direct {v0, v1, v4}, Lcom/baidu/kirin/objects/InfoDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/kirin/objects/InfoDataType;->ErrorInfo:Lcom/baidu/kirin/objects/InfoDataType;

    new-instance v0, Lcom/baidu/kirin/objects/InfoDataType;

    const-string v1, "CrashInfo"

    invoke-direct {v0, v1, v5}, Lcom/baidu/kirin/objects/InfoDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/kirin/objects/InfoDataType;->CrashInfo:Lcom/baidu/kirin/objects/InfoDataType;

    new-instance v0, Lcom/baidu/kirin/objects/InfoDataType;

    const-string v1, "SessionInfo"

    invoke-direct {v0, v1, v6}, Lcom/baidu/kirin/objects/InfoDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/kirin/objects/InfoDataType;->SessionInfo:Lcom/baidu/kirin/objects/InfoDataType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/baidu/kirin/objects/InfoDataType;

    sget-object v1, Lcom/baidu/kirin/objects/InfoDataType;->EventInfo:Lcom/baidu/kirin/objects/InfoDataType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/kirin/objects/InfoDataType;->UerEventInfo:Lcom/baidu/kirin/objects/InfoDataType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/kirin/objects/InfoDataType;->ErrorInfo:Lcom/baidu/kirin/objects/InfoDataType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/kirin/objects/InfoDataType;->CrashInfo:Lcom/baidu/kirin/objects/InfoDataType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/kirin/objects/InfoDataType;->SessionInfo:Lcom/baidu/kirin/objects/InfoDataType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/baidu/kirin/objects/InfoDataType;->a:[Lcom/baidu/kirin/objects/InfoDataType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/kirin/objects/InfoDataType;
    .locals 1

    const-class v0, Lcom/baidu/kirin/objects/InfoDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/kirin/objects/InfoDataType;

    return-object v0
.end method

.method public static values()[Lcom/baidu/kirin/objects/InfoDataType;
    .locals 1

    sget-object v0, Lcom/baidu/kirin/objects/InfoDataType;->a:[Lcom/baidu/kirin/objects/InfoDataType;

    invoke-virtual {v0}, [Lcom/baidu/kirin/objects/InfoDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/kirin/objects/InfoDataType;

    return-object v0
.end method
