.class Lcom/dianxinos/lockscreen/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dianxinos/lockscreen/ui/j;


# instance fields
.field final synthetic a:Lcom/dianxinos/lockscreen/j;


# direct methods
.method constructor <init>(Lcom/dianxinos/lockscreen/j;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/lockscreen/l;->a:Lcom/dianxinos/lockscreen/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(F)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/l;->a:Lcom/dianxinos/lockscreen/j;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/j;->d(Lcom/dianxinos/lockscreen/j;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/l;->a:Lcom/dianxinos/lockscreen/j;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/j;->e(Lcom/dianxinos/lockscreen/j;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/l;->a:Lcom/dianxinos/lockscreen/j;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/j;->e(Lcom/dianxinos/lockscreen/j;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/nineoldandroids/b/a;->a(Landroid/view/View;F)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/lockscreen/l;->a:Lcom/dianxinos/lockscreen/j;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/j;->d(Lcom/dianxinos/lockscreen/j;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/l;->a:Lcom/dianxinos/lockscreen/j;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/j;->e(Lcom/dianxinos/lockscreen/j;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/l;->a:Lcom/dianxinos/lockscreen/j;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/j;->d(Lcom/dianxinos/lockscreen/j;)Landroid/widget/TextView;

    move-result-object v0

    neg-float v1, p1

    invoke-static {v0, v1}, Lcom/nineoldandroids/b/a;->a(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/dianxinos/lockscreen/l;->a:Lcom/dianxinos/lockscreen/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/j;->a(Lcom/dianxinos/lockscreen/j;Z)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/l;->a:Lcom/dianxinos/lockscreen/j;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/j;->b(Lcom/dianxinos/lockscreen/j;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->b(J)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/l;->a:Lcom/dianxinos/lockscreen/j;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/j;->b(Lcom/dianxinos/lockscreen/j;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/lockscreen/l;->a:Lcom/dianxinos/lockscreen/j;

    invoke-static {v1}, Lcom/dianxinos/lockscreen/j;->c(Lcom/dianxinos/lockscreen/j;)Lcom/dianxinos/lockscreen/ui/LockScreenDrawerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dianxinos/lockscreen/ui/LockScreenDrawerView;->a()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/x;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/dianxinos/lockscreen/l;->a:Lcom/dianxinos/lockscreen/j;

    const-string v1, "opsld"

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/j;->a(Lcom/dianxinos/lockscreen/j;Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/dianxinos/lockscreen/l;->a:Lcom/dianxinos/lockscreen/j;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/j;->d(Lcom/dianxinos/lockscreen/j;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/l;->a:Lcom/dianxinos/lockscreen/j;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/j;->e(Lcom/dianxinos/lockscreen/j;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
