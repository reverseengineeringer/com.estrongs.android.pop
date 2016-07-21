.class Lcom/facebook/ads/internal/view/a$1;
.super Lcom/facebook/ads/internal/adapters/e$a;


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/a$a;

.field final synthetic b:Lcom/facebook/ads/internal/view/a;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/a;Lcom/facebook/ads/internal/view/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/a$1;->b:Lcom/facebook/ads/internal/view/a;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/a$1;->a:Lcom/facebook/ads/internal/view/a$a;

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a$1;->a:Lcom/facebook/ads/internal/view/a$a;

    invoke-interface {v0}, Lcom/facebook/ads/internal/view/a$a;->b()V

    return-void
.end method
