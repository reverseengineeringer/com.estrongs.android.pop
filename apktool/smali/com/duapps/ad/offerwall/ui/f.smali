.class Lcom/duapps/ad/offerwall/ui/f;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/duapps/ad/offerwall/ui/OfferWallAct;


# direct methods
.method constructor <init>(Lcom/duapps/ad/offerwall/ui/OfferWallAct;)V
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/offerwall/ui/f;->a:Lcom/duapps/ad/offerwall/ui/OfferWallAct;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/f;->a:Lcom/duapps/ad/offerwall/ui/OfferWallAct;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/f;->a:Lcom/duapps/ad/offerwall/ui/OfferWallAct;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->c()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/f;->a:Lcom/duapps/ad/offerwall/ui/OfferWallAct;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->h(Lcom/duapps/ad/offerwall/ui/OfferWallAct;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/f;->a:Lcom/duapps/ad/offerwall/ui/OfferWallAct;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->g(Lcom/duapps/ad/offerwall/ui/OfferWallAct;)Lcom/duapps/ad/offerwall/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/a;->a()V

    goto :goto_0
.end method
