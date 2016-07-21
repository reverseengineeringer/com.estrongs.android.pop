.class public final enum Lcom/flurry/sdk/ah;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/ah;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/ah;

.field public static final enum b:Lcom/flurry/sdk/ah;

.field public static final enum c:Lcom/flurry/sdk/ah;

.field private static final synthetic e:[Lcom/flurry/sdk/ah;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/flurry/sdk/ah;

    const-string v1, "STREAM_ONLY"

    invoke-direct {v0, v1, v2, v2}, Lcom/flurry/sdk/ah;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ah;->a:Lcom/flurry/sdk/ah;

    new-instance v0, Lcom/flurry/sdk/ah;

    const-string v1, "CACHE_ONLY"

    invoke-direct {v0, v1, v3, v3}, Lcom/flurry/sdk/ah;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ah;->b:Lcom/flurry/sdk/ah;

    new-instance v0, Lcom/flurry/sdk/ah;

    const-string v1, "CACHE_OR_STREAM"

    invoke-direct {v0, v1, v4, v4}, Lcom/flurry/sdk/ah;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ah;->c:Lcom/flurry/sdk/ah;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/flurry/sdk/ah;

    sget-object v1, Lcom/flurry/sdk/ah;->a:Lcom/flurry/sdk/ah;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/sdk/ah;->b:Lcom/flurry/sdk/ah;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/ah;->c:Lcom/flurry/sdk/ah;

    aput-object v1, v0, v4

    sput-object v0, Lcom/flurry/sdk/ah;->e:[Lcom/flurry/sdk/ah;

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

    iput p3, p0, Lcom/flurry/sdk/ah;->d:I

    return-void
.end method

.method public static a(I)Lcom/flurry/sdk/ah;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/flurry/sdk/ah;->a:Lcom/flurry/sdk/ah;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/flurry/sdk/ah;->b:Lcom/flurry/sdk/ah;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/flurry/sdk/ah;->c:Lcom/flurry/sdk/ah;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/ah;
    .locals 1

    const-class v0, Lcom/flurry/sdk/ah;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ah;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/ah;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/ah;->e:[Lcom/flurry/sdk/ah;

    invoke-virtual {v0}, [Lcom/flurry/sdk/ah;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/ah;

    return-object v0
.end method
