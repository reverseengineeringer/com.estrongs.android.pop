.class public final enum Lcom/facebook/ads/internal/dto/b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/internal/dto/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/ads/internal/dto/b;

.field public static final enum b:Lcom/facebook/ads/internal/dto/b;

.field public static final enum c:Lcom/facebook/ads/internal/dto/b;

.field public static final enum d:Lcom/facebook/ads/internal/dto/b;

.field private static final synthetic e:[Lcom/facebook/ads/internal/dto/b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/facebook/ads/internal/dto/b;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/internal/dto/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/dto/b;->a:Lcom/facebook/ads/internal/dto/b;

    new-instance v0, Lcom/facebook/ads/internal/dto/b;

    const-string v1, "BANNER"

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/internal/dto/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/dto/b;->b:Lcom/facebook/ads/internal/dto/b;

    new-instance v0, Lcom/facebook/ads/internal/dto/b;

    const-string v1, "INTERSTITIAL"

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/internal/dto/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/dto/b;->c:Lcom/facebook/ads/internal/dto/b;

    new-instance v0, Lcom/facebook/ads/internal/dto/b;

    const-string v1, "NATIVE"

    invoke-direct {v0, v1, v5}, Lcom/facebook/ads/internal/dto/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/dto/b;->d:Lcom/facebook/ads/internal/dto/b;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/ads/internal/dto/b;

    sget-object v1, Lcom/facebook/ads/internal/dto/b;->a:Lcom/facebook/ads/internal/dto/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/internal/dto/b;->b:Lcom/facebook/ads/internal/dto/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/ads/internal/dto/b;->c:Lcom/facebook/ads/internal/dto/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/ads/internal/dto/b;->d:Lcom/facebook/ads/internal/dto/b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/ads/internal/dto/b;->e:[Lcom/facebook/ads/internal/dto/b;

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

.method public static a(Lcom/facebook/ads/internal/e;)Lcom/facebook/ads/internal/dto/b;
    .locals 2

    sget-object v0, Lcom/facebook/ads/internal/dto/b$1;->a:[I

    invoke-virtual {p0}, Lcom/facebook/ads/internal/e;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/facebook/ads/internal/dto/b;->a:Lcom/facebook/ads/internal/dto/b;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/facebook/ads/internal/dto/b;->d:Lcom/facebook/ads/internal/dto/b;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/facebook/ads/internal/dto/b;->b:Lcom/facebook/ads/internal/dto/b;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/facebook/ads/internal/dto/b;->c:Lcom/facebook/ads/internal/dto/b;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/dto/b;
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/dto/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/dto/b;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/internal/dto/b;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/dto/b;->e:[Lcom/facebook/ads/internal/dto/b;

    invoke-virtual {v0}, [Lcom/facebook/ads/internal/dto/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/internal/dto/b;

    return-object v0
.end method
