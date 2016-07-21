.class public final enum Lcom/flurry/sdk/gj;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/gj;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/gj;

.field public static final enum b:Lcom/flurry/sdk/gj;

.field public static final enum c:Lcom/flurry/sdk/gj;

.field public static final enum d:Lcom/flurry/sdk/gj;

.field private static final synthetic e:[Lcom/flurry/sdk/gj;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/flurry/sdk/gj;

    const-string v1, "VIDEO_AD_TYPE_VAST"

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/gj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/gj;->a:Lcom/flurry/sdk/gj;

    new-instance v0, Lcom/flurry/sdk/gj;

    const-string v1, "VIDEO_AD_TYPE_MRAID"

    invoke-direct {v0, v1, v3}, Lcom/flurry/sdk/gj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/gj;->b:Lcom/flurry/sdk/gj;

    new-instance v0, Lcom/flurry/sdk/gj;

    const-string v1, "VIDEO_AD_TYPE_CLIPS"

    invoke-direct {v0, v1, v4}, Lcom/flurry/sdk/gj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/gj;->c:Lcom/flurry/sdk/gj;

    new-instance v0, Lcom/flurry/sdk/gj;

    const-string v1, "VIDEO_AD_TYPE_NATIVE"

    invoke-direct {v0, v1, v5}, Lcom/flurry/sdk/gj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/gj;->d:Lcom/flurry/sdk/gj;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/flurry/sdk/gj;

    sget-object v1, Lcom/flurry/sdk/gj;->a:Lcom/flurry/sdk/gj;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/sdk/gj;->b:Lcom/flurry/sdk/gj;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/gj;->c:Lcom/flurry/sdk/gj;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/gj;->d:Lcom/flurry/sdk/gj;

    aput-object v1, v0, v5

    sput-object v0, Lcom/flurry/sdk/gj;->e:[Lcom/flurry/sdk/gj;

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

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/gj;
    .locals 1

    const-class v0, Lcom/flurry/sdk/gj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/gj;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/gj;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/gj;->e:[Lcom/flurry/sdk/gj;

    invoke-virtual {v0}, [Lcom/flurry/sdk/gj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/gj;

    return-object v0
.end method
