.class public Lcom/estrongs/android/ui/e/cf;
.super Lcom/estrongs/android/ui/e/jk;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/e/jk;-><init>(Landroid/content/Context;Z)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/e/cf;->h()V

    return-void
.end method

.method private h()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cf;->b:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;

    const v1, 0x7f0b002f

    const v2, 0x7f0202cf

    new-instance v3, Lcom/estrongs/android/ui/e/cg;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/ui/e/cg;-><init>(Lcom/estrongs/android/ui/e/cf;Lcom/estrongs/android/pop/app/LocalFileSharingActivity;)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/estrongs/android/ui/e/cf;->a(IILandroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    const v1, 0x7f0b002b

    const v2, 0x7f0202a8

    new-instance v3, Lcom/estrongs/android/ui/e/ch;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/ui/e/ch;-><init>(Lcom/estrongs/android/ui/e/cf;Lcom/estrongs/android/pop/app/LocalFileSharingActivity;)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/estrongs/android/ui/e/cf;->a(IILandroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    const v1, 0x7f0b0022

    const v2, 0x7f0202ab

    new-instance v3, Lcom/estrongs/android/ui/e/ci;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/ui/e/ci;-><init>(Lcom/estrongs/android/ui/e/cf;Lcom/estrongs/android/pop/app/LocalFileSharingActivity;)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/estrongs/android/ui/e/cf;->a(IILandroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    return-void
.end method
