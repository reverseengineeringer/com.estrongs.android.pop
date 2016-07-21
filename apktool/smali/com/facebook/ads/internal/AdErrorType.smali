.class public final enum Lcom/facebook/ads/internal/AdErrorType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/internal/AdErrorType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AD_REQUEST_FAILED:Lcom/facebook/ads/internal/AdErrorType;

.field public static final enum AD_REQUEST_TIMEOUT:Lcom/facebook/ads/internal/AdErrorType;

.field public static final enum ERROR_MESSAGE:Lcom/facebook/ads/internal/AdErrorType;

.field public static final enum INTERNAL_ERROR:Lcom/facebook/ads/internal/AdErrorType;

.field public static final enum INVALID_PARAMETERS:Lcom/facebook/ads/internal/AdErrorType;

.field public static final enum LOAD_TOO_FREQUENTLY:Lcom/facebook/ads/internal/AdErrorType;

.field public static final enum NETWORK_ERROR:Lcom/facebook/ads/internal/AdErrorType;

.field public static final enum NO_AD_PLACEMENT:Lcom/facebook/ads/internal/AdErrorType;

.field public static final enum NO_FILL:Lcom/facebook/ads/internal/AdErrorType;

.field public static final enum PARSER_FAILURE:Lcom/facebook/ads/internal/AdErrorType;

.field public static final enum SERVER_ERROR:Lcom/facebook/ads/internal/AdErrorType;

.field public static final enum START_BEFORE_INIT:Lcom/facebook/ads/internal/AdErrorType;

.field public static final enum UNKNOWN_ERROR:Lcom/facebook/ads/internal/AdErrorType;

.field public static final enum UNKNOWN_RESPONSE:Lcom/facebook/ads/internal/AdErrorType;

