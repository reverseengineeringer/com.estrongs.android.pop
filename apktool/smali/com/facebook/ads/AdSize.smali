.class public final enum Lcom/facebook/ads/AdSize;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/AdSize;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BANNER_320_50:Lcom/facebook/ads/AdSize;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

.field public static final enum BANNER_HEIGHT_90:Lcom/facebook/ads/AdSize;

.field public static final enum INTERSTITIAL:Lcom/facebook/ads/AdSize;

.field public static final enum RECTANGLE_HEIGHT_250:Lcom/facebook/ads/AdSize;

.field private static final synthetic c:[Lcom/facebook/ads/AdSize;


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/facebook/ads/AdSize;

    const-string v1, "BANNER_320_50"

    const/16 v2, 0x140

    const/16 v3, 0x32

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/facebook/ads/AdSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/facebook/ads/AdSize;->BANNER_320_50:Lcom/facebook/ads/AdSize;

    new-instance v0, Lcom/facebook/ads/AdSize;

    const-string v1, "INTERSTITIAL"

    invoke-direct {v0, v1, v6, v4, v4}, Lcom/facebook/ads/AdSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/facebook/ads/AdSize;->INTERSTITIAL:Lcom/facebook/ads/AdSize;

    new-instance v0, Lcom/facebook/ads/AdSize;

    const-string v1, "BANNER_HEIGHT_50"

    const/16 v2, 0x32

    invoke-direct {v0, v1, v7, v5, v2}, Lcom/facebook/ads/AdSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

    new-instance v0, Lcom/facebook/ads/AdSize;

    const-string v1, "BANNER_HEIGHT_90"

    const/16 v2, 0x5a

    invoke-direct {v0, v1, v8, v5, v2}, Lcom/facebook/ads/AdSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_90:Lcom/facebook/ads/AdSize;

    new-instance v0, Lcom/facebook/ads/AdSize;

    const-string v1, "RECTANGLE_HEIGHT_250"

    const/4 v2, 0x4

    const/16 v3, 0xfa

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/facebook/ads/AdSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/facebook/ads/AdSize;->RECTANGLE_HEIGHT_250:Lcom/facebook/ads/AdSize;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/facebook/ads/AdSize;

    sget-object v1, Lcom/facebook/ads/AdSize;->BANNER_320_50:Lcom/facebook/ads/AdSize;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/ads/AdSize;->INTERSTITIAL:Lcom/facebook/ads/AdSize;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_90:Lcom/facebook/ads/AdSize;

    aput-object v1, v0, v8

    const/4 v1, 0x4

    sget-object v2, Lcom/facebook/ads/AdSize;->RECTANGLE_HEIGHT_250:Lcom/facebook/ads/AdSize;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/ads/AdSize;->c:[Lcom/facebook/ads/AdSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/facebook/ads/AdSize;->a:I

    iput p4, p0, Lcom/facebook/ads/AdSize;->b:I

    return-void
.end method

.method private static a(Lcom/facebook/ads/AdSize;II)Z
    .locals 1

    if-eqz p0, :cond_0

    iget v0, p0, Lcom/facebook/ads/AdSize;->a:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/facebook/ads/AdSize;->b:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fromWidthAndHeight(II)Lcom/facebook/ads/AdSize;
    .locals 5

    const-class v0, Lcom/facebook/ads/AdSize;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/AdSize;

    array-length v3, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    invoke-static {v1, p0, p1}, Lcom/facebook/ads/AdSize;->a(Lcom/facebook/ads/AdSize;II)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/AdSize;
    .locals 1

    const-class v0, Lcom/facebook/ads/AdSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/AdSize;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/AdSize;
    .locals 1

    sget-object v0, Lcom/facebook/ads/AdSize;->c:[Lcom/facebook/ads/AdSize;

    invoke-virtual {v0}, [Lcom/facebook/ads/AdSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/AdSize;

    return-object v0
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/AdSize;->b:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/AdSize;->a:I

    return v0
.end method
