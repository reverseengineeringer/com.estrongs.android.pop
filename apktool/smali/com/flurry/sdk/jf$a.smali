.class final enum Lcom/flurry/sdk/jf$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/jf$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/jf$a;

.field public static final enum b:Lcom/flurry/sdk/jf$a;

.field public static final enum c:Lcom/flurry/sdk/jf$a;

.field public static final enum d:Lcom/flurry/sdk/jf$a;

.field public static final enum e:Lcom/flurry/sdk/jf$a;

.field public static final enum f:Lcom/flurry/sdk/jf$a;

.field private static final synthetic g:[Lcom/flurry/sdk/jf$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/flurry/sdk/jf$a;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/flurry/sdk/jf$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/jf$a;->a:Lcom/flurry/sdk/jf$a;

    new-instance v0, Lcom/flurry/sdk/jf$a;

    const-string v1, "ADVERTISING"

    invoke-direct {v0, v1, v4}, Lcom/flurry/sdk/jf$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/jf$a;->b:Lcom/flurry/sdk/jf$a;

    new-instance v0, Lcom/flurry/sdk/jf$a;

    const-string v1, "DEVICE"

    invoke-direct {v0, v1, v5}, Lcom/flurry/sdk/jf$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/jf$a;->c:Lcom/flurry/sdk/jf$a;

    new-instance v0, Lcom/flurry/sdk/jf$a;

    const-string v1, "HASHED_IMEI"

    invoke-direct {v0, v1, v6}, Lcom/flurry/sdk/jf$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/jf$a;->d:Lcom/flurry/sdk/jf$a;

    new-instance v0, Lcom/flurry/sdk/jf$a;

    const-string v1, "REPORTED_IDS"

    invoke-direct {v0, v1, v7}, Lcom/flurry/sdk/jf$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/jf$a;->e:Lcom/flurry/sdk/jf$a;

    new-instance v0, Lcom/flurry/sdk/jf$a;

    const-string v1, "FINISHED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/jf$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/jf$a;->f:Lcom/flurry/sdk/jf$a;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/flurry/sdk/jf$a;

    sget-object v1, Lcom/flurry/sdk/jf$a;->a:Lcom/flurry/sdk/jf$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/jf$a;->b:Lcom/flurry/sdk/jf$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/jf$a;->c:Lcom/flurry/sdk/jf$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/sdk/jf$a;->d:Lcom/flurry/sdk/jf$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/flurry/sdk/jf$a;->e:Lcom/flurry/sdk/jf$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/sdk/jf$a;->f:Lcom/flurry/sdk/jf$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/flurry/sdk/jf$a;->g:[Lcom/flurry/sdk/jf$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/jf$a;
    .locals 1

    const-class v0, Lcom/flurry/sdk/jf$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jf$a;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/jf$a;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/jf$a;->g:[Lcom/flurry/sdk/jf$a;

    invoke-virtual {v0}, [Lcom/flurry/sdk/jf$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/jf$a;

    return-object v0
.end method
