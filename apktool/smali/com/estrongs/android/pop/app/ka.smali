.class Lcom/estrongs/android/pop/app/ka;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopVideoPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ka;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ka;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/android/pop/app/ka;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v3, v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a(Lcom/estrongs/android/pop/app/PopVideoPlayer;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->aE()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v5}, Lcom/estrongs/android/pop/utils/cr;->a(Ljava/lang/String;)I

    move-result v0

    sget v3, Lcom/estrongs/android/pop/utils/cr;->c:I

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_1
    move v4, v0

    :goto_2
    if-eqz v4, :cond_2

    const v0, 0x7f08009e

    move v3, v0

    :goto_3
    if-eqz v4, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ka;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    const v6, 0x7f0805fe

    invoke-virtual {v0, v6}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v5}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v0, v6}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    new-instance v2, Lcom/estrongs/android/ui/dialog/cv;

    iget-object v6, p0, Lcom/estrongs/android/pop/app/ka;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-direct {v2, v6}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/dialog/cv;->a(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/dialog/cv;->b(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v2, 0x7f080229

    new-instance v3, Lcom/estrongs/android/pop/app/kc;

    invoke-direct {v3, p0, v5, v4}, Lcom/estrongs/android/pop/app/kc;-><init>(Lcom/estrongs/android/pop/app/ka;Ljava/lang/String;Z)V

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/ui/dialog/cv;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v2, 0x7f080225

    new-instance v3, Lcom/estrongs/android/pop/app/kb;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/kb;-><init>(Lcom/estrongs/android/pop/app/ka;)V

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/ui/dialog/cv;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->c()Lcom/estrongs/android/ui/dialog/ci;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ka;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->E(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Lcom/estrongs/android/ui/e/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/ju;->d()V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    const v0, 0x7f08007d

    move v3, v0

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ka;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    const v6, 0x7f080721

    invoke-virtual {v2, v6}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v5}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_4
    move v4, v0

    goto :goto_2
.end method
