.class public final enum Lcom/flurry/sdk/ec$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/ec$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/ec$a;

.field public static final enum b:Lcom/flurry/sdk/ec$a;

.field private static final synthetic c:[Lcom/flurry/sdk/ec$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/flurry/sdk/ec$a;

    const-string v1, "PostSuccess"

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/ec$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/ec$a;->a:Lcom/flurry/sdk/ec$a;

    new-instance v0, Lcom/flurry/sdk/ec$a;

    const-string v1, "PostFailure"

    invoke-direct {v0, v1, v3}, Lcom/flurry/sdk/ec$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/ec$a;->b:Lcom/flurry/sdk/ec$a;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/flurry/sdk/ec$a;

    sget-object v1, Lcom/flurry/sdk/ec$a;->a:Lcom/flurry/sdk/ec$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/sdk/ec$a;->b:Lcom/flurry/sdk/ec$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/flurry/sdk/ec$a;->c:[Lcom/flurry/sdk/ec$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/ec$a;
    .locals 1

    const-class v0, Lcom/flurry/sdk/ec$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ec$a;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/ec$a;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/ec$a;->c:[Lcom/flurry/sdk/ec$a;

    invoke-virtual {v0}, [Lcom/flurry/sdk/ec$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/ec$a;

    return-object v0
.end method
