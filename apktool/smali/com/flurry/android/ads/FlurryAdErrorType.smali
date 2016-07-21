.class public final enum Lcom/flurry/android/ads/FlurryAdErrorType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/android/ads/FlurryAdErrorType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CLICK:Lcom/flurry/android/ads/FlurryAdErrorType;

.field public static final enum FETCH:Lcom/flurry/android/ads/FlurryAdErrorType;

.field public static final enum RENDER:Lcom/flurry/android/ads/FlurryAdErrorType;

.field private static final synthetic a:[Lcom/flurry/android/ads/FlurryAdErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/flurry/android/ads/FlurryAdErrorType;

    const-string v1, "FETCH"

    invoke-direct {v0, v1, v2}, Lcom/flurry/android/ads/FlurryAdErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/ads/FlurryAdErrorType;->FETCH:Lcom/flurry/android/ads/FlurryAdErrorType;

    new-instance v0, Lcom/flurry/android/ads/FlurryAdErrorType;

    const-string v1, "RENDER"

    invoke-direct {v0, v1, v3}, Lcom/flurry/android/ads/FlurryAdErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/ads/FlurryAdErrorType;->RENDER:Lcom/flurry/android/ads/FlurryAdErrorType;

    new-instance v0, Lcom/flurry/android/ads/FlurryAdErrorType;

    const-string v1, "CLICK"

    invoke-direct {v0, v1, v4}, Lcom/flurry/android/ads/FlurryAdErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/ads/FlurryAdErrorType;->CLICK:Lcom/flurry/android/ads/FlurryAdErrorType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/flurry/android/ads/FlurryAdErrorType;

    sget-object v1, Lcom/flurry/android/ads/FlurryAdErrorType;->FETCH:Lcom/flurry/android/ads/FlurryAdErrorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/android/ads/FlurryAdErrorType;->RENDER:Lcom/flurry/android/ads/FlurryAdErrorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/android/ads/FlurryAdErrorType;->CLICK:Lcom/flurry/android/ads/FlurryAdErrorType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/flurry/android/ads/FlurryAdErrorType;->a:[Lcom/flurry/android/ads/FlurryAdErrorType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/android/ads/FlurryAdErrorType;
    .locals 1

    const-class v0, Lcom/flurry/android/ads/FlurryAdErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/ads/FlurryAdErrorType;

    return-object v0
.end method

.method public static values()[Lcom/flurry/android/ads/FlurryAdErrorType;
    .locals 1

    sget-object v0, Lcom/flurry/android/ads/FlurryAdErrorType;->a:[Lcom/flurry/android/ads/FlurryAdErrorType;

    invoke-virtual {v0}, [Lcom/flurry/android/ads/FlurryAdErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/android/ads/FlurryAdErrorType;

    return-object v0
.end method
