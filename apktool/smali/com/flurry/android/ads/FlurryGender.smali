.class public final enum Lcom/flurry/android/ads/FlurryGender;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/android/ads/FlurryGender;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FEMALE:Lcom/flurry/android/ads/FlurryGender;

.field public static final enum MALE:Lcom/flurry/android/ads/FlurryGender;

.field public static final enum UNKNOWN:Lcom/flurry/android/ads/FlurryGender;

.field private static final synthetic b:[Lcom/flurry/android/ads/FlurryGender;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/flurry/android/ads/FlurryGender;

    const-string v1, "UNKNOWN"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/flurry/android/ads/FlurryGender;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/android/ads/FlurryGender;->UNKNOWN:Lcom/flurry/android/ads/FlurryGender;

    new-instance v0, Lcom/flurry/android/ads/FlurryGender;

    const-string v1, "FEMALE"

    invoke-direct {v0, v1, v4, v3}, Lcom/flurry/android/ads/FlurryGender;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/android/ads/FlurryGender;->FEMALE:Lcom/flurry/android/ads/FlurryGender;

    new-instance v0, Lcom/flurry/android/ads/FlurryGender;

    const-string v1, "MALE"

    invoke-direct {v0, v1, v5, v4}, Lcom/flurry/android/ads/FlurryGender;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/android/ads/FlurryGender;->MALE:Lcom/flurry/android/ads/FlurryGender;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/flurry/android/ads/FlurryGender;

    sget-object v1, Lcom/flurry/android/ads/FlurryGender;->UNKNOWN:Lcom/flurry/android/ads/FlurryGender;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/android/ads/FlurryGender;->FEMALE:Lcom/flurry/android/ads/FlurryGender;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/android/ads/FlurryGender;->MALE:Lcom/flurry/android/ads/FlurryGender;

    aput-object v1, v0, v5

    sput-object v0, Lcom/flurry/android/ads/FlurryGender;->b:[Lcom/flurry/android/ads/FlurryGender;

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

    iput p3, p0, Lcom/flurry/android/ads/FlurryGender;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/android/ads/FlurryGender;
    .locals 1

    const-class v0, Lcom/flurry/android/ads/FlurryGender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/ads/FlurryGender;

    return-object v0
.end method

.method public static values()[Lcom/flurry/android/ads/FlurryGender;
    .locals 1

    sget-object v0, Lcom/flurry/android/ads/FlurryGender;->b:[Lcom/flurry/android/ads/FlurryGender;

    invoke-virtual {v0}, [Lcom/flurry/android/ads/FlurryGender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/android/ads/FlurryGender;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/flurry/android/ads/FlurryGender;->a:I

    return v0
.end method
