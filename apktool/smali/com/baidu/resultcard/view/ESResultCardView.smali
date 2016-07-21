.class public Lcom/baidu/resultcard/view/ESResultCardView;
.super Lcom/baidu/resultcard/view/BaseResultCardView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/baidu/resultcard/view/BaseResultCardView;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/baidu/scenery/R$drawable;->scenery_card_banner_es:I

    iput v0, p0, Lcom/baidu/resultcard/view/ESResultCardView;->bannerId:I

    sget v0, Lcom/baidu/scenery/R$string;->scenery_card_es_title:I

    iput v0, p0, Lcom/baidu/resultcard/view/ESResultCardView;->titleId:I

    sget v0, Lcom/baidu/scenery/R$string;->scenery_card_es_content:I

    iput v0, p0, Lcom/baidu/resultcard/view/ESResultCardView;->contentId:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/resultcard/view/ESResultCardView;->iconId:I

    sget v0, Lcom/baidu/scenery/R$string;->scenery_card_es_button:I

    iput v0, p0, Lcom/baidu/resultcard/view/ESResultCardView;->buttonId:I

    const-string v0, "com.estrongs.android.pop"

    iput-object v0, p0, Lcom/baidu/resultcard/view/ESResultCardView;->pkgName:Ljava/lang/String;

    return-void
.end method

.method private static getSdcardSizeContent(J)Ljava/lang/String;
    .locals 8

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    const-wide/16 v0, 0x400

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v2, p0

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    div-double/2addr v2, v4

    mul-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v6

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "GB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public varargs setContentParam([Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x0

    aget-object v0, p1, v2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/baidu/resultcard/view/ESResultCardView;->getSdcardSizeContent(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/baidu/resultcard/view/ESResultCardView;->setArgContent([Ljava/lang/Object;)V

    return-void
.end method
