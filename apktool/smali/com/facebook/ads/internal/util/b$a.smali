.class public final enum Lcom/facebook/ads/internal/util/b$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/internal/util/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/ads/internal/util/b$a;

.field public static final enum b:Lcom/facebook/ads/internal/util/b$a;

.field public static final enum c:Lcom/facebook/ads/internal/util/b$a;

.field public static final enum d:Lcom/facebook/ads/internal/util/b$a;

.field public static final enum e:Lcom/facebook/ads/internal/util/b$a;

.field private static final synthetic g:[Lcom/facebook/ads/internal/util/b$a;


# instance fields
.field f:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/facebook/ads/internal/util/b$a;

    const-string v1, "OPEN_STORE"

    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/ads/internal/util/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/util/b$a;->a:Lcom/facebook/ads/internal/util/b$a;

    new-instance v0, Lcom/facebook/ads/internal/util/b$a;

    const-string v1, "OPEN_LINK"

    invoke-direct {v0, v1, v3, v3}, Lcom/facebook/ads/internal/util/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/util/b$a;->b:Lcom/facebook/ads/internal/util/b$a;

    new-instance v0, Lcom/facebook/ads/internal/util/b$a;

    const-string v1, "XOUT"

    invoke-direct {v0, v1, v4, v4}, Lcom/facebook/ads/internal/util/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/util/b$a;->c:Lcom/facebook/ads/internal/util/b$a;

    new-instance v0, Lcom/facebook/ads/internal/util/b$a;

    const-string v1, "OPEN_URL"

    invoke-direct {v0, v1, v5, v5}, Lcom/facebook/ads/internal/util/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/util/b$a;->d:Lcom/facebook/ads/internal/util/b$a;

    new-instance v0, Lcom/facebook/ads/internal/util/b$a;

    const-string v1, "SHOW_INTERSTITIAL"

    invoke-direct {v0, v1, v6, v6}, Lcom/facebook/ads/internal/util/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/util/b$a;->e:Lcom/facebook/ads/internal/util/b$a;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/facebook/ads/internal/util/b$a;

    sget-object v1, Lcom/facebook/ads/internal/util/b$a;->a:Lcom/facebook/ads/internal/util/b$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/internal/util/b$a;->b:Lcom/facebook/ads/internal/util/b$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/ads/internal/util/b$a;->c:Lcom/facebook/ads/internal/util/b$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/ads/internal/util/b$a;->d:Lcom/facebook/ads/internal/util/b$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/ads/internal/util/b$a;->e:Lcom/facebook/ads/internal/util/b$a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/facebook/ads/internal/util/b$a;->g:[Lcom/facebook/ads/internal/util/b$a;

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

    iput p3, p0, Lcom/facebook/ads/internal/util/b$a;->f:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/util/b$a;
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/util/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/util/b$a;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/internal/util/b$a;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/util/b$a;->g:[Lcom/facebook/ads/internal/util/b$a;

    invoke-virtual {v0}, [Lcom/facebook/ads/internal/util/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/internal/util/b$a;

    return-object v0
.end method
