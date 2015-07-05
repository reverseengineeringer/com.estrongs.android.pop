.class public Lcom/estrongs/android/ui/e/u;
.super Lcom/estrongs/android/ui/e/jk;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/e/jk;-><init>(Landroid/content/Context;Z)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/e/u;->h()V

    return-void
.end method

.method private h()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/e/u;->b:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;

    const v0, 0x7f0b006f

    const v1, 0x7f0202d9

    new-instance v2, Lcom/estrongs/android/ui/e/v;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/e/v;-><init>(Lcom/estrongs/android/ui/e/u;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/estrongs/android/ui/e/u;->a(IILandroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    return-void
.end method
