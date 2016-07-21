.class Lcom/dianxinos/dxservice/stat/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dianxinos/dxservice/stat/af;


# direct methods
.method constructor <init>(Lcom/dianxinos/dxservice/stat/af;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/dxservice/stat/ag;->a:Lcom/dianxinos/dxservice/stat/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-boolean v0, Lcom/dianxinos/dxservice/a/c;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "stat.HwInfoService"

    const-string v1, "Enter in UpdatePreferenceJob!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/ag;->a:Lcom/dianxinos/dxservice/stat/af;

    invoke-static {v0}, Lcom/dianxinos/dxservice/stat/af;->a(Lcom/dianxinos/dxservice/stat/af;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/DXStatService/a/a;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/dxservice/stat/ag;->a:Lcom/dianxinos/dxservice/stat/af;

    invoke-static {v1}, Lcom/dianxinos/dxservice/stat/af;->b(Lcom/dianxinos/dxservice/stat/af;)I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/ag;->a:Lcom/dianxinos/dxservice/stat/af;

    invoke-static {v0}, Lcom/dianxinos/dxservice/stat/af;->c(Lcom/dianxinos/dxservice/stat/af;)I

    sget-boolean v0, Lcom/dianxinos/dxservice/a/c;->d:Z

    if-eqz v0, :cond_1

    const-string v0, "stat.HwInfoService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retry to update the hw infos for the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/dxservice/stat/ag;->a:Lcom/dianxinos/dxservice/stat/af;

    invoke-static {v2}, Lcom/dianxinos/dxservice/stat/af;->b(Lcom/dianxinos/dxservice/stat/af;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "st time."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-wide/16 v0, 0x1388

    invoke-static {p0, v0, v1}, Lcom/dianxinos/dxservice/a/e;->a(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/ag;->a:Lcom/dianxinos/dxservice/stat/af;

    invoke-static {v0}, Lcom/dianxinos/dxservice/stat/af;->d(Lcom/dianxinos/dxservice/stat/af;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v1, :cond_2

    const-string v1, "stat.HwInfoService"

    const-string v2, "Failed update the hw infos."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
