.class Lcom/dianxinos/lockscreen/ad/extra/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duapps/ad/e;


# instance fields
.field final synthetic a:Lcom/dianxinos/lockscreen/ad/extra/ADCardController$ADCardType;

.field final synthetic b:Lcom/dianxinos/lockscreen/ad/extra/ADCardController;


# direct methods
.method constructor <init>(Lcom/dianxinos/lockscreen/ad/extra/ADCardController;Lcom/dianxinos/lockscreen/ad/extra/ADCardController$ADCardType;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/lockscreen/ad/extra/a;->b:Lcom/dianxinos/lockscreen/ad/extra/ADCardController;

    iput-object p2, p0, Lcom/dianxinos/lockscreen/ad/extra/a;->a:Lcom/dianxinos/lockscreen/ad/extra/ADCardController$ADCardType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/duapps/ad/f;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/duapps/ad/f;Lcom/duapps/ad/b;)V
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/a;->b:Lcom/dianxinos/lockscreen/ad/extra/ADCardController;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ad/extra/ADCardController;->a(Lcom/dianxinos/lockscreen/ad/extra/ADCardController;)Lcom/dianxinos/lockscreen/ad/extra/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/a;->b:Lcom/dianxinos/lockscreen/ad/extra/ADCardController;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ad/extra/ADCardController;->a(Lcom/dianxinos/lockscreen/ad/extra/ADCardController;)Lcom/dianxinos/lockscreen/ad/extra/e;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/dianxinos/lockscreen/ad/extra/e;->a(Lcom/duapps/ad/b;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/duapps/ad/f;)V
    .locals 5

    invoke-static {}, Lcom/dianxinos/lockscreen/ad/extra/ADCardController;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ADCardController DuNativeAd onAdLoaded"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/a;->b:Lcom/dianxinos/lockscreen/ad/extra/ADCardController;

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ad/extra/a;->b:Lcom/dianxinos/lockscreen/ad/extra/ADCardController;

    invoke-static {v1}, Lcom/dianxinos/lockscreen/ad/extra/ADCardController;->b(Lcom/dianxinos/lockscreen/ad/extra/ADCardController;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/lockscreen/ad/extra/a;->a:Lcom/dianxinos/lockscreen/ad/extra/ADCardController$ADCardType;

    invoke-virtual {p1}, Lcom/duapps/ad/f;->l()Lcom/duapps/ad/c;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/dianxinos/lockscreen/ad/extra/b;->a(Landroid/content/Context;Lcom/dianxinos/lockscreen/ad/extra/ADCardController$ADCardType;Lcom/duapps/ad/c;Z)Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/ad/extra/ADCardController;->a(Lcom/dianxinos/lockscreen/ad/extra/ADCardController;Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;)Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/a;->b:Lcom/dianxinos/lockscreen/ad/extra/ADCardController;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ad/extra/ADCardController;->a(Lcom/dianxinos/lockscreen/ad/extra/ADCardController;)Lcom/dianxinos/lockscreen/ad/extra/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/a;->b:Lcom/dianxinos/lockscreen/ad/extra/ADCardController;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ad/extra/ADCardController;->a(Lcom/dianxinos/lockscreen/ad/extra/ADCardController;)Lcom/dianxinos/lockscreen/ad/extra/e;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ad/extra/a;->b:Lcom/dianxinos/lockscreen/ad/extra/ADCardController;

    invoke-static {v1}, Lcom/dianxinos/lockscreen/ad/extra/ADCardController;->c(Lcom/dianxinos/lockscreen/ad/extra/ADCardController;)Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dianxinos/lockscreen/ad/extra/e;->a(Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;)V

    :cond_0
    return-void
.end method
