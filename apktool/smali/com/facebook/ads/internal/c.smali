.class public final enum Lcom/facebook/ads/internal/c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/internal/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/ads/internal/c;

.field public static final enum b:Lcom/facebook/ads/internal/c;

.field private static final synthetic d:[Lcom/facebook/ads/internal/c;


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/facebook/ads/internal/c;

    const-string v1, "ADS"

    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/ads/internal/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/c;->a:Lcom/facebook/ads/internal/c;

    new-instance v0, Lcom/facebook/ads/internal/c;

    const-string v1, "APP_OF_THE_DAY"

    invoke-direct {v0, v1, v3, v3}, Lcom/facebook/ads/internal/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/c;->b:Lcom/facebook/ads/internal/c;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/ads/internal/c;

    sget-object v1, Lcom/facebook/ads/internal/c;->a:Lcom/facebook/ads/internal/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/internal/c;->b:Lcom/facebook/ads/internal/c;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/ads/internal/c;->d:[Lcom/facebook/ads/internal/c;

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

    iput p3, p0, Lcom/facebook/ads/internal/c;->c:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/c;
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/c;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/internal/c;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/c;->d:[Lcom/facebook/ads/internal/c;

    invoke-virtual {v0}, [Lcom/facebook/ads/internal/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/internal/c;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/c;->c:I

    return v0
.end method
