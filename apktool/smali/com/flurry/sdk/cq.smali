.class public final enum Lcom/flurry/sdk/cq;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/cq;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/cq;

.field public static final enum b:Lcom/flurry/sdk/cq;

.field public static final enum c:Lcom/flurry/sdk/cq;

.field public static final enum d:Lcom/flurry/sdk/cq;

.field public static final enum e:Lcom/flurry/sdk/cq;

.field private static final synthetic f:[Lcom/flurry/sdk/cq;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/flurry/sdk/cq;

    const-string v1, "LEGACY"

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/cq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/cq;->a:Lcom/flurry/sdk/cq;

    new-instance v0, Lcom/flurry/sdk/cq;

    const-string v1, "BANNER"

    invoke-direct {v0, v1, v3}, Lcom/flurry/sdk/cq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/cq;->b:Lcom/flurry/sdk/cq;

    new-instance v0, Lcom/flurry/sdk/cq;

    const-string v1, "INTERSTITIAL"

    invoke-direct {v0, v1, v4}, Lcom/flurry/sdk/cq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/cq;->c:Lcom/flurry/sdk/cq;

    new-instance v0, Lcom/flurry/sdk/cq;

    const-string v1, "STREAM"

    invoke-direct {v0, v1, v5}, Lcom/flurry/sdk/cq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/cq;->d:Lcom/flurry/sdk/cq;

    new-instance v0, Lcom/flurry/sdk/cq;

    const-string v1, "NATIVE"

    invoke-direct {v0, v1, v6}, Lcom/flurry/sdk/cq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/cq;->e:Lcom/flurry/sdk/cq;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/flurry/sdk/cq;

    sget-object v1, Lcom/flurry/sdk/cq;->a:Lcom/flurry/sdk/cq;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/sdk/cq;->b:Lcom/flurry/sdk/cq;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/cq;->c:Lcom/flurry/sdk/cq;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/cq;->d:Lcom/flurry/sdk/cq;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/sdk/cq;->e:Lcom/flurry/sdk/cq;

    aput-object v1, v0, v6

    sput-object v0, Lcom/flurry/sdk/cq;->f:[Lcom/flurry/sdk/cq;

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

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/cq;
    .locals 1

    const-class v0, Lcom/flurry/sdk/cq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/cq;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/cq;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/cq;->f:[Lcom/flurry/sdk/cq;

    invoke-virtual {v0}, [Lcom/flurry/sdk/cq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/cq;

    return-object v0
.end method
