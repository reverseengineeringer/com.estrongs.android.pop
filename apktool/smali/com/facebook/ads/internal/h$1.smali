.class Lcom/facebook/ads/internal/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/h;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/h;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/h$1;->a:Lcom/facebook/ads/internal/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/h$1;->a:Lcom/facebook/ads/internal/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/h;->a(Lcom/facebook/ads/internal/h;Z)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/h$1;->a:Lcom/facebook/ads/internal/h;

    invoke-static {v0}, Lcom/facebook/ads/internal/h;->a(Lcom/facebook/ads/internal/h;)V

    return-void
.end method
