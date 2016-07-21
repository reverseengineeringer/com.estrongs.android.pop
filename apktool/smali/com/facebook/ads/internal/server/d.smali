.class public Lcom/facebook/ads/internal/server/d;
.super Lcom/facebook/ads/internal/server/c;


# instance fields
.field public final a:Lcom/facebook/ads/internal/dto/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/server/c$a;->c:Lcom/facebook/ads/internal/server/c$a;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/server/c;-><init>(Lcom/facebook/ads/internal/server/c$a;)V

    new-instance v0, Lcom/facebook/ads/internal/dto/c;

    invoke-direct {v0}, Lcom/facebook/ads/internal/dto/c;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/server/d;->a:Lcom/facebook/ads/internal/dto/c;

    return-void
.end method


# virtual methods
.method public b()Lcom/facebook/ads/internal/dto/c;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/server/d;->a:Lcom/facebook/ads/internal/dto/c;

    return-object v0
.end method
