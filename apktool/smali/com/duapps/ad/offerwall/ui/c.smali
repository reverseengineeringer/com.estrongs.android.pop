.class Lcom/duapps/ad/offerwall/ui/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/duapps/ad/offerwall/ui/OfferWallAct;


# direct methods
.method constructor <init>(Lcom/duapps/ad/offerwall/ui/OfferWallAct;)V
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/offerwall/ui/c;->a:Lcom/duapps/ad/offerwall/ui/OfferWallAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/c;->a:Lcom/duapps/ad/offerwall/ui/OfferWallAct;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->a(Lcom/duapps/ad/offerwall/ui/OfferWallAct;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-ge p3, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/c;->a:Lcom/duapps/ad/offerwall/ui/OfferWallAct;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->a(Lcom/duapps/ad/offerwall/ui/OfferWallAct;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/c;->a:Lcom/duapps/ad/offerwall/ui/OfferWallAct;

    invoke-static {v1}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->b(Lcom/duapps/ad/offerwall/ui/OfferWallAct;)Lcom/duapps/ad/offerwall/ui/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duapps/ad/offerwall/ui/g;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/c;->a:Lcom/duapps/ad/offerwall/ui/OfferWallAct;

    invoke-static {v1}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->b(Lcom/duapps/ad/offerwall/ui/OfferWallAct;)Lcom/duapps/ad/offerwall/ui/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/duapps/ad/offerwall/ui/g;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/duapps/ad/entity/AdData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/c;->a:Lcom/duapps/ad/offerwall/ui/OfferWallAct;

    invoke-static {v1}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->c(Lcom/duapps/ad/offerwall/ui/OfferWallAct;)Lcom/duapps/ad/stats/c;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/c;->a:Lcom/duapps/ad/offerwall/ui/OfferWallAct;

    new-instance v2, Lcom/duapps/ad/stats/c;

    iget-object v3, p0, Lcom/duapps/ad/offerwall/ui/c;->a:Lcom/duapps/ad/offerwall/ui/OfferWallAct;

    invoke-virtual {v3}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/duapps/ad/stats/c;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->a(Lcom/duapps/ad/offerwall/ui/OfferWallAct;Lcom/duapps/ad/stats/c;)Lcom/duapps/ad/stats/c;

    :cond_2
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/c;->a:Lcom/duapps/ad/offerwall/ui/OfferWallAct;

    invoke-static {v1}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->c(Lcom/duapps/ad/offerwall/ui/OfferWallAct;)Lcom/duapps/ad/stats/c;

    move-result-object v1

    new-instance v2, Lcom/duapps/ad/stats/p;

    check-cast v0, Lcom/duapps/ad/entity/AdData;

    invoke-direct {v2, v0}, Lcom/duapps/ad/stats/p;-><init>(Lcom/duapps/ad/entity/AdData;)V

    invoke-virtual {v1, v2}, Lcom/duapps/ad/stats/c;->a(Lcom/duapps/ad/stats/p;)V

    goto :goto_0
.end method
