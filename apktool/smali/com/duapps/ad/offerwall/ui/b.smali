.class Lcom/duapps/ad/offerwall/ui/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/duapps/ad/offerwall/ui/OfferWallAct;


# direct methods
.method constructor <init>(Lcom/duapps/ad/offerwall/ui/OfferWallAct;)V
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/offerwall/ui/b;->a:Lcom/duapps/ad/offerwall/ui/OfferWallAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->a:Lcom/duapps/ad/offerwall/ui/OfferWallAct;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->a(Lcom/duapps/ad/offerwall/ui/OfferWallAct;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocusFromTouch()Z

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->a:Lcom/duapps/ad/offerwall/ui/OfferWallAct;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->a(Lcom/duapps/ad/offerwall/ui/OfferWallAct;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method
