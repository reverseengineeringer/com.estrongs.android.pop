.class public Lcom/duapps/ad/offerwall/ui/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/duapps/ad/offerwall/ui/g;


# direct methods
.method public constructor <init>(Lcom/duapps/ad/offerwall/ui/g;)V
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/offerwall/ui/h;->a:Lcom/duapps/ad/offerwall/ui/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    sget v0, Lcom/dianxinos/a/a/d;->duapps_ad_toolbox_item_action_tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/duapps/ad/entity/AdData;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/h;->a:Lcom/duapps/ad/offerwall/ui/g;

    invoke-static {v1}, Lcom/duapps/ad/offerwall/ui/g;->a(Lcom/duapps/ad/offerwall/ui/g;)Lcom/duapps/ad/stats/c;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/h;->a:Lcom/duapps/ad/offerwall/ui/g;

    new-instance v2, Lcom/duapps/ad/stats/c;

    iget-object v3, p0, Lcom/duapps/ad/offerwall/ui/h;->a:Lcom/duapps/ad/offerwall/ui/g;

    invoke-static {v3}, Lcom/duapps/ad/offerwall/ui/g;->b(Lcom/duapps/ad/offerwall/ui/g;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/duapps/ad/stats/c;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/duapps/ad/offerwall/ui/g;->a(Lcom/duapps/ad/offerwall/ui/g;Lcom/duapps/ad/stats/c;)Lcom/duapps/ad/stats/c;

    :cond_0
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/h;->a:Lcom/duapps/ad/offerwall/ui/g;

    invoke-static {v1}, Lcom/duapps/ad/offerwall/ui/g;->a(Lcom/duapps/ad/offerwall/ui/g;)Lcom/duapps/ad/stats/c;

    move-result-object v1

    new-instance v2, Lcom/duapps/ad/stats/p;

    check-cast v0, Lcom/duapps/ad/entity/AdData;

    invoke-direct {v2, v0}, Lcom/duapps/ad/stats/p;-><init>(Lcom/duapps/ad/entity/AdData;)V

    invoke-virtual {v1, v2}, Lcom/duapps/ad/stats/c;->a(Lcom/duapps/ad/stats/p;)V

    :cond_1
    return-void
.end method
