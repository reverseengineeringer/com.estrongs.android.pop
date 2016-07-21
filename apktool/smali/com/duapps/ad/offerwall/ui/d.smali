.class Lcom/duapps/ad/offerwall/ui/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/duapps/ad/offerwall/ui/OfferWallAct;


# direct methods
.method constructor <init>(Lcom/duapps/ad/offerwall/ui/OfferWallAct;)V
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/offerwall/ui/d;->a:Lcom/duapps/ad/offerwall/ui/OfferWallAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/d;->a:Lcom/duapps/ad/offerwall/ui/OfferWallAct;

    add-int v1, p2, p3

    iget-object v2, p0, Lcom/duapps/ad/offerwall/ui/d;->a:Lcom/duapps/ad/offerwall/ui/OfferWallAct;

    invoke-static {v2}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->a(Lcom/duapps/ad/offerwall/ui/OfferWallAct;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    iget-object v3, p0, Lcom/duapps/ad/offerwall/ui/d;->a:Lcom/duapps/ad/offerwall/ui/OfferWallAct;

    invoke-static {v3}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->a(Lcom/duapps/ad/offerwall/ui/OfferWallAct;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->a(Lcom/duapps/ad/offerwall/ui/OfferWallAct;I)I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/d;->a:Lcom/duapps/ad/offerwall/ui/OfferWallAct;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->d(Lcom/duapps/ad/offerwall/ui/OfferWallAct;)I

    move-result v0

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/d;->a:Lcom/duapps/ad/offerwall/ui/OfferWallAct;

    invoke-static {v1}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->e(Lcom/duapps/ad/offerwall/ui/OfferWallAct;)I

    move-result v1

    if-ne v0, v1, :cond_0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/d;->a:Lcom/duapps/ad/offerwall/ui/OfferWallAct;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->f(Lcom/duapps/ad/offerwall/ui/OfferWallAct;)Lcom/duapps/ad/offerwall/ui/PullUpForMore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->getFooterViewOptions()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/d;->a:Lcom/duapps/ad/offerwall/ui/OfferWallAct;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->g(Lcom/duapps/ad/offerwall/ui/OfferWallAct;)Lcom/duapps/ad/offerwall/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/d;->a:Lcom/duapps/ad/offerwall/ui/OfferWallAct;

    invoke-static {v1}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->g(Lcom/duapps/ad/offerwall/ui/OfferWallAct;)Lcom/duapps/ad/offerwall/a;

    move-result-object v1

    iget v1, v1, Lcom/duapps/ad/offerwall/a;->a:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/duapps/ad/offerwall/a;->a(I)V

    goto :goto_0
.end method
