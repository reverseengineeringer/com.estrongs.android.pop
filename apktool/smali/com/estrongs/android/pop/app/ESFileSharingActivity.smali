.class public Lcom/estrongs/android/pop/app/ESFileSharingActivity;
.super Lcom/estrongs/android/pop/esclasses/ESResourceActivity;


# instance fields
.field private a:Z

.field private b:Lcom/estrongs/android/j/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->b:Lcom/estrongs/android/j/c;

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

    invoke-static {}, Lcom/estrongs/android/ui/pcs/u;->a()Lcom/estrongs/android/ui/pcs/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/bq;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/bq;-><init>(Lcom/estrongs/android/pop/app/ESFileSharingActivity;)V

    invoke-static {p1, p2, v0}, Lcom/estrongs/android/pop/utils/ao;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->a:Z

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/estrongs/android/pop/app/br;

    invoke-direct {v0, p0, p1, p2}, Lcom/estrongs/android/pop/app/br;-><init>(Lcom/estrongs/android/pop/app/ESFileSharingActivity;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/estrongs/android/pop/utils/ao;->a(Landroid/app/Activity;Lcom/estrongs/android/ui/pcs/q;)Lcom/estrongs/android/ui/dialog/cv;

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/ui/pcs/u;->a()Lcom/estrongs/android/ui/pcs/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/u;->j()Lcom/estrongs/android/ui/pcs/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p3, p2}, Lcom/estrongs/android/ui/pcs/l;->a(ILandroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/estrongs/android/pop/utils/cl;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->b:Lcom/estrongs/android/j/c;

    invoke-static {p0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->b:Lcom/estrongs/android/j/c;

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->b:Lcom/estrongs/android/j/c;

    const-string v1, "act3"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->b:Lcom/estrongs/android/j/c;

    const-string v1, "act3"

    const-string v2, "es_file_sharing"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f080644

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f08004b

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    new-instance v1, Lcom/estrongs/android/ui/dialog/cv;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0800ac

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->a(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v1

    const/4 v2, -0x1

    new-instance v3, Lcom/estrongs/android/pop/app/bp;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/bp;-><init>(Lcom/estrongs/android/pop/app/ESFileSharingActivity;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/estrongs/android/ui/dialog/cv;->a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/dialog/cv;->d(Z)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/bo;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/bo;-><init>(Lcom/estrongs/android/pop/app/ESFileSharingActivity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->c()Lcom/estrongs/android/ui/dialog/ci;

    iput-boolean v5, p0, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->a:Z

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->a()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->finish()V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->onResume()V

    return-void
.end method
