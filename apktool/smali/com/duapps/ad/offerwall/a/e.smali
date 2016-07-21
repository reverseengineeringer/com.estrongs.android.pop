.class Lcom/duapps/ad/offerwall/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/duapps/ad/offerwall/a/c;


# direct methods
.method constructor <init>(Lcom/duapps/ad/offerwall/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/offerwall/a/e;->a:Lcom/duapps/ad/offerwall/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/e;->a:Lcom/duapps/ad/offerwall/a/c;

    iget-object v0, v0, Lcom/duapps/ad/offerwall/a/c;->a:Lcom/duapps/ad/offerwall/a/b;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a/b;->d(Lcom/duapps/ad/offerwall/a/b;)Lcom/duapps/ad/offerwall/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "DownloadAdsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download ads poll data... , size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/duapps/ad/offerwall/a/e;->a:Lcom/duapps/ad/offerwall/a/c;

    iget-object v2, v2, Lcom/duapps/ad/offerwall/a/c;->a:Lcom/duapps/ad/offerwall/a/b;

    invoke-virtual {v2}, Lcom/duapps/ad/offerwall/a/b;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/e;->a:Lcom/duapps/ad/offerwall/a/c;

    iget-object v0, v0, Lcom/duapps/ad/offerwall/a/c;->a:Lcom/duapps/ad/offerwall/a/b;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a/b;->d(Lcom/duapps/ad/offerwall/a/b;)Lcom/duapps/ad/offerwall/a/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/duapps/ad/offerwall/a/a;->b(I)V

    :cond_0
    return-void
.end method
