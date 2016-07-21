.class Lcom/duapps/ad/inmobi/g;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/duapps/ad/inmobi/e;


# direct methods
.method constructor <init>(Lcom/duapps/ad/inmobi/e;)V
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/inmobi/g;->a:Lcom/duapps/ad/inmobi/e;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    const-string v0, "InMobiDataExecutor"

    const-string v1, "resource load:"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/duapps/ad/inmobi/g;->a:Lcom/duapps/ad/inmobi/e;

    invoke-static {v1, v0}, Lcom/duapps/ad/inmobi/e;->a(Lcom/duapps/ad/inmobi/e;Z)Z

    iget-object v1, p0, Lcom/duapps/ad/inmobi/g;->a:Lcom/duapps/ad/inmobi/e;

    iget-object v1, v1, Lcom/duapps/ad/inmobi/e;->c:Lcom/duapps/ad/inmobi/n;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/duapps/ad/inmobi/g;->a:Lcom/duapps/ad/inmobi/e;

    iget-object v1, v1, Lcom/duapps/ad/inmobi/e;->c:Lcom/duapps/ad/inmobi/n;

    iput-boolean v0, v1, Lcom/duapps/ad/inmobi/n;->c:Z

    :cond_0
    iget-object v1, p0, Lcom/duapps/ad/inmobi/g;->a:Lcom/duapps/ad/inmobi/e;

    invoke-static {v1}, Lcom/duapps/ad/inmobi/e;->c(Lcom/duapps/ad/inmobi/e;)V

    const-string v1, "InMobiDataExecutor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "page finished:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/duapps/ad/inmobi/g;->a:Lcom/duapps/ad/inmobi/e;

    iget-object v3, v3, Lcom/duapps/ad/inmobi/e;->a:Lcom/duapps/ad/inmobi/IMData;

    iget-object v3, v3, Lcom/duapps/ad/inmobi/IMData;->J:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duapps/ad/inmobi/g;->a:Lcom/duapps/ad/inmobi/e;

    iget-object v1, v1, Lcom/duapps/ad/inmobi/e;->b:Lcom/duapps/ad/inmobi/IMData$AdOperationType;

    sget-object v2, Lcom/duapps/ad/inmobi/IMData$AdOperationType;->Impression:Lcom/duapps/ad/inmobi/IMData$AdOperationType;

    if-ne v1, v2, :cond_1

    :goto_0
    const-string v1, "InMobiDataExecutor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdOperationType=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "InMobiDataExecutor"

    const-string v1, " completed"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "InMobiDataExecutor"

    const-string v1, "page started:"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "InMobiDataExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tdesc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duapps/ad/inmobi/g;->a:Lcom/duapps/ad/inmobi/e;

    invoke-static {v0, v3}, Lcom/duapps/ad/inmobi/e;->a(Lcom/duapps/ad/inmobi/e;Z)Z

    iget-object v0, p0, Lcom/duapps/ad/inmobi/g;->a:Lcom/duapps/ad/inmobi/e;

    iget-object v0, v0, Lcom/duapps/ad/inmobi/e;->c:Lcom/duapps/ad/inmobi/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/inmobi/g;->a:Lcom/duapps/ad/inmobi/e;

    iget-object v0, v0, Lcom/duapps/ad/inmobi/e;->c:Lcom/duapps/ad/inmobi/n;

    iput-boolean v3, v0, Lcom/duapps/ad/inmobi/n;->c:Z

    :cond_0
    return-void
.end method
