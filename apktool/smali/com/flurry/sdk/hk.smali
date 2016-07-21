.class public final enum Lcom/flurry/sdk/hk;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/hk;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/hk;

.field public static final enum b:Lcom/flurry/sdk/hk;

.field public static final enum c:Lcom/flurry/sdk/hk;

.field private static final synthetic d:[Lcom/flurry/sdk/hk;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/flurry/sdk/hk;

    const-string v1, "WEB_VIEW_TYPE_REGULAR"

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/hk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/hk;->a:Lcom/flurry/sdk/hk;

    new-instance v0, Lcom/flurry/sdk/hk;

    const-string v1, "WEB_VIEW_TYPE_MRAID"

    invoke-direct {v0, v1, v3}, Lcom/flurry/sdk/hk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/hk;->b:Lcom/flurry/sdk/hk;

    new-instance v0, Lcom/flurry/sdk/hk;

    const-string v1, "WEB_VIEW_TYPE_BASIC"

    invoke-direct {v0, v1, v4}, Lcom/flurry/sdk/hk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/hk;->c:Lcom/flurry/sdk/hk;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/flurry/sdk/hk;

    sget-object v1, Lcom/flurry/sdk/hk;->a:Lcom/flurry/sdk/hk;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/sdk/hk;->b:Lcom/flurry/sdk/hk;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/hk;->c:Lcom/flurry/sdk/hk;

    aput-object v1, v0, v4

    sput-object v0, Lcom/flurry/sdk/hk;->d:[Lcom/flurry/sdk/hk;

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

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/hk;
    .locals 1

    const-class v0, Lcom/flurry/sdk/hk;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/hk;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/hk;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/hk;->d:[Lcom/flurry/sdk/hk;

    invoke-virtual {v0}, [Lcom/flurry/sdk/hk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/hk;

    return-object v0
.end method
