.class public Lcom/estrongs/android/pop/app/ESFileSharingActivity;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# instance fields
.field private a:Z

.field private b:Lcom/estrongs/android/util/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->b:Lcom/estrongs/android/util/a;

    return-void
.end method

.method private a()V
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/ESFileSharingActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->a:Z

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/ESFileSharingActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->a:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/ESFileSharingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->a()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/ui/pcs/r;->a()Lcom/estrongs/android/ui/pcs/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/r;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/bm;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/bm;-><init>(Lcom/estrongs/android/pop/app/ESFileSharingActivity;)V

    invoke-static {p1, p2, v0}, Lcom/estrongs/android/pop/utils/aj;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->a:Z

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/estrongs/android/pop/app/bn;

    invoke-direct {v0, p0, p1, p2}, Lcom/estrongs/android/pop/app/bn;-><init>(Lcom/estrongs/android/pop/app/ESFileSharingActivity;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/estrongs/android/pop/utils/aj;->a(Landroid/app/Activity;Lcom/estrongs/android/ui/pcs/n;)Lcom/estrongs/android/ui/dialog/ct;

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/ui/pcs/r;->a()Lcom/estrongs/android/ui/pcs/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/r;->j()Lcom/estrongs/android/ui/pcs/j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p3, p2}, Lcom/estrongs/android/ui/pcs/j;->a(ILandroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v5}, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->requestWindowFeature(I)Z

    invoke-static {}, Lcom/estrongs/android/pop/utils/cc;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ESFileSharingActivity"

    invoke-static {p0, v4, v0}, Lcom/estrongs/android/util/a;->a(Landroid/content/Context;ZLjava/lang/String;)Lcom/estrongs/android/util/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->b:Lcom/estrongs/android/util/a;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f0b055b

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f0b0373

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    new-instance v1, Lcom/estrongs/android/ui/dialog/ct;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b003c

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v1

    const/4 v2, -0x1

    new-instance v3, Lcom/estrongs/android/pop/app/bl;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/bl;-><init>(Lcom/estrongs/android/pop/app/ESFileSharingActivity;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/estrongs/android/ui/dialog/ct;->a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/dialog/ct;->d(Z)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/bk;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/bk;-><init>(Lcom/estrongs/android/pop/app/ESFileSharingActivity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->c()Lcom/estrongs/android/ui/dialog/cg;

    iput-boolean v5, p0, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->a:Z

    const v0, 0x103000f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->setTheme(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->a()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->finish()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onPause()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->b:Lcom/estrongs/android/util/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->b:Lcom/estrongs/android/util/a;

    invoke-virtual {v0}, Lcom/estrongs/android/util/a;->c()Z

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onResume()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->b:Lcom/estrongs/android/util/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->b:Lcom/estrongs/android/util/a;

    invoke-virtual {v0}, Lcom/estrongs/android/util/a;->b()Z

    :cond_0
    return-void
.end method
