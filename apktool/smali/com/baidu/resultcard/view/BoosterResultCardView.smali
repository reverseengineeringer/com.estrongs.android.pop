.class public Lcom/baidu/resultcard/view/BoosterResultCardView;
.super Lcom/baidu/resultcard/view/BaseResultCardView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/baidu/resultcard/view/BaseResultCardView;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/baidu/scenery/R$drawable;->scenery_card_banner_booster:I

    iput v0, p0, Lcom/baidu/resultcard/view/BoosterResultCardView;->bannerId:I

    sget v0, Lcom/baidu/scenery/R$string;->scenery_card_booster_title:I

    iput v0, p0, Lcom/baidu/resultcard/view/BoosterResultCardView;->titleId:I

    sget v0, Lcom/baidu/scenery/R$string;->scenery_card_booster_content:I

    iput v0, p0, Lcom/baidu/resultcard/view/BoosterResultCardView;->contentId:I

    sget v0, Lcom/baidu/scenery/R$drawable;->scenery_card_rocket_icon:I

    iput v0, p0, Lcom/baidu/resultcard/view/BoosterResultCardView;->iconId:I

    sget v0, Lcom/baidu/scenery/R$string;->scenery_card_booster_button:I

    iput v0, p0, Lcom/baidu/resultcard/view/BoosterResultCardView;->buttonId:I

    const-string v0, "com.dianxinos.optimizer.duplay"

    iput-object v0, p0, Lcom/baidu/resultcard/view/BoosterResultCardView;->pkgName:Ljava/lang/String;

    return-void
.end method
