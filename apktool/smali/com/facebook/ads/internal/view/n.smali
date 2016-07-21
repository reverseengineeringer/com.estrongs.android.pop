.class public Lcom/facebook/ads/internal/view/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/view/i;


# instance fields
.field private a:Lcom/facebook/ads/InterstitialAdActivity;

.field private b:Lcom/facebook/ads/internal/view/i$a;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/facebook/ads/internal/view/h;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/InterstitialAdActivity;Lcom/facebook/ads/internal/view/i$a;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/n;->a:Lcom/facebook/ads/InterstitialAdActivity;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/n;->b:Lcom/facebook/ads/internal/view/i$a;

    new-instance v0, Lcom/facebook/ads/internal/view/h;

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/view/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/n;->e:Lcom/facebook/ads/internal/view/h;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/n;->e:Lcom/facebook/ads/internal/view/h;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/view/h;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->e:Lcom/facebook/ads/internal/view/h;

    invoke-interface {p2, v0}, Lcom/facebook/ads/internal/view/i$a;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "videoURL"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/n;->c:Ljava/lang/String;

    const-string v0, "videoPlayReportURL"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/n;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->e:Lcom/facebook/ads/internal/view/h;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/n;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/h;->setVideoURI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n;->e:Lcom/facebook/ads/internal/view/h;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/h;->a()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
