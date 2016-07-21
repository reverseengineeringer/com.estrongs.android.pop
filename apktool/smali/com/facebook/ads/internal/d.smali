.class public final enum Lcom/facebook/ads/internal/d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/internal/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/ads/internal/d;

.field public static final enum b:Lcom/facebook/ads/internal/d;

.field public static final enum c:Lcom/facebook/ads/internal/d;

.field public static final enum d:Lcom/facebook/ads/internal/d;

.field public static final enum e:Lcom/facebook/ads/internal/d;

.field public static final enum f:Lcom/facebook/ads/internal/d;

.field public static final enum g:Lcom/facebook/ads/internal/d;

.field public static final enum h:Lcom/facebook/ads/internal/d;

.field public static final enum i:Lcom/facebook/ads/internal/d;

.field public static final enum j:Lcom/facebook/ads/internal/d;

.field public static final enum k:Lcom/facebook/ads/internal/d;

.field public static final enum l:Lcom/facebook/ads/internal/d;

.field private static final n:[Lcom/facebook/ads/internal/d;

.field private static final o:Ljava/lang/String;

.field private static final p:Ljava/lang/String;

.field private static final synthetic q:[Lcom/facebook/ads/internal/d;


# instance fields
.field private final m:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    new-instance v1, Lcom/facebook/ads/internal/d;

    const-string v2, "APP_AD"

    invoke-direct {v1, v2, v0, v0}, Lcom/facebook/ads/internal/d;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/ads/internal/d;->a:Lcom/facebook/ads/internal/d;

    new-instance v1, Lcom/facebook/ads/internal/d;

    const-string v2, "LINK_AD"

    invoke-direct {v1, v2, v5, v5}, Lcom/facebook/ads/internal/d;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/ads/internal/d;->b:Lcom/facebook/ads/internal/d;

    new-instance v1, Lcom/facebook/ads/internal/d;

    const-string v2, "APP_AD_V2"

    invoke-direct {v1, v2, v6, v6}, Lcom/facebook/ads/internal/d;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/ads/internal/d;->c:Lcom/facebook/ads/internal/d;

    new-instance v1, Lcom/facebook/ads/internal/d;

    const-string v2, "LINK_AD_V2"

    invoke-direct {v1, v2, v7, v7}, Lcom/facebook/ads/internal/d;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/ads/internal/d;->d:Lcom/facebook/ads/internal/d;

    new-instance v1, Lcom/facebook/ads/internal/d;

    const-string v2, "APP_ENGAGEMENT_AD"

    invoke-direct {v1, v2, v8, v8}, Lcom/facebook/ads/internal/d;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/ads/internal/d;->e:Lcom/facebook/ads/internal/d;

    new-instance v1, Lcom/facebook/ads/internal/d;

    const-string v2, "AD_CHOICES"

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/ads/internal/d;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/ads/internal/d;->f:Lcom/facebook/ads/internal/d;

    new-instance v1, Lcom/facebook/ads/internal/d;

    const-string v2, "JS_TRIGGER"

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/ads/internal/d;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/ads/internal/d;->g:Lcom/facebook/ads/internal/d;

    new-instance v1, Lcom/facebook/ads/internal/d;

    const-string v2, "JS_TRIGGER_NO_AUTO_IMP_LOGGING"

    const/4 v3, 0x7

    const/4 v4, 0x7

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/ads/internal/d;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/ads/internal/d;->h:Lcom/facebook/ads/internal/d;

    new-instance v1, Lcom/facebook/ads/internal/d;

    const-string v2, "VIDEO_AD"

    const/16 v3, 0x8

    const/16 v4, 0x8

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/ads/internal/d;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/ads/internal/d;->i:Lcom/facebook/ads/internal/d;

    new-instance v1, Lcom/facebook/ads/internal/d;

    const-string v2, "INLINE_VIDEO_AD"

    const/16 v3, 0x9

    const/16 v4, 0x9

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/ads/internal/d;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/ads/internal/d;->j:Lcom/facebook/ads/internal/d;

    new-instance v1, Lcom/facebook/ads/internal/d;

    const-string v2, "BANNER_TO_INTERSTITIAL"

    const/16 v3, 0xa

    const/16 v4, 0xa

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/ads/internal/d;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/ads/internal/d;->k:Lcom/facebook/ads/internal/d;

    new-instance v1, Lcom/facebook/ads/internal/d;

    const-string v2, "NATIVE_CLOSE_BUTTON"

    const/16 v3, 0xb

    const/16 v4, 0xb

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/ads/internal/d;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/ads/internal/d;->l:Lcom/facebook/ads/internal/d;

    const/16 v1, 0xc

    new-array v1, v1, [Lcom/facebook/ads/internal/d;

    sget-object v2, Lcom/facebook/ads/internal/d;->a:Lcom/facebook/ads/internal/d;

    aput-object v2, v1, v0

    sget-object v2, Lcom/facebook/ads/internal/d;->b:Lcom/facebook/ads/internal/d;

    aput-object v2, v1, v5

    sget-object v2, Lcom/facebook/ads/internal/d;->c:Lcom/facebook/ads/internal/d;

    aput-object v2, v1, v6

    sget-object v2, Lcom/facebook/ads/internal/d;->d:Lcom/facebook/ads/internal/d;

    aput-object v2, v1, v7

    sget-object v2, Lcom/facebook/ads/internal/d;->e:Lcom/facebook/ads/internal/d;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/facebook/ads/internal/d;->f:Lcom/facebook/ads/internal/d;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/facebook/ads/internal/d;->g:Lcom/facebook/ads/internal/d;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/facebook/ads/internal/d;->h:Lcom/facebook/ads/internal/d;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/facebook/ads/internal/d;->i:Lcom/facebook/ads/internal/d;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/facebook/ads/internal/d;->j:Lcom/facebook/ads/internal/d;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/facebook/ads/internal/d;->k:Lcom/facebook/ads/internal/d;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/facebook/ads/internal/d;->l:Lcom/facebook/ads/internal/d;

    aput-object v3, v1, v2

    sput-object v1, Lcom/facebook/ads/internal/d;->q:[Lcom/facebook/ads/internal/d;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/facebook/ads/internal/d;

    sget-object v2, Lcom/facebook/ads/internal/d;->d:Lcom/facebook/ads/internal/d;

    aput-object v2, v1, v0

    sget-object v2, Lcom/facebook/ads/internal/d;->e:Lcom/facebook/ads/internal/d;

    aput-object v2, v1, v5

    sget-object v2, Lcom/facebook/ads/internal/d;->f:Lcom/facebook/ads/internal/d;

    aput-object v2, v1, v6

    sget-object v2, Lcom/facebook/ads/internal/d;->h:Lcom/facebook/ads/internal/d;

    aput-object v2, v1, v7

    sget-object v2, Lcom/facebook/ads/internal/d;->l:Lcom/facebook/ads/internal/d;

    aput-object v2, v1, v8

    sput-object v1, Lcom/facebook/ads/internal/d;->n:[Lcom/facebook/ads/internal/d;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    sget-object v2, Lcom/facebook/ads/internal/d;->n:[Lcom/facebook/ads/internal/d;

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/facebook/ads/internal/d;->a()I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/d;->o:Ljava/lang/String;

    const-string v0, ","

    sget-object v1, Lcom/facebook/ads/internal/d;->n:[Lcom/facebook/ads/internal/d;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/d;->p:Ljava/lang/String;

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

    iput p3, p0, Lcom/facebook/ads/internal/d;->m:I

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/facebook/ads/internal/util/AdInternalSettings;->shouldUseLiveRailEndpoint()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/ads/internal/d;->p:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/facebook/ads/internal/d;->o:Ljava/lang/String;

    goto :goto_0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/d;->p:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/d;
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/d;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/internal/d;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/d;->q:[Lcom/facebook/ads/internal/d;

    invoke-virtual {v0}, [Lcom/facebook/ads/internal/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/internal/d;

    return-object v0
.end method


# virtual methods
.method a()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/d;->m:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/d;->m:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
