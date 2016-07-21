.class public Lcom/baidu/resultcard/view/BatteryResultCardView;
.super Lcom/baidu/resultcard/view/BaseResultCardView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/baidu/resultcard/view/BaseResultCardView;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/baidu/scenery/R$drawable;->scenery_card_banner_battery:I

    iput v0, p0, Lcom/baidu/resultcard/view/BatteryResultCardView;->bannerId:I

    sget v0, Lcom/baidu/scenery/R$string;->scenery_card_battery_title:I

    iput v0, p0, Lcom/baidu/resultcard/view/BatteryResultCardView;->titleId:I

    sget v0, Lcom/baidu/scenery/R$string;->scenery_card_battery_content:I

    iput v0, p0, Lcom/baidu/resultcard/view/BatteryResultCardView;->contentId:I

    sget v0, Lcom/baidu/scenery/R$drawable;->scenery_card_button_icon_battery:I

    iput v0, p0, Lcom/baidu/resultcard/view/BatteryResultCardView;->iconId:I

    sget v0, Lcom/baidu/scenery/R$string;->scenery_card_battery_button:I

    iput v0, p0, Lcom/baidu/resultcard/view/BatteryResultCardView;->buttonId:I

    const-string v0, "com.dianxinos.dxbs"

    iput-object v0, p0, Lcom/baidu/resultcard/view/BatteryResultCardView;->pkgName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getArgs()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method
