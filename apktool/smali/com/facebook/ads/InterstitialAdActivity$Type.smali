.class public final enum Lcom/facebook/ads/InterstitialAdActivity$Type;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/InterstitialAdActivity$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DISPLAY:Lcom/facebook/ads/InterstitialAdActivity$Type;

.field public static final enum VIDEO:Lcom/facebook/ads/InterstitialAdActivity$Type;

.field private static final synthetic a:[Lcom/facebook/ads/InterstitialAdActivity$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/facebook/ads/InterstitialAdActivity$Type;

    const-string v1, "DISPLAY"

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/InterstitialAdActivity$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/InterstitialAdActivity$Type;->DISPLAY:Lcom/facebook/ads/InterstitialAdActivity$Type;

    new-instance v0, Lcom/facebook/ads/InterstitialAdActivity$Type;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/InterstitialAdActivity$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/InterstitialAdActivity$Type;->VIDEO:Lcom/facebook/ads/InterstitialAdActivity$Type;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/ads/InterstitialAdActivity$Type;

    sget-object v1, Lcom/facebook/ads/InterstitialAdActivity$Type;->DISPLAY:Lcom/facebook/ads/InterstitialAdActivity$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/InterstitialAdActivity$Type;->VIDEO:Lcom/facebook/ads/InterstitialAdActivity$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/ads/InterstitialAdActivity$Type;->a:[Lcom/facebook/ads/InterstitialAdActivity$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/InterstitialAdActivity$Type;
    .locals 1

    const-class v0, Lcom/facebook/ads/InterstitialAdActivity$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/InterstitialAdActivity$Type;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/InterstitialAdActivity$Type;
    .locals 1

    sget-object v0, Lcom/facebook/ads/InterstitialAdActivity$Type;->a:[Lcom/facebook/ads/InterstitialAdActivity$Type;

    invoke-virtual {v0}, [Lcom/facebook/ads/InterstitialAdActivity$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/InterstitialAdActivity$Type;

    return-object v0
.end method
