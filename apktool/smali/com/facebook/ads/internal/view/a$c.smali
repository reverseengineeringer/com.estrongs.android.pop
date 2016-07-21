.class public Lcom/facebook/ads/internal/view/a$c;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/a;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/view/a;)V
    .locals 1

    iput-object p1, p0, Lcom/facebook/ads/internal/view/a$c;->a:Lcom/facebook/ads/internal/view/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/facebook/ads/internal/view/a$c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/a$c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public alert(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a$c;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getAnalogInfo()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/facebook/ads/internal/util/a;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/util/g;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onPageInitialized()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a$c;->a:Lcom/facebook/ads/internal/view/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/view/a$c;->a:Lcom/facebook/ads/internal/view/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/a;->a(Lcom/facebook/ads/internal/view/a;)Lcom/facebook/ads/internal/view/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/view/a$a;->a()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a$c;->a:Lcom/facebook/ads/internal/view/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/a;->b(Lcom/facebook/ads/internal/view/a;)Lcom/facebook/ads/internal/adapters/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a$c;->a:Lcom/facebook/ads/internal/view/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/a;->b(Lcom/facebook/ads/internal/view/a;)Lcom/facebook/ads/internal/adapters/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/e;->a()V

    goto :goto_0
.end method
