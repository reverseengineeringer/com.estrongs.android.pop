.class public final enum Lcom/flurry/sdk/fr;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/fr;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/fr;

.field public static final enum b:Lcom/flurry/sdk/fr;

.field public static final enum c:Lcom/flurry/sdk/fr;

.field private static final synthetic e:[Lcom/flurry/sdk/fr;


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/flurry/sdk/fr;

    const-string v1, "Unknown"

    const-string v2, "unknown"

    invoke-direct {v0, v1, v3, v2}, Lcom/flurry/sdk/fr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/fr;->a:Lcom/flurry/sdk/fr;

    new-instance v0, Lcom/flurry/sdk/fr;

    const-string v1, "Streaming"

    const-string v2, "streaming"

    invoke-direct {v0, v1, v4, v2}, Lcom/flurry/sdk/fr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/fr;->b:Lcom/flurry/sdk/fr;

    new-instance v0, Lcom/flurry/sdk/fr;

    const-string v1, "Progressive"

    const-string v2, "progressive"

    invoke-direct {v0, v1, v5, v2}, Lcom/flurry/sdk/fr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/fr;->c:Lcom/flurry/sdk/fr;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/flurry/sdk/fr;

    sget-object v1, Lcom/flurry/sdk/fr;->a:Lcom/flurry/sdk/fr;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/fr;->b:Lcom/flurry/sdk/fr;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/fr;->c:Lcom/flurry/sdk/fr;

    aput-object v1, v0, v5

    sput-object v0, Lcom/flurry/sdk/fr;->e:[Lcom/flurry/sdk/fr;

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

    iput-object p3, p0, Lcom/flurry/sdk/fr;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/flurry/sdk/fr;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/fr;->b:Lcom/flurry/sdk/fr;

    invoke-virtual {v0}, Lcom/flurry/sdk/fr;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/fr;->b:Lcom/flurry/sdk/fr;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/flurry/sdk/fr;->c:Lcom/flurry/sdk/fr;

    invoke-virtual {v0}, Lcom/flurry/sdk/fr;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/flurry/sdk/fr;->c:Lcom/flurry/sdk/fr;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/flurry/sdk/fr;->a:Lcom/flurry/sdk/fr;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/fr;
    .locals 1

    const-class v0, Lcom/flurry/sdk/fr;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/fr;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/fr;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/fr;->e:[Lcom/flurry/sdk/fr;

    invoke-virtual {v0}, [Lcom/flurry/sdk/fr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/fr;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/fr;->d:Ljava/lang/String;

    return-object v0
.end method
