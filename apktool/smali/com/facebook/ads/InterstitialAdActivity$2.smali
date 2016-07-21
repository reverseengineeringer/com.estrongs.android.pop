.class Lcom/facebook/ads/InterstitialAdActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/view/i$a;


# instance fields
.field final synthetic a:Lcom/facebook/ads/InterstitialAdActivity;


# direct methods
.method constructor <init>(Lcom/facebook/ads/InterstitialAdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/InterstitialAdActivity$2;->a:Lcom/facebook/ads/InterstitialAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity$2;->a:Lcom/facebook/ads/InterstitialAdActivity;

    invoke-static {v0}, Lcom/facebook/ads/InterstitialAdActivity;->a(Lcom/facebook/ads/InterstitialAdActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity$2;->a:Lcom/facebook/ads/InterstitialAdActivity;

    invoke-static {v0}, Lcom/facebook/ads/InterstitialAdActivity;->b(Lcom/facebook/ads/InterstitialAdActivity;)Lcom/facebook/ads/internal/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity$2;->a:Lcom/facebook/ads/InterstitialAdActivity;

    invoke-static {v0}, Lcom/facebook/ads/InterstitialAdActivity;->a(Lcom/facebook/ads/InterstitialAdActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/InterstitialAdActivity$2;->a:Lcom/facebook/ads/InterstitialAdActivity;

    invoke-static {v1}, Lcom/facebook/ads/InterstitialAdActivity;->b(Lcom/facebook/ads/InterstitialAdActivity;)Lcom/facebook/ads/internal/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity$2;->a:Lcom/facebook/ads/InterstitialAdActivity;

    invoke-static {v0, p1}, Lcom/facebook/ads/InterstitialAdActivity;->a(Lcom/facebook/ads/InterstitialAdActivity;Ljava/lang/String;)V

    return-void
.end method
