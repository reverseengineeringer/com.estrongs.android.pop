.class public Lcom/baidu/scenery/utils/ReportHelper;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reportClick(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/baidu/scenery/SceneryLibrary;->getSid()I

    move-result v0

    invoke-static {p0}, Lcom/baidu/scenery/utils/PastaReportHelper;->getInstance(Landroid/content/Context;)Lcom/baidu/scenery/utils/PastaReportHelper;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/baidu/scenery/utils/PastaReportHelper;->reportClick(Ljava/lang/String;I)V

    invoke-static {p0, p1, v0}, Lcom/baidu/scenery/utils/MobulaReportHelper;->reportClick(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static reportEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1

    invoke-static {p0}, Lcom/baidu/scenery/utils/PastaReportHelper;->getInstance(Landroid/content/Context;)Lcom/baidu/scenery/utils/PastaReportHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/scenery/utils/PastaReportHelper;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public static reportEvent(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    invoke-static {p0}, Lcom/baidu/scenery/utils/PastaReportHelper;->getInstance(Landroid/content/Context;)Lcom/baidu/scenery/utils/PastaReportHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/scenery/utils/PastaReportHelper;->reportEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static reportInstall(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/baidu/scenery/SceneryLibrary;->getSid()I

    move-result v0

    invoke-static {p0}, Lcom/baidu/scenery/utils/PastaReportHelper;->getInstance(Landroid/content/Context;)Lcom/baidu/scenery/utils/PastaReportHelper;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/baidu/scenery/utils/PastaReportHelper;->reportInstall(Ljava/lang/String;I)V

    invoke-static {p0, p1, v0}, Lcom/baidu/scenery/utils/MobulaReportHelper;->reportInstall(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static reportShow(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/baidu/scenery/SceneryLibrary;->getSid()I

    move-result v0

    invoke-static {p0}, Lcom/baidu/scenery/utils/PastaReportHelper;->getInstance(Landroid/content/Context;)Lcom/baidu/scenery/utils/PastaReportHelper;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/baidu/scenery/utils/PastaReportHelper;->reportShow(Ljava/lang/String;I)V

    invoke-static {p0, p1, v0}, Lcom/baidu/scenery/utils/MobulaReportHelper;->reportShow(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static reportShow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/baidu/scenery/SceneryLibrary;->getSid()I

    move-result v0

    invoke-static {p0}, Lcom/baidu/scenery/utils/PastaReportHelper;->getInstance(Landroid/content/Context;)Lcom/baidu/scenery/utils/PastaReportHelper;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/baidu/scenery/utils/PastaReportHelper;->reportShow(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/baidu/scenery/utils/MobulaReportHelper;->reportShow(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
