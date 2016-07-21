.class Landroid/support/v4/view/bf;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/view/MenuItem;Landroid/support/v4/view/bh;)Landroid/view/MenuItem;
    .locals 1

    new-instance v0, Landroid/support/v4/view/bg;

    invoke-direct {v0, p1}, Landroid/support/v4/view/bg;-><init>(Landroid/support/v4/view/bh;)V

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p0}, Landroid/view/MenuItem;->expandActionView()Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p0}, Landroid/view/MenuItem;->collapseActionView()Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p0}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    return v0
.end method
