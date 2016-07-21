.class public final enum Lcom/flurry/sdk/fq;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/fq;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/fq;

.field public static final enum b:Lcom/flurry/sdk/fq;

.field public static final enum c:Lcom/flurry/sdk/fq;

.field public static final enum d:Lcom/flurry/sdk/fq;

.field private static final synthetic f:[Lcom/flurry/sdk/fq;


# instance fields
.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/flurry/sdk/fq;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v2, v2}, Lcom/flurry/sdk/fq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/fq;->a:Lcom/flurry/sdk/fq;

    new-instance v0, Lcom/flurry/sdk/fq;

    const-string v1, "Linear"

    invoke-direct {v0, v1, v3, v3}, Lcom/flurry/sdk/fq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/fq;->b:Lcom/flurry/sdk/fq;

    new-instance v0, Lcom/flurry/sdk/fq;

    const-string v1, "NonLinearAds"

    invoke-direct {v0, v1, v4, v4}, Lcom/flurry/sdk/fq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/fq;->c:Lcom/flurry/sdk/fq;

    new-instance v0, Lcom/flurry/sdk/fq;

    const-string v1, "CompanionAds"

    invoke-direct {v0, v1, v5, v5}, Lcom/flurry/sdk/fq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/fq;->d:Lcom/flurry/sdk/fq;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/flurry/sdk/fq;

    sget-object v1, Lcom/flurry/sdk/fq;->a:Lcom/flurry/sdk/fq;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/sdk/fq;->b:Lcom/flurry/sdk/fq;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/fq;->c:Lcom/flurry/sdk/fq;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/fq;->d:Lcom/flurry/sdk/fq;

    aput-object v1, v0, v5

    sput-object v0, Lcom/flurry/sdk/fq;->f:[Lcom/flurry/sdk/fq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/flurry/sdk/fq;->e:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/fq;
    .locals 1

    const-class v0, Lcom/flurry/sdk/fq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/fq;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/fq;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/fq;->f:[Lcom/flurry/sdk/fq;

    invoke-virtual {v0}, [Lcom/flurry/sdk/fq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/fq;

    return-object v0
.end method
