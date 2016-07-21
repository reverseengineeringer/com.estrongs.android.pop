.class public final enum Lcom/flurry/sdk/jn;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/jn;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/jn;

.field public static final enum b:Lcom/flurry/sdk/jn;

.field public static final enum c:Lcom/flurry/sdk/jn;

.field private static final synthetic f:[Lcom/flurry/sdk/jn;


# instance fields
.field public final d:I

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/flurry/sdk/jn;

    const-string v1, "DeviceId"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/flurry/sdk/jn;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/flurry/sdk/jn;->a:Lcom/flurry/sdk/jn;

    new-instance v0, Lcom/flurry/sdk/jn;

    const-string v1, "Sha1Imei"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/flurry/sdk/jn;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/flurry/sdk/jn;->b:Lcom/flurry/sdk/jn;

    new-instance v0, Lcom/flurry/sdk/jn;

    const-string v1, "AndroidAdvertisingId"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/flurry/sdk/jn;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/flurry/sdk/jn;->c:Lcom/flurry/sdk/jn;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/flurry/sdk/jn;

    sget-object v1, Lcom/flurry/sdk/jn;->a:Lcom/flurry/sdk/jn;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/jn;->b:Lcom/flurry/sdk/jn;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/jn;->c:Lcom/flurry/sdk/jn;

    aput-object v1, v0, v5

    sput-object v0, Lcom/flurry/sdk/jn;->f:[Lcom/flurry/sdk/jn;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/flurry/sdk/jn;->d:I

    iput-boolean p4, p0, Lcom/flurry/sdk/jn;->e:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/jn;
    .locals 1

    const-class v0, Lcom/flurry/sdk/jn;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jn;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/jn;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/jn;->f:[Lcom/flurry/sdk/jn;

    invoke-virtual {v0}, [Lcom/flurry/sdk/jn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/jn;

    return-object v0
.end method
