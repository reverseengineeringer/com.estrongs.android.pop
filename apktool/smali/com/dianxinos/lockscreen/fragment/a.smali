.class public Lcom/dianxinos/lockscreen/fragment/a;
.super Landroid/support/v4/app/Fragment;


# instance fields
.field protected a:Landroid/view/View;

.field protected b:Landroid/app/Activity;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/lockscreen/fragment/a;->a:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dianxinos/lockscreen/fragment/a;->c:Z

    return-void
.end method


# virtual methods
.method protected a(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/fragment/a;->a:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/lockscreen/fragment/a;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dianxinos/lockscreen/fragment/a;->c:Z

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/fragment/a;->f()V

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dianxinos/lockscreen/fragment/a;->c:Z

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/fragment/a;->h()V

    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dianxinos/lockscreen/fragment/a;->c:Z

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/dianxinos/lockscreen/fragment/a;->b:Landroid/app/Activity;

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    iget-boolean v0, p0, Lcom/dianxinos/lockscreen/fragment/a;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/fragment/a;->h()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    iget-boolean v0, p0, Lcom/dianxinos/lockscreen/fragment/a;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/fragment/a;->f()V

    :cond_0
    return-void
.end method
