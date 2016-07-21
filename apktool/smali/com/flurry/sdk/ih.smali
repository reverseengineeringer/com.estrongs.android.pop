.class public final enum Lcom/flurry/sdk/ih;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/ih;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/ih;

.field public static final enum b:Lcom/flurry/sdk/ih;

.field public static final enum c:Lcom/flurry/sdk/ih;

.field public static final enum d:Lcom/flurry/sdk/ih;

.field public static final enum e:Lcom/flurry/sdk/ih;

.field public static final enum f:Lcom/flurry/sdk/ih;

.field public static final enum g:Lcom/flurry/sdk/ih;

.field private static final synthetic i:[Lcom/flurry/sdk/ih;


# instance fields
.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/flurry/sdk/ih;

    const-string v1, "HW_MACHINE"

    invoke-direct {v0, v1, v4, v4}, Lcom/flurry/sdk/ih;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ih;->a:Lcom/flurry/sdk/ih;

    new-instance v0, Lcom/flurry/sdk/ih;

    const-string v1, "MODEL"

    invoke-direct {v0, v1, v5, v5}, Lcom/flurry/sdk/ih;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ih;->b:Lcom/flurry/sdk/ih;

    new-instance v0, Lcom/flurry/sdk/ih;

    const-string v1, "BRAND"

    invoke-direct {v0, v1, v6, v6}, Lcom/flurry/sdk/ih;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ih;->c:Lcom/flurry/sdk/ih;

    new-instance v0, Lcom/flurry/sdk/ih;

    const-string v1, "ID"

    invoke-direct {v0, v1, v7, v7}, Lcom/flurry/sdk/ih;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ih;->d:Lcom/flurry/sdk/ih;

    new-instance v0, Lcom/flurry/sdk/ih;

    const-string v1, "DEVICE"

    invoke-direct {v0, v1, v8, v8}, Lcom/flurry/sdk/ih;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ih;->e:Lcom/flurry/sdk/ih;

    new-instance v0, Lcom/flurry/sdk/ih;

    const-string v1, "PRODUCT"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/ih;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ih;->f:Lcom/flurry/sdk/ih;

    new-instance v0, Lcom/flurry/sdk/ih;

    const-string v1, "VERSION_RELEASE"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/ih;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ih;->g:Lcom/flurry/sdk/ih;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/flurry/sdk/ih;

    sget-object v1, Lcom/flurry/sdk/ih;->a:Lcom/flurry/sdk/ih;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/ih;->b:Lcom/flurry/sdk/ih;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/sdk/ih;->c:Lcom/flurry/sdk/ih;

    aput-object v1, v0, v6

    sget-object v1, Lcom/flurry/sdk/ih;->d:Lcom/flurry/sdk/ih;

    aput-object v1, v0, v7

    sget-object v1, Lcom/flurry/sdk/ih;->e:Lcom/flurry/sdk/ih;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/sdk/ih;->f:Lcom/flurry/sdk/ih;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/sdk/ih;->g:Lcom/flurry/sdk/ih;

    aput-object v2, v0, v1

    sput-object v0, Lcom/flurry/sdk/ih;->i:[Lcom/flurry/sdk/ih;

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

    iput p3, p0, Lcom/flurry/sdk/ih;->h:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/ih;
    .locals 1

    const-class v0, Lcom/flurry/sdk/ih;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ih;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/ih;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/ih;->i:[Lcom/flurry/sdk/ih;

    invoke-virtual {v0}, [Lcom/flurry/sdk/ih;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/ih;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/ih;->h:I

    return v0
.end method
