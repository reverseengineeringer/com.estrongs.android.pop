.class public Lcom/duapps/ad/offerwall/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/AdListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/duapps/ad/offerwall/a/j;->a:Landroid/content/Context;

    iput p2, p0, Lcom/duapps/ad/offerwall/a/j;->b:I

    iput p3, p0, Lcom/duapps/ad/offerwall/a/j;->c:I

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 3

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/j;->a:Landroid/content/Context;

    iget v1, p0, Lcom/duapps/ad/offerwall/a/j;->b:I

    iget v2, p0, Lcom/duapps/ad/offerwall/a/j;->c:I

    invoke-static {v0, v1, v2}, Lcom/duapps/ad/stats/u;->b(Landroid/content/Context;II)V

    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 0

    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 0

    return-void
.end method
