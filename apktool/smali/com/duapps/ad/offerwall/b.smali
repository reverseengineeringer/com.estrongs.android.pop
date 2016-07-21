.class Lcom/duapps/ad/offerwall/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duapps/ad/offerwall/a/a;


# instance fields
.field final synthetic a:Lcom/duapps/ad/offerwall/a;


# direct methods
.method constructor <init>(Lcom/duapps/ad/offerwall/a;)V
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/offerwall/b;->a:Lcom/duapps/ad/offerwall/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/duapps/ad/offerwall/b;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0, v2}, Lcom/duapps/ad/offerwall/a;->a(Lcom/duapps/ad/offerwall/a;Z)Z

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/duapps/ad/offerwall/b;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0, v3}, Lcom/duapps/ad/offerwall/a;->b(Lcom/duapps/ad/offerwall/a;Z)Z

    const-string v0, "OfferWallPresenter"

    const-string v1, "DL return error...."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/duapps/ad/offerwall/b;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a;->d(Lcom/duapps/ad/offerwall/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/duapps/ad/offerwall/b;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a;->e(Lcom/duapps/ad/offerwall/a;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/duapps/ad/offerwall/b;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a;->f(Lcom/duapps/ad/offerwall/a;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/duapps/ad/offerwall/b;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a;->g(Lcom/duapps/ad/offerwall/a;)Lcom/duapps/ad/offerwall/a/g;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/offerwall/b;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a;->h(Lcom/duapps/ad/offerwall/a;)V

    :cond_2
    return-void

    :cond_3
    const-string v0, "OfferWallPresenter"

    const-string v1, "FB return error...."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duapps/ad/offerwall/b;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0, v2}, Lcom/duapps/ad/offerwall/a;->c(Lcom/duapps/ad/offerwall/a;Z)Z

    iget-object v0, p0, Lcom/duapps/ad/offerwall/b;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0, v3}, Lcom/duapps/ad/offerwall/a;->d(Lcom/duapps/ad/offerwall/a;Z)Z

    iget-object v0, p0, Lcom/duapps/ad/offerwall/b;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a;->a(Lcom/duapps/ad/offerwall/a;)Lcom/duapps/ad/offerwall/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/a/b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/offerwall/b;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a;->b(Lcom/duapps/ad/offerwall/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/offerwall/b;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a;->c(Lcom/duapps/ad/offerwall/a;)Lcom/duapps/ad/offerwall/ui/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/duapps/ad/offerwall/ui/a;->a()V

    goto :goto_0
.end method

.method public b(I)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/duapps/ad/offerwall/b;->a:Lcom/duapps/ad/offerwall/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/duapps/ad/offerwall/a;->a(Lcom/duapps/ad/offerwall/a;Z)Z

    if-nez p1, :cond_4

    iget-object v0, p0, Lcom/duapps/ad/offerwall/b;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a;->a(Lcom/duapps/ad/offerwall/a;)Lcom/duapps/ad/offerwall/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/a/b;->a()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/duapps/ad/offerwall/b;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0, v2}, Lcom/duapps/ad/offerwall/a;->e(Lcom/duapps/ad/offerwall/a;Z)Z

    iget-object v0, p0, Lcom/duapps/ad/offerwall/b;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a;->i(Lcom/duapps/ad/offerwall/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/offerwall/b;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a;->j(Lcom/duapps/ad/offerwall/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/offerwall/b;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0, v2}, Lcom/duapps/ad/offerwall/a;->f(Lcom/duapps/ad/offerwall/a;Z)Z

    iget-object v0, p0, Lcom/duapps/ad/offerwall/b;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a;->a(Lcom/duapps/ad/offerwall/a;)Lcom/duapps/ad/offerwall/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/a/b;->c()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/offerwall/b;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v1, v0}, Lcom/duapps/ad/offerwall/a;->a(Lcom/duapps/ad/offerwall/a;Ljava/util/List;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/duapps/ad/offerwall/b;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a;->l(Lcom/duapps/ad/offerwall/a;)I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/duapps/ad/offerwall/b;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a;->m(Lcom/duapps/ad/offerwall/a;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/duapps/ad/offerwall/b;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a;->g(Lcom/duapps/ad/offerwall/a;)Lcom/duapps/ad/offerwall/a/g;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/duapps/ad/offerwall/b;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a;->f(Lcom/duapps/ad/offerwall/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/duapps/ad/offerwall/b;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a;->h(Lcom/duapps/ad/offerwall/a;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/duapps/ad/offerwall/b;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a;->g(Lcom/duapps/ad/offerwall/a;)Lcom/duapps/ad/offerwall/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/a/g;->c()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/offerwall/b;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0, v2}, Lcom/duapps/ad/offerwall/a;->c(Lcom/duapps/ad/offerwall/a;Z)Z

    iget-object v0, p0, Lcom/duapps/ad/offerwall/b;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a;->k(Lcom/duapps/ad/offerwall/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/offerwall/b;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a;->j(Lcom/duapps/ad/offerwall/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/offerwall/b;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0, v2}, Lcom/duapps/ad/offerwall/a;->f(Lcom/duapps/ad/offerwall/a;Z)Z

    iget-object v0, p0, Lcom/duapps/ad/offerwall/b;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a;->g(Lcom/duapps/ad/offerwall/a;)Lcom/duapps/ad/offerwall/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/a/g;->e()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/offerwall/b;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v1, v0}, Lcom/duapps/ad/offerwall/a;->b(Lcom/duapps/ad/offerwall/a;Ljava/util/List;)V

    goto :goto_0
.end method
