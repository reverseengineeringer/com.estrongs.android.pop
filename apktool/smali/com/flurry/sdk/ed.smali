.class public final enum Lcom/flurry/sdk/ed;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/ed;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/ed;

.field public static final enum b:Lcom/flurry/sdk/ed;

.field public static final enum c:Lcom/flurry/sdk/ed;

.field public static final enum d:Lcom/flurry/sdk/ed;

.field public static final enum e:Lcom/flurry/sdk/ed;

.field public static final enum f:Lcom/flurry/sdk/ed;

.field public static final enum g:Lcom/flurry/sdk/ed;

.field public static final enum h:Lcom/flurry/sdk/ed;

.field public static final enum i:Lcom/flurry/sdk/ed;

.field public static final enum j:Lcom/flurry/sdk/ed;

.field public static final enum k:Lcom/flurry/sdk/ed;

.field public static final enum l:Lcom/flurry/sdk/ed;

.field public static final enum m:Lcom/flurry/sdk/ed;

.field public static final enum n:Lcom/flurry/sdk/ed;

.field public static final enum o:Lcom/flurry/sdk/ed;

.field private static final synthetic q:[Lcom/flurry/sdk/ed;


# instance fields
.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/flurry/sdk/ed;

    const-string v1, "kUnknown"

    invoke-direct {v0, v1, v4, v4}, Lcom/flurry/sdk/ed;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ed;->a:Lcom/flurry/sdk/ed;

    new-instance v0, Lcom/flurry/sdk/ed;

    const-string v1, "kNoNetworkConnectivity"

    invoke-direct {v0, v1, v5, v5}, Lcom/flurry/sdk/ed;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ed;->b:Lcom/flurry/sdk/ed;

    new-instance v0, Lcom/flurry/sdk/ed;

    const-string v1, "kNoContext"

    invoke-direct {v0, v1, v6, v6}, Lcom/flurry/sdk/ed;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ed;->c:Lcom/flurry/sdk/ed;

    new-instance v0, Lcom/flurry/sdk/ed;

    const-string v1, "kInvalidOAuth"

    invoke-direct {v0, v1, v7, v7}, Lcom/flurry/sdk/ed;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ed;->d:Lcom/flurry/sdk/ed;

    new-instance v0, Lcom/flurry/sdk/ed;

    const-string v1, "kInvalidImageUrl"

    invoke-direct {v0, v1, v8, v8}, Lcom/flurry/sdk/ed;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ed;->e:Lcom/flurry/sdk/ed;

    new-instance v0, Lcom/flurry/sdk/ed;

    const-string v1, "kInvalidBundle"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/ed;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ed;->f:Lcom/flurry/sdk/ed;

    new-instance v0, Lcom/flurry/sdk/ed;

    const-string v1, "kRequestTokenFailed"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/ed;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ed;->g:Lcom/flurry/sdk/ed;

    new-instance v0, Lcom/flurry/sdk/ed;

    const-string v1, "kUserInfoFailed"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/ed;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ed;->h:Lcom/flurry/sdk/ed;

    new-instance v0, Lcom/flurry/sdk/ed;

    const-string v1, "kOAuthLoginFailed"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/ed;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ed;->i:Lcom/flurry/sdk/ed;

    new-instance v0, Lcom/flurry/sdk/ed;

    const-string v1, "kAccessTokenFailed"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/ed;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ed;->j:Lcom/flurry/sdk/ed;

    new-instance v0, Lcom/flurry/sdk/ed;

    const-string v1, "kPostFailed"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/ed;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ed;->k:Lcom/flurry/sdk/ed;

    new-instance v0, Lcom/flurry/sdk/ed;

    const-string v1, "kInvalidPostId"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/ed;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ed;->l:Lcom/flurry/sdk/ed;

    new-instance v0, Lcom/flurry/sdk/ed;

    const-string v1, "kPostCancelled"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/ed;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ed;->m:Lcom/flurry/sdk/ed;

    new-instance v0, Lcom/flurry/sdk/ed;

    const-string v1, "kTimeOut"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/ed;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ed;->n:Lcom/flurry/sdk/ed;

    new-instance v0, Lcom/flurry/sdk/ed;

    const-string v1, "kFlurryShareActivityMissing"

    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/ed;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ed;->o:Lcom/flurry/sdk/ed;

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/flurry/sdk/ed;

    sget-object v1, Lcom/flurry/sdk/ed;->a:Lcom/flurry/sdk/ed;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/ed;->b:Lcom/flurry/sdk/ed;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/sdk/ed;->c:Lcom/flurry/sdk/ed;

    aput-object v1, v0, v6

    sget-object v1, Lcom/flurry/sdk/ed;->d:Lcom/flurry/sdk/ed;

    aput-object v1, v0, v7

    sget-object v1, Lcom/flurry/sdk/ed;->e:Lcom/flurry/sdk/ed;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/sdk/ed;->f:Lcom/flurry/sdk/ed;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/sdk/ed;->g:Lcom/flurry/sdk/ed;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/flurry/sdk/ed;->h:Lcom/flurry/sdk/ed;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/flurry/sdk/ed;->i:Lcom/flurry/sdk/ed;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/flurry/sdk/ed;->j:Lcom/flurry/sdk/ed;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/flurry/sdk/ed;->k:Lcom/flurry/sdk/ed;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/flurry/sdk/ed;->l:Lcom/flurry/sdk/ed;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/flurry/sdk/ed;->m:Lcom/flurry/sdk/ed;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/flurry/sdk/ed;->n:Lcom/flurry/sdk/ed;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/flurry/sdk/ed;->o:Lcom/flurry/sdk/ed;

    aput-object v2, v0, v1

    sput-object v0, Lcom/flurry/sdk/ed;->q:[Lcom/flurry/sdk/ed;

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

    iput p3, p0, Lcom/flurry/sdk/ed;->p:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/ed;
    .locals 1

    const-class v0, Lcom/flurry/sdk/ed;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ed;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/ed;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/ed;->q:[Lcom/flurry/sdk/ed;

    invoke-virtual {v0}, [Lcom/flurry/sdk/ed;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/ed;

    return-object v0
.end method
