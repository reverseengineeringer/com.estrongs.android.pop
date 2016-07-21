.class public final enum Lcom/flurry/sdk/ag;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/ag;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/ag;

.field public static final enum b:Lcom/flurry/sdk/ag;

.field public static final enum c:Lcom/flurry/sdk/ag;

.field public static final enum d:Lcom/flurry/sdk/ag;

.field public static final enum e:Lcom/flurry/sdk/ag;

.field public static final enum f:Lcom/flurry/sdk/ag;

.field private static final synthetic h:[Lcom/flurry/sdk/ag;


# instance fields
.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/flurry/sdk/ag;

    const-string v1, "NOT_STARTED"

    invoke-direct {v0, v1, v4, v4}, Lcom/flurry/sdk/ag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ag;->a:Lcom/flurry/sdk/ag;

    new-instance v0, Lcom/flurry/sdk/ag;

    const-string v1, "IN_PROGRESS"

    invoke-direct {v0, v1, v5, v5}, Lcom/flurry/sdk/ag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ag;->b:Lcom/flurry/sdk/ag;

    new-instance v0, Lcom/flurry/sdk/ag;

    const-string v1, "INCOMPLETE"

    invoke-direct {v0, v1, v6, v6}, Lcom/flurry/sdk/ag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ag;->c:Lcom/flurry/sdk/ag;

    new-instance v0, Lcom/flurry/sdk/ag;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1, v7, v7}, Lcom/flurry/sdk/ag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ag;->d:Lcom/flurry/sdk/ag;

    new-instance v0, Lcom/flurry/sdk/ag;

    const-string v1, "EVICTED"

    invoke-direct {v0, v1, v8, v8}, Lcom/flurry/sdk/ag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ag;->e:Lcom/flurry/sdk/ag;

    new-instance v0, Lcom/flurry/sdk/ag;

    const-string v1, "ERROR"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/ag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ag;->f:Lcom/flurry/sdk/ag;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/flurry/sdk/ag;

    sget-object v1, Lcom/flurry/sdk/ag;->a:Lcom/flurry/sdk/ag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/ag;->b:Lcom/flurry/sdk/ag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/sdk/ag;->c:Lcom/flurry/sdk/ag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/flurry/sdk/ag;->d:Lcom/flurry/sdk/ag;

    aput-object v1, v0, v7

    sget-object v1, Lcom/flurry/sdk/ag;->e:Lcom/flurry/sdk/ag;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/sdk/ag;->f:Lcom/flurry/sdk/ag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/flurry/sdk/ag;->h:[Lcom/flurry/sdk/ag;

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

    iput p3, p0, Lcom/flurry/sdk/ag;->g:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/ag;
    .locals 1

    const-class v0, Lcom/flurry/sdk/ag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ag;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/ag;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/ag;->h:[Lcom/flurry/sdk/ag;

    invoke-virtual {v0}, [Lcom/flurry/sdk/ag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/ag;

    return-object v0
.end method
