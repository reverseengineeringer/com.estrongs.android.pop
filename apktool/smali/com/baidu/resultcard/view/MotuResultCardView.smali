.class public Lcom/baidu/resultcard/view/MotuResultCardView;
.super Lcom/baidu/resultcard/view/BaseResultCardView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/baidu/resultcard/view/BaseResultCardView;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/baidu/scenery/R$drawable;->scenery_card_banner_photowonder:I

    iput v0, p0, Lcom/baidu/resultcard/view/MotuResultCardView;->bannerId:I

    sget v0, Lcom/baidu/scenery/R$string;->scenery_card_photowonder_title:I

    iput v0, p0, Lcom/baidu/resultcard/view/MotuResultCardView;->titleId:I

    sget v0, Lcom/baidu/scenery/R$string;->scenery_card_photowonder_content:I

    iput v0, p0, Lcom/baidu/resultcard/view/MotuResultCardView;->contentId:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/resultcard/view/MotuResultCardView;->iconId:I

    sget v0, Lcom/baidu/scenery/R$string;->scenery_card_photowonder_button:I

    iput v0, p0, Lcom/baidu/resultcard/view/MotuResultCardView;->buttonId:I

    const-string v0, "cn.jingling.motu.photowonder"

    iput-object v0, p0, Lcom/baidu/resultcard/view/MotuResultCardView;->pkgName:Ljava/lang/String;

    return-void
.end method