.field private static final synthetic d:[Lcom/facebook/ads/internal/AdErrorType;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v2, 0x0

    const/4 v9, 0x1

    new-instance v0, Lcom/facebook/ads/internal/AdErrorType;

    const-string v1, "UNKNOWN_ERROR"

    const/4 v3, -0x1

    const-string v4, "unknown error"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v0, Lcom/facebook/ads/internal/AdErrorType;->UNKNOWN_ERROR:Lcom/facebook/ads/internal/AdErrorType;

    new-instance v3, Lcom/facebook/ads/internal/AdErrorType;

    const-string v4, "NETWORK_ERROR"

    const/16 v6, 0x3e8

    const-string v7, "Network Error"

    move v5, v9

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/AdErrorType;->NETWORK_ERROR:Lcom/facebook/ads/internal/AdErrorType;

    new-instance v3, Lcom/facebook/ads/internal/AdErrorType;

    const-string v4, "NO_FILL"

    const/16 v6, 0x3e9

    const-string v7, "No Fill"

    move v5, v10

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/AdErrorType;->NO_FILL:Lcom/facebook/ads/internal/AdErrorType;

    new-instance v3, Lcom/facebook/ads/internal/AdErrorType;

    const-string v4, "LOAD_TOO_FREQUENTLY"

    const/16 v6, 0x3ea

    const-string v7, "Ad was re-loaded too frequently"

    move v5, v11

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/AdErrorType;->LOAD_TOO_FREQUENTLY:Lcom/facebook/ads/internal/AdErrorType;

    new-instance v3, Lcom/facebook/ads/internal/AdErrorType;

    const-string v4, "INVALID_PARAMETERS"

    const/16 v6, 0x3eb

    const-string v7, "Ad was requested with invalid parameters"

    move v5, v12

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/AdErrorType;->INVALID_PARAMETERS:Lcom/facebook/ads/internal/AdErrorType;

    new-instance v3, Lcom/facebook/ads/internal/AdErrorType;

    const-string v4, "SERVER_ERROR"

    const/4 v5, 0x5

    const/16 v6, 0x7d0

    const-string v7, "Server Error"

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/AdErrorType;->SERVER_ERROR:Lcom/facebook/ads/internal/AdErrorType;

    new-instance v3, Lcom/facebook/ads/internal/AdErrorType;

    const-string v4, "INTERNAL_ERROR"

    const/4 v5, 0x6

    const/16 v6, 0x7d1

    const-string v7, "Internal Error"

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/AdErrorType;

    new-instance v3, Lcom/facebook/ads/internal/AdErrorType;

    const-string v4, "START_BEFORE_INIT"

    const/4 v5, 0x7

    const/16 v6, 0x7d4

    const-string v7, "initAd must be called before startAd"

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/AdErrorType;->START_BEFORE_INIT:Lcom/facebook/ads/internal/AdErrorType;

    new-instance v3, Lcom/facebook/ads/internal/AdErrorType;

    const-string v4, "AD_REQUEST_FAILED"

    const/16 v5, 0x8

    const/16 v6, 0x457

    const-string v7, "Facebook Ads SDK request for ads failed"

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/AdErrorType;->AD_REQUEST_FAILED:Lcom/facebook/ads/internal/AdErrorType;

    new-instance v3, Lcom/facebook/ads/internal/AdErrorType;

    const-string v4, "AD_REQUEST_TIMEOUT"

    const/16 v5, 0x9

    const/16 v6, 0x458

    const-string v7, "Facebook Ads SDK request for ads timed out"

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/AdErrorType;->AD_REQUEST_TIMEOUT:Lcom/facebook/ads/internal/AdErrorType;

    new-instance v3, Lcom/facebook/ads/internal/AdErrorType;

    const-string v4, "PARSER_FAILURE"

    const/16 v5, 0xa

    const/16 v6, 0x4b1

    const-string v7, "Failed to parse Facebook Ads SDK delivery response"

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/AdErrorType;->PARSER_FAILURE:Lcom/facebook/ads/internal/AdErrorType;

    new-instance v3, Lcom/facebook/ads/internal/AdErrorType;

    const-string v4, "UNKNOWN_RESPONSE"

    const/16 v5, 0xb

    const/16 v6, 0x4b2

    const-string v7, "Unknown Facebook Ads SDK delivery response type"

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/AdErrorType;->UNKNOWN_RESPONSE:Lcom/facebook/ads/internal/AdErrorType;

    new-instance v3, Lcom/facebook/ads/internal/AdErrorType;

    const-string v4, "ERROR_MESSAGE"

    const/16 v5, 0xc

    const/16 v6, 0x4b3

    const-string v7, "Facebook Ads SDK delivery response Error message"

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/AdErrorType;->ERROR_MESSAGE:Lcom/facebook/ads/internal/AdErrorType;

    new-instance v3, Lcom/facebook/ads/internal/AdErrorType;

    const-string v4, "NO_AD_PLACEMENT"

    const/16 v5, 0xd

    const/16 v6, 0x516

    const-string v7, "Facebook Ads SDK returned no ad placements"

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/AdErrorType;->NO_AD_PLACEMENT:Lcom/facebook/ads/internal/AdErrorType;

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/facebook/ads/internal/AdErrorType;

    sget-object v1, Lcom/facebook/ads/internal/AdErrorType;->UNKNOWN_ERROR:Lcom/facebook/ads/internal/AdErrorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/internal/AdErrorType;->NETWORK_ERROR:Lcom/facebook/ads/internal/AdErrorType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/facebook/ads/internal/AdErrorType;->NO_FILL:Lcom/facebook/ads/internal/AdErrorType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/facebook/ads/internal/AdErrorType;->LOAD_TOO_FREQUENTLY:Lcom/facebook/ads/internal/AdErrorType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/facebook/ads/internal/AdErrorType;->INVALID_PARAMETERS:Lcom/facebook/ads/internal/AdErrorType;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/ads/internal/AdErrorType;->SERVER_ERROR:Lcom/facebook/ads/internal/AdErrorType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/ads/internal/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/AdErrorType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/ads/internal/AdErrorType;->START_BEFORE_INIT:Lcom/facebook/ads/internal/AdErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/facebook/ads/internal/AdErrorType;->AD_REQUEST_FAILED:Lcom/facebook/ads/internal/AdErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/facebook/ads/internal/AdErrorType;->AD_REQUEST_TIMEOUT:Lcom/facebook/ads/internal/AdErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/facebook/ads/internal/AdErrorType;->PARSER_FAILURE:Lcom/facebook/ads/internal/AdErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/facebook/ads/internal/AdErrorType;->UNKNOWN_RESPONSE:Lcom/facebook/ads/internal/AdErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/facebook/ads/internal/AdErrorType;->ERROR_MESSAGE:Lcom/facebook/ads/internal/AdErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/facebook/ads/internal/AdErrorType;->NO_AD_PLACEMENT:Lcom/facebook/ads/internal/AdErrorType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/ads/internal/AdErrorType;->d:[Lcom/facebook/ads/internal/AdErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/facebook/ads/internal/AdErrorType;->a:I

    iput-object p4, p0, Lcom/facebook/ads/internal/AdErrorType;->b:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/facebook/ads/internal/AdErrorType;->c:Z

    return-void
.end method

.method public static adErrorTypeFromCode(I)Lcom/facebook/ads/internal/AdErrorType;
    .locals 5

    invoke-static {}, Lcom/facebook/ads/internal/AdErrorType;->values()[Lcom/facebook/ads/internal/AdErrorType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/facebook/ads/internal/AdErrorType;->getErrorCode()I

    move-result v4

    if-ne v4, p0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/facebook/ads/internal/AdErrorType;->UNKNOWN_ERROR:Lcom/facebook/ads/internal/AdErrorType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/AdErrorType;
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/AdErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/AdErrorType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/internal/AdErrorType;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/AdErrorType;->d:[Lcom/facebook/ads/internal/AdErrorType;

    invoke-virtual {v0}, [Lcom/facebook/ads/internal/AdErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/internal/AdErrorType;

    return-object v0
.end method


# virtual methods
.method a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/AdErrorType;->c:Z

    return v0
.end method

.method public getAdError(Ljava/lang/String;)Lcom/facebook/ads/AdError;
    .locals 1

    new-instance v0, Lcom/facebook/ads/internal/b;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/internal/b;-><init>(Lcom/facebook/ads/internal/AdErrorType;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b;->b()Lcom/facebook/ads/AdError;

    move-result-object v0

    return-object v0
.end method

.method public getAdErrorWrapper(Ljava/lang/String;)Lcom/facebook/ads/internal/b;
    .locals 1

    new-instance v0, Lcom/facebook/ads/internal/b;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/internal/b;-><init>(Lcom/facebook/ads/internal/AdErrorType;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDefaultErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/AdErrorType;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/AdErrorType;->a:I

    return v0
.end method
