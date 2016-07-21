.class public Landroid/support/design/internal/n;
.super Landroid/support/v7/view/menu/ad;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/design/internal/a;Landroid/support/v7/view/menu/m;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/view/menu/ad;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/i;Landroid/support/v7/view/menu/m;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/view/menu/ad;->a(Z)V

    invoke-virtual {p0}, Landroid/support/design/internal/n;->s()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/i;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/i;->a(Z)V

    return-void
.end method
