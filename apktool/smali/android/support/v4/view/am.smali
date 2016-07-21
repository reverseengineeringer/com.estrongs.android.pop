.class Landroid/support/v4/view/am;
.super Ljava/lang/Object;


# direct methods
.method static a(Landroid/view/LayoutInflater;)Landroid/support/v4/view/ar;
    .locals 2

    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/view/an;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/support/v4/view/an;

    iget-object v0, v0, Landroid/support/v4/view/an;->a:Landroid/support/v4/view/ar;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Landroid/view/LayoutInflater;Landroid/support/v4/view/ar;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/support/v4/view/an;

    invoke-direct {v0, p1}, Landroid/support/v4/view/an;-><init>(Landroid/support/v4/view/ar;)V

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
