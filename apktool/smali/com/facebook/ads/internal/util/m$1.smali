.class final Lcom/facebook/ads/internal/util/m$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/util/l;


# instance fields
.field final synthetic a:[I

.field final synthetic b:Lcom/facebook/ads/internal/util/l;


# direct methods
.method constructor <init>([ILcom/facebook/ads/internal/util/l;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/util/m$1;->a:[I

    iput-object p2, p0, Lcom/facebook/ads/internal/util/m$1;->b:Lcom/facebook/ads/internal/util/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/facebook/ads/internal/util/m$1;->a:[I

    aget v1, v0, v2

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, v2

    iget-object v0, p0, Lcom/facebook/ads/internal/util/m$1;->a:[I

    aget v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/util/m$1;->b:Lcom/facebook/ads/internal/util/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/util/m$1;->b:Lcom/facebook/ads/internal/util/l;

    invoke-interface {v0}, Lcom/facebook/ads/internal/util/l;->a()V

    :cond_0
    return-void
.end method
