.class Lcom/estrongs/android/pop/app/jl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopVideoPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/jl;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/jl;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/android/pop/app/jl;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

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

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->aD()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v5}, Lcom/estrongs/android/pop/utils/ci;->a(Ljava/lang/String;)I

    move-result v0

    sget v3, Lcom/estrongs/android/pop/utils/ci;->c:I

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_1
    move v4, v0

    :goto_2
    if-eqz v4, :cond_2

    const v0, 0x7f0b0433

    move v3, v0

    :goto_3
    if-eqz v4, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/jl;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    const v6, 0x7f0b0443

    invoke-virtual {v0, v6}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v5}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v0, v6}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    new-instance v2, Lcom/estrongs/android/ui/dialog/ct;

    iget-object v6, p0, Lcom/estrongs/android/pop/app/jl;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-direct {v2, v6}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/dialog/ct;->b(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v2, 0x7f0b000d

    new-instance v3, Lcom/estrongs/android/pop/app/jn;

    invoke-direct {v3, p0, v5, v4}, Lcom/estrongs/android/pop/app/jn;-><init>(Lcom/estrongs/android/pop/app/jl;Ljava/lang/String;Z)V

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/ui/dialog/ct;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v2, 0x7f0b000e

    new-instance v3, Lcom/estrongs/android/pop/app/jm;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/jm;-><init>(Lcom/estrongs/android/pop/app/jl;)V

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/ui/dialog/ct;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->c()Lcom/estrongs/android/ui/dialog/cg;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/jl;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->D(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Lcom/estrongs/android/ui/e/iw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/iw;->d()V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    const v0, 0x7f0b0013

    move v3, v0

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/jl;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    const v6, 0x7f0b021f

    invoke-virtual {v2, v6}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v5}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

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
