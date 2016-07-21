.class Lcom/duapps/ad/offerwall/ui/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/duapps/ad/offerwall/ui/OfferWallAct;


# direct methods
.method constructor <init>(Lcom/duapps/ad/offerwall/ui/OfferWallAct;)V
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/offerwall/ui/e;->a:Lcom/duapps/ad/offerwall/ui/OfferWallAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/e;->a:Lcom/duapps/ad/offerwall/ui/OfferWallAct;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->b()V

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/e;->a:Lcom/duapps/ad/offerwall/ui/OfferWallAct;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/e;->a:Lcom/duapps/ad/offerwall/ui/OfferWallAct;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->finish()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
