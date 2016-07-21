.class public Lcom/baidu/resultcard/report/ResultCardReport;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reportCommonClick(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3

    sget v0, Lcom/baidu/resultcard/CardLibrary;->sCommonCardSid:I

    invoke-static {p0}, Lcom/baidu/resultcard/report/ResultCardPastaReport;->getInstance(Landroid/content/Context;)Lcom/baidu/resultcard/report/ResultCardPastaReport;

    move-result-object v1

    const-string v2, "duresultcard_sdk_click"

    invoke-virtual {v1, v2, p1, v0, p2}, Lcom/baidu/resultcard/report/ResultCardPastaReport;->reportJson(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-static {p0, p1, v0}, Lcom/baidu/resultcard/report/ResultCardMobulaReport;->reportCommonClick(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static reportCommonInstall(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    sget v0, Lcom/baidu/resultcard/CardLibrary;->sCommonCardSid:I

    invoke-static {p0}, Lcom/baidu/resultcard/report/ResultCardPastaReport;->getInstance(Landroid/content/Context;)Lcom/baidu/resultcard/report/ResultCardPastaReport;

    move-result-object v1

    const-string v2, "duresultcard_sdk_install"

    invoke-virtual {v1, v2, p1, v0}, Lcom/baidu/resultcard/report/ResultCardPastaReport;->reportJson(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {p0, p1, v0}, Lcom/baidu/resultcard/report/ResultCardMobulaReport;->reportInstall(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static reportCommonShow(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3

    sget v0, Lcom/baidu/resultcard/CardLibrary;->sCommonCardSid:I

    invoke-static {p0}, Lcom/baidu/resultcard/report/ResultCardPastaReport;->getInstance(Landroid/content/Context;)Lcom/baidu/resultcard/report/ResultCardPastaReport;

    move-result-object v1

    const-string v2, "duresultcard_sdk_show"

    invoke-virtual {v1, v2, p1, v0, p2}, Lcom/baidu/resultcard/report/ResultCardPastaReport;->reportJson(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-static {p0, p1, v0}, Lcom/baidu/resultcard/report/ResultCardMobulaReport;->reportCommonShow(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static reportMainCardClick(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 6

    sget v3, Lcom/baidu/resultcard/CardLibrary;->sMainCardSid:I

    invoke-static {p0}, Lcom/baidu/resultcard/report/ResultCardPastaReport;->getInstance(Landroid/content/Context;)Lcom/baidu/resultcard/report/ResultCardPastaReport;

    move-result-object v0

    const-string v1, "duresultcard_sdk_click"

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/resultcard/report/ResultCardPastaReport;->reportJson(Ljava/lang/String;Ljava/lang/String;IZZ)V

    invoke-static {p0, p1, v3, p2}, Lcom/baidu/resultcard/report/ResultCardMobulaReport;->reportMainClick(Landroid/content/Context;Ljava/lang/String;IZ)V

    return-void
.end method

.method public static reportMainCardShow(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 6

    sget v3, Lcom/baidu/resultcard/CardLibrary;->sMainCardSid:I

    invoke-static {p0}, Lcom/baidu/resultcard/report/ResultCardPastaReport;->getInstance(Landroid/content/Context;)Lcom/baidu/resultcard/report/ResultCardPastaReport;

    move-result-object v0

    const-string v1, "duresultcard_sdk_show"

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/resultcard/report/ResultCardPastaReport;->reportJson(Ljava/lang/String;Ljava/lang/String;IZZ)V

    invoke-static {p0, p1, v3, p2}, Lcom/baidu/resultcard/report/ResultCardMobulaReport;->reportMainShow(Landroid/content/Context;Ljava/lang/String;IZ)V

    return-void
.end method

.method public static reportMainInstall(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    sget v0, Lcom/baidu/resultcard/CardLibrary;->sMainCardSid:I

    invoke-static {p0}, Lcom/baidu/resultcard/report/ResultCardPastaReport;->getInstance(Landroid/content/Context;)Lcom/baidu/resultcard/report/ResultCardPastaReport;

    move-result-object v1

    const-string v2, "duresultcard_sdk_install"

    invoke-virtual {v1, v2, p1, v0}, Lcom/baidu/resultcard/report/ResultCardPastaReport;->reportJson(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {p0, p1, v0}, Lcom/baidu/resultcard/report/ResultCardMobulaReport;->reportInstall(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
