.class public final enum Lcom/flurry/sdk/bc;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/bc;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/bc;

.field public static final enum b:Lcom/flurry/sdk/bc;

.field public static final enum c:Lcom/flurry/sdk/bc;

.field public static final enum d:Lcom/flurry/sdk/bc;

.field public static final enum e:Lcom/flurry/sdk/bc;

.field private static final synthetic g:[Lcom/flurry/sdk/bc;


# instance fields
.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/flurry/sdk/bc;

    const-string v1, "BANNER"

    const-string v2, "banner"

    invoke-direct {v0, v1, v3, v2}, Lcom/flurry/sdk/bc;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/bc;->a:Lcom/flurry/sdk/bc;

    new-instance v0, Lcom/flurry/sdk/bc;

    const-string v1, "TAKEOVER"

    const-string v2, "takeover"

    invoke-direct {v0, v1, v4, v2}, Lcom/flurry/sdk/bc;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/bc;->b:Lcom/flurry/sdk/bc;

    new-instance v0, Lcom/flurry/sdk/bc;

    const-string v1, "STREAM"

    const-string v2, "stream"

    invoke-direct {v0, v1, v5, v2}, Lcom/flurry/sdk/bc;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/bc;->c:Lcom/flurry/sdk/bc;

    new-instance v0, Lcom/flurry/sdk/bc;

    const-string v1, "NATIVE"

    const-string v2, "native"

    invoke-direct {v0, v1, v6, v2}, Lcom/flurry/sdk/bc;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/bc;->d:Lcom/flurry/sdk/bc;

    new-instance v0, Lcom/flurry/sdk/bc;

    const-string v1, "UNKNOWN"

    const-string v2, "unknown"

    invoke-direct {v0, v1, v7, v2}, Lcom/flurry/sdk/bc;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/bc;->e:Lcom/flurry/sdk/bc;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/flurry/sdk/bc;

    sget-object v1, Lcom/flurry/sdk/bc;->a:Lcom/flurry/sdk/bc;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/bc;->b:Lcom/flurry/sdk/bc;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/bc;->c:Lcom/flurry/sdk/bc;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/sdk/bc;->d:Lcom/flurry/sdk/bc;

    aput-object v1, v0, v6

    sget-object v1, Lcom/flurry/sdk/bc;->e:Lcom/flurry/sdk/bc;

    aput-object v1, v0, v7

    sput-object v0, Lcom/flurry/sdk/bc;->g:[Lcom/flurry/sdk/bc;

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

    iput-object p3, p0, Lcom/flurry/sdk/bc;->f:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/bc;
    .locals 1

    const-class v0, Lcom/flurry/sdk/bc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/bc;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/bc;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/bc;->g:[Lcom/flurry/sdk/bc;

    invoke-virtual {v0}, [Lcom/flurry/sdk/bc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/bc;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/bc;->f:Ljava/lang/String;

    return-object v0
.end method
