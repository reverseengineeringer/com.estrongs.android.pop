.class public Lcom/baidu/resultcard/view/AntivirusResultCardView;
.super Lcom/baidu/resultcard/view/BaseResultCardView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/baidu/resultcard/view/BaseResultCardView;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/baidu/scenery/R$drawable;->scenery_card_banner_antivirus:I

    iput v0, p0, Lcom/baidu/resultcard/view/AntivirusResultCardView;->bannerId:I

    sget v0, Lcom/baidu/scenery/R$string;->scenery_card_antivirus_title:I

    iput v0, p0, Lcom/baidu/resultcard/view/AntivirusResultCardView;->titleId:I

    sget v0, Lcom/baidu/scenery/R$string;->scenery_card_antivirus_content:I

    iput v0, p0, Lcom/baidu/resultcard/view/AntivirusResultCardView;->contentId:I

    sget v0, Lcom/baidu/scenery/R$string;->scenery_card_antivirus_button:I

    iput v0, p0, Lcom/baidu/resultcard/view/AntivirusResultCardView;->buttonId:I

    const-string v0, "com.duapps.antivirus"

    iput-object v0, p0, Lcom/baidu/resultcard/view/AntivirusResultCardView;->pkgName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getArgs()I
    .locals 2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
