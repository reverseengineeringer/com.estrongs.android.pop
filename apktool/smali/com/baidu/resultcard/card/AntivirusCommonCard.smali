.class public Lcom/baidu/resultcard/card/AntivirusCommonCard;
.super Lcom/baidu/resultcard/card/AbstractCommonCard;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/resultcard/card/AbstractCommonCard;-><init>()V

    return-void
.end method


# virtual methods
.method public getPkgName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.duapps.antivirus"

    return-object v0
.end method

.method protected getView()Lcom/baidu/resultcard/view/BaseResultCardView;
    .locals 2

    new-instance v0, Lcom/baidu/resultcard/view/AntivirusResultCardView;

    iget-object v1, p0, Lcom/baidu/resultcard/card/AntivirusCommonCard;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/resultcard/view/AntivirusResultCardView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/baidu/resultcard/view/AntivirusResultCardView;->init()V

    return-object v0
.end method
