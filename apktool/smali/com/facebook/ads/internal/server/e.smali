.class public Lcom/facebook/ads/internal/server/e;
.super Lcom/facebook/ads/internal/server/c;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/server/c$a;->b:Lcom/facebook/ads/internal/server/c$a;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/server/c;-><init>(Lcom/facebook/ads/internal/server/c$a;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/server/e;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/server/e;->a:Ljava/lang/String;

    return-object v0
.end method
