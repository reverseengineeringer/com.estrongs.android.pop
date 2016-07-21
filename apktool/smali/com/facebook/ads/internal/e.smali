.class public final enum Lcom/facebook/ads/internal/e;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/internal/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/ads/internal/e;

.field public static final enum b:Lcom/facebook/ads/internal/e;

.field public static final enum c:Lcom/facebook/ads/internal/e;

.field public static final enum d:Lcom/facebook/ads/internal/e;

.field public static final enum e:Lcom/facebook/ads/internal/e;

.field public static final enum f:Lcom/facebook/ads/internal/e;

.field public static final enum g:Lcom/facebook/ads/internal/e;

.field public static final enum h:Lcom/facebook/ads/internal/e;

.field public static final enum i:Lcom/facebook/ads/internal/e;

.field public static final enum j:Lcom/facebook/ads/internal/e;

.field public static final enum k:Lcom/facebook/ads/internal/e;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final synthetic m:[Lcom/facebook/ads/internal/e;


# instance fields
.field private final l:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x7

    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x0

    new-instance v0, Lcom/facebook/ads/internal/e;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4, v4}, Lcom/facebook/ads/internal/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/e;->a:Lcom/facebook/ads/internal/e;

    new-instance v0, Lcom/facebook/ads/internal/e;

    const-string v1, "WEBVIEW_BANNER_LEGACY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v5}, Lcom/facebook/ads/internal/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/e;->b:Lcom/facebook/ads/internal/e;

    new-instance v0, Lcom/facebook/ads/internal/e;

    const-string v1, "WEBVIEW_BANNER_50"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v6}, Lcom/facebook/ads/internal/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/e;->c:Lcom/facebook/ads/internal/e;

    new-instance v0, Lcom/facebook/ads/internal/e;

    const-string v1, "WEBVIEW_BANNER_90"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v7}, Lcom/facebook/ads/internal/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/e;->d:Lcom/facebook/ads/internal/e;

    new-instance v0, Lcom/facebook/ads/internal/e;

    const-string v1, "WEBVIEW_BANNER_250"

    invoke-direct {v0, v1, v5, v8}, Lcom/facebook/ads/internal/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/e;->e:Lcom/facebook/ads/internal/e;

    new-instance v0, Lcom/facebook/ads/internal/e;

    const-string v1, "WEBVIEW_INTERSTITIAL_UNKNOWN"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v6, v2}, Lcom/facebook/ads/internal/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/e;->f:Lcom/facebook/ads/internal/e;

    new-instance v0, Lcom/facebook/ads/internal/e;

    const-string v1, "WEBVIEW_INTERSTITIAL_HORIZONTAL"

    const/16 v2, 0x65

    invoke-direct {v0, v1, v7, v2}, Lcom/facebook/ads/internal/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/e;->g:Lcom/facebook/ads/internal/e;

    new-instance v0, Lcom/facebook/ads/internal/e;

    const-string v1, "WEBVIEW_INTERSTITIAL_VERTICAL"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v8, v2}, Lcom/facebook/ads/internal/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/e;->h:Lcom/facebook/ads/internal/e;

    new-instance v0, Lcom/facebook/ads/internal/e;

    const-string v1, "WEBVIEW_INTERSTITIAL_TABLET"

    const/16 v2, 0x8

    const/16 v3, 0x67

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/internal/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/e;->i:Lcom/facebook/ads/internal/e;

    new-instance v0, Lcom/facebook/ads/internal/e;

    const-string v1, "NATIVE_UNKNOWN"

    const/16 v2, 0x9

    const/16 v3, 0xc8

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/internal/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/e;->j:Lcom/facebook/ads/internal/e;

    new-instance v0, Lcom/facebook/ads/internal/e;

    const-string v1, "NATIVE_250"

    const/16 v2, 0xa

    const/16 v3, 0xc9

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/internal/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/e;->k:Lcom/facebook/ads/internal/e;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/facebook/ads/internal/e;

    sget-object v1, Lcom/facebook/ads/internal/e;->a:Lcom/facebook/ads/internal/e;

    aput-object v1, v0, v4

    const/4 v1, 0x1

    sget-object v2, Lcom/facebook/ads/internal/e;->b:Lcom/facebook/ads/internal/e;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/facebook/ads/internal/e;->c:Lcom/facebook/ads/internal/e;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/facebook/ads/internal/e;->d:Lcom/facebook/ads/internal/e;

    aput-object v2, v0, v1

    sget-object v1, Lcom/facebook/ads/internal/e;->e:Lcom/facebook/ads/internal/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/ads/internal/e;->f:Lcom/facebook/ads/internal/e;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/ads/internal/e;->g:Lcom/facebook/ads/internal/e;

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/ads/internal/e;->h:Lcom/facebook/ads/internal/e;

    aput-object v1, v0, v8

    const/16 v1, 0x8

    sget-object v2, Lcom/facebook/ads/internal/e;->i:Lcom/facebook/ads/internal/e;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/facebook/ads/internal/e;->j:Lcom/facebook/ads/internal/e;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/facebook/ads/internal/e;->k:Lcom/facebook/ads/internal/e;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/ads/internal/e;->m:[Lcom/facebook/ads/internal/e;

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

    iput p3, p0, Lcom/facebook/ads/internal/e;->l:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/e;
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/e;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/internal/e;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/e;->m:[Lcom/facebook/ads/internal/e;

    invoke-virtual {v0}, [Lcom/facebook/ads/internal/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/internal/e;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/e;->l:I

    return v0
.end method
