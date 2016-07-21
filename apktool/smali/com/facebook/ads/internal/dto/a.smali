.class public Lcom/facebook/ads/internal/dto/a;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/facebook/ads/internal/server/AdPlacementType;

.field public b:Ljava/lang/String;

.field public c:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/server/AdPlacementType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/dto/a;->a:Lcom/facebook/ads/internal/server/AdPlacementType;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/dto/a;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/dto/a;->c:Lorg/json/JSONObject;

    return-void
.end method
