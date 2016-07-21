.class Lcom/duapps/ad/inmobi/f;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/duapps/ad/inmobi/e;


# direct methods
.method constructor <init>(Lcom/duapps/ad/inmobi/e;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/inmobi/f;->a:Lcom/duapps/ad/inmobi/e;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/inmobi/f;->a:Lcom/duapps/ad/inmobi/e;

    invoke-static {v0}, Lcom/duapps/ad/inmobi/e;->a(Lcom/duapps/ad/inmobi/e;)V

    const-string v0, "InMobiDataExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loading js:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/duapps/ad/inmobi/f;->a:Lcom/duapps/ad/inmobi/e;

    invoke-static {v2}, Lcom/duapps/ad/inmobi/e;->b(Lcom/duapps/ad/inmobi/e;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duapps/ad/inmobi/f;->a:Lcom/duapps/ad/inmobi/e;

    iget-object v0, v0, Lcom/duapps/ad/inmobi/e;->c:Lcom/duapps/ad/inmobi/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/inmobi/f;->a:Lcom/duapps/ad/inmobi/e;

    iget-object v0, v0, Lcom/duapps/ad/inmobi/e;->c:Lcom/duapps/ad/inmobi/n;

    iget-object v0, v0, Lcom/duapps/ad/inmobi/n;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/duapps/ad/inmobi/f;->a:Lcom/duapps/ad/inmobi/e;

    invoke-static {v1}, Lcom/duapps/ad/inmobi/e;->b(Lcom/duapps/ad/inmobi/e;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/html"

    const-string v3, "UTF-8"

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
