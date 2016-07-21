.class Lcom/duapps/ad/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duapps/ad/a/g;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/duapps/ad/a/a;


# direct methods
.method constructor <init>(Lcom/duapps/ad/a/a;I)V
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/a/d;->b:Lcom/duapps/ad/a/a;

    iput p2, p0, Lcom/duapps/ad/a/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/duapps/ad/a/d;->b:Lcom/duapps/ad/a/a;

    invoke-static {v0}, Lcom/duapps/ad/a/a;->b(Lcom/duapps/ad/a/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/a/d;->b:Lcom/duapps/ad/a/a;

    invoke-static {v1}, Lcom/duapps/ad/a/a;->c(Lcom/duapps/ad/a/a;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/duapps/ad/stats/u;->b(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/duapps/ad/a/d;->b:Lcom/duapps/ad/a/a;

    invoke-static {v0}, Lcom/duapps/ad/a/a;->d(Lcom/duapps/ad/a/a;)Lcom/duapps/ad/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/a/d;->b:Lcom/duapps/ad/a/a;

    invoke-static {v0}, Lcom/duapps/ad/a/a;->e(Lcom/duapps/ad/a/a;)Lcom/duapps/ad/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/duapps/ad/d;->a()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/duapps/ad/a/d;->b:Lcom/duapps/ad/a/a;

    iget v1, p0, Lcom/duapps/ad/a/d;->a:I

    invoke-static {v0, v1, p1}, Lcom/duapps/ad/a/a;->a(Lcom/duapps/ad/a/a;II)V

    const-string v0, "AdmobCacheManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load Admob ad fail errorCode=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/duapps/ad/a/d;->b:Lcom/duapps/ad/a/a;

    iget v1, p0, Lcom/duapps/ad/a/d;->a:I

    const/16 v2, 0xc8

    invoke-static {v0, v1, v2}, Lcom/duapps/ad/a/a;->a(Lcom/duapps/ad/a/a;II)V

    const-string v0, "AdmobCacheManager"

    const-string v1, "load Admob ad success"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method
