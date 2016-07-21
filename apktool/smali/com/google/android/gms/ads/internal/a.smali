.class public abstract Lcom/google/android/gms/ads/internal/a;
.super Lcom/google/android/gms/ads/internal/client/ae;

# interfaces
.implements Lcom/google/android/gms/ads/internal/client/a;
.implements Lcom/google/android/gms/ads/internal/overlay/w;
.implements Lcom/google/android/gms/ads/internal/request/d;
.implements Lcom/google/android/gms/internal/fd;
.implements Lcom/google/android/gms/internal/ll;
.implements Lcom/google/android/gms/internal/nm;


# annotations
.annotation runtime Lcom/google/android/gms/internal/me;
.end annotation


# instance fields
.field a:Z

.field protected final b:Lcom/google/android/gms/ads/internal/ab;

.field protected final c:Lcom/google/android/gms/ads/internal/af;

.field protected transient d:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

.field protected final e:Lcom/google/android/gms/internal/at;

.field protected final f:Lcom/google/android/gms/ads/internal/i;

.field private g:Lcom/google/android/gms/internal/dh;

.field private h:Lcom/google/android/gms/internal/dg;

.field private i:Lcom/google/android/gms/internal/dg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/af;Lcom/google/android/gms/ads/internal/ab;Lcom/google/android/gms/ads/internal/i;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/ae;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/a;->a:Z

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/a;->b:Lcom/google/android/gms/ads/internal/ab;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/i;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->e()Lcom/google/android/gms/internal/oe;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/oe;->b(Landroid/content/Context;)Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->h()Lcom/google/android/gms/internal/nk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/af;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/nk;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->h()Lcom/google/android/gms/internal/nk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nk;->j()Lcom/google/android/gms/internal/at;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/internal/at;

    return-void

    :cond_0
    new-instance p2, Lcom/google/android/gms/ads/internal/ab;

    invoke-direct {p2, p0}, Lcom/google/android/gms/ads/internal/ab;-><init>(Lcom/google/android/gms/ads/internal/a;)V

    goto :goto_0
.end method

.method private s()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "Ad leaving application."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/b;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->n:Lcom/google/android/gms/ads/internal/client/r;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->n:Lcom/google/android/gms/ads/internal/client/r;

    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/client/r;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Could not call AdListener.onAdLeftApplication()."

    invoke-static {v2, v1}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/lang/String;)J
    .locals 3

    const-string v0, "ufe"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/16 v0, 0x2c

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    add-int/lit8 v1, v1, 0x4

    :try_start_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-string v0, "Invalid index for Url fetch time in CSI latency info."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->e(Ljava/lang/String;)V

    :goto_1
    const-wide/16 v0, -0x1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "Cannot find valid format of Url fetch time in CSI latency info."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method a(Lcom/google/android/gms/internal/bz;)Landroid/os/Bundle;
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/bz;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/bz;->d()V

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/bz;->c()Lcom/google/android/gms/internal/bw;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/bw;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In AdManger: loadAd, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/bw;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(Ljava/lang/String;)V

    :goto_1
    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v5}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "fingerprint"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "v"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method public a()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    if-nez v0, :cond_1

    const-string v0, "Ad state was null when trying to ping click URLs."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Pinging click URLs."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->l:Lcom/google/android/gms/internal/ni;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ni;->b()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v0, v0, Lcom/google/android/gms/internal/ng;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->e()Lcom/google/android/gms/internal/oe;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/af;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->c:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->e()Lcom/google/android/gms/internal/oe;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v5, v5, Lcom/google/android/gms/internal/ng;->c:Ljava/util/List;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v6, v6, Lcom/google/android/gms/internal/ng;->x:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/internal/oe;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/oe;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->m:Lcom/google/android/gms/ads/internal/client/o;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->m:Lcom/google/android/gms/ads/internal/client/o;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/o;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not notify onAdClicked event."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->f:Lcom/google/android/gms/ads/internal/ag;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->g()Lcom/google/android/gms/internal/oh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/oh;->d()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/ads/internal/ag;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V
    .locals 2

    const-string v0, "setAdSize must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/bn;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/af;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v0, v0, Lcom/google/android/gms/internal/ng;->b:Lcom/google/android/gms/internal/qa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget v0, v0, Lcom/google/android/gms/ads/internal/af;->C:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v0, v0, Lcom/google/android/gms/internal/ng;->b:Lcom/google/android/gms/internal/qa;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/qa;->a(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->f:Lcom/google/android/gms/ads/internal/ag;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->f:Lcom/google/android/gms/ads/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/ag;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->f:Lcom/google/android/gms/ads/internal/ag;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->f:Lcom/google/android/gms/ads/internal/ag;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/ag;->getNextView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/ag;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->f:Lcom/google/android/gms/ads/internal/ag;

    iget v1, p1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->h:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/ag;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->f:Lcom/google/android/gms/ads/internal/ag;

    iget v1, p1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->e:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/ag;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->f:Lcom/google/android/gms/ads/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/ag;->requestLayout()V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/ads/internal/client/aj;)V
    .locals 1

    const-string v0, "setAppEventListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/bn;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/af;->o:Lcom/google/android/gms/ads/internal/client/aj;

    return-void
.end method

.method public a(Lcom/google/android/gms/ads/internal/client/am;)V
    .locals 1

    const-string v0, "setCorrelationIdProvider must be called on the main UI thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/bn;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/af;->p:Lcom/google/android/gms/ads/internal/client/am;

    return-void
.end method

.method public a(Lcom/google/android/gms/ads/internal/client/o;)V
    .locals 1

    const-string v0, "setAdListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/bn;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/af;->m:Lcom/google/android/gms/ads/internal/client/o;

    return-void
.end method

.method public a(Lcom/google/android/gms/ads/internal/client/r;)V
    .locals 1

    const-string v0, "setAdListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/bn;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/af;->n:Lcom/google/android/gms/ads/internal/client/r;

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/dn;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setOnCustomRenderedAdLoadedListener is not supported for current ad type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/google/android/gms/internal/kj;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setInAppPurchaseListener is not supported for current ad type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/google/android/gms/internal/kv;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setPlayStorePurchaseParams is not supported for current ad type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/google/android/gms/internal/nh;)V
    .locals 8

    const-wide/16 v2, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p1, Lcom/google/android/gms/internal/nh;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->o:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/nh;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/nh;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->A:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/a;->a(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->g:Lcom/google/android/gms/internal/dh;

    iget-object v3, p1, Lcom/google/android/gms/internal/nh;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v4, v3, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->o:J

    add-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/dh;->a(J)Lcom/google/android/gms/internal/dg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->g:Lcom/google/android/gms/internal/dh;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "stc"

    aput-object v3, v2, v6

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/dh;->a(Lcom/google/android/gms/internal/dg;[Ljava/lang/String;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->g:Lcom/google/android/gms/internal/dh;

    iget-object v1, p1, Lcom/google/android/gms/internal/nh;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/dh;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->g:Lcom/google/android/gms/internal/dh;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->h:Lcom/google/android/gms/internal/dg;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "arf"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/dh;->a(Lcom/google/android/gms/internal/dg;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->g:Lcom/google/android/gms/internal/dh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dh;->a()Lcom/google/android/gms/internal/dg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/a;->i:Lcom/google/android/gms/internal/dg;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/af;->g:Lcom/google/android/gms/internal/np;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/af;->k:Lcom/google/android/gms/internal/nh;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->g:Lcom/google/android/gms/internal/dh;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/nh;Lcom/google/android/gms/internal/dh;)V

    return-void
.end method

.method protected abstract a(Lcom/google/android/gms/internal/nh;Lcom/google/android/gms/internal/dh;)V
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->o:Lcom/google/android/gms/ads/internal/client/aj;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->o:Lcom/google/android/gms/ads/internal/client/aj;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/ads/internal/client/aj;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call the AppEventListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/ni;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/af;->a(Ljava/util/HashSet;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to call setManualImpressionsEnabled for an unsupported ad type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(I)Z
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load ad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/b;->e(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/a;->a:Z

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->n:Lcom/google/android/gms/ads/internal/client/r;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->n:Lcom/google/android/gms/ads/internal/client/r;

    invoke-interface {v1, p1}, Lcom/google/android/gms/ads/internal/client/r;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Could not call AdListener.onAdFailedToLoad()."

    invoke-static {v2, v1}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z
    .locals 3

    const-string v0, "loadAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/bn;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->g:Lcom/google/android/gms/internal/np;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->h:Lcom/google/android/gms/internal/np;

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->d:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    if-eqz v0, :cond_1

    const-string v0, "Aborting last ad request since another ad request is already in progress. The current request object will still be cached for future refreshes."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->e(Ljava/lang/String;)V

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/a;->d:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const-string v0, "Starting ad request."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/a;->a:Z

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->n()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->g:Lcom/google/android/gms/internal/dh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dh;->a()Lcom/google/android/gms/internal/dg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/a;->h:Lcom/google/android/gms/internal/dg;

    iget-boolean v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->g:Z

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Use AdRequest.Builder.addTestDevice(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/m;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/util/client/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\") to get test ads on this device."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->c(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->g:Lcom/google/android/gms/internal/dh;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/dh;)Z

    move-result v0

    goto :goto_0
.end method

.method protected abstract a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/dh;)Z
.end method

.method a(Lcom/google/android/gms/internal/ng;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract a(Lcom/google/android/gms/internal/ng;Lcom/google/android/gms/internal/ng;)Z
.end method

.method public b()Lcom/google/android/gms/dynamic/e;
    .locals 1

    const-string v0, "getAdFrame must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/bn;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->f:Lcom/google/android/gms/ads/internal/ag;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/h;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/e;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/android/gms/internal/ng;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, -0x2

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->g:Lcom/google/android/gms/internal/dh;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->i:Lcom/google/android/gms/internal/dg;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "awr"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/dh;->a(Lcom/google/android/gms/internal/dg;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/af;->h:Lcom/google/android/gms/internal/np;

    iget v0, p1, Lcom/google/android/gms/internal/ng;->d:I

    if-eq v0, v5, :cond_0

    iget v0, p1, Lcom/google/android/gms/internal/ng;->d:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->h()Lcom/google/android/gms/internal/nk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/af;->a()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/nk;->a(Ljava/util/HashSet;)V

    :cond_0
    iget v0, p1, Lcom/google/android/gms/internal/ng;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iput-boolean v4, p0, Lcom/google/android/gms/ads/internal/a;->a:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/ng;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Ad refresh scheduled."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(Ljava/lang/String;)V

    :cond_3
    iget v0, p1, Lcom/google/android/gms/internal/ng;->d:I

    if-eq v0, v5, :cond_4

    iget v0, p1, Lcom/google/android/gms/internal/ng;->d:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/a;->a(I)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->A:Lcom/google/android/gms/internal/nn;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    new-instance v1, Lcom/google/android/gms/internal/nn;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/af;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/nn;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/af;->A:Lcom/google/android/gms/internal/nn;

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/internal/at;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/at;->b(Lcom/google/android/gms/internal/ng;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/ng;Lcom/google/android/gms/internal/ng;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/af;->h()V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->g:Lcom/google/android/gms/internal/dh;

    const-string v2, "is_mraid"

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ng;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "1"

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/dh;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->g:Lcom/google/android/gms/internal/dh;

    const-string v2, "is_mediation"

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ng;->k:Z

    if-eqz v0, :cond_9

    const-string v0, "1"

    :goto_2
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/dh;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v0, v0, Lcom/google/android/gms/internal/ng;->b:Lcom/google/android/gms/internal/qa;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v0, v0, Lcom/google/android/gms/internal/ng;->b:Lcom/google/android/gms/internal/qa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/qa;->i()Lcom/google/android/gms/internal/qb;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->g:Lcom/google/android/gms/internal/dh;

    const-string v2, "is_video"

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v0, v0, Lcom/google/android/gms/internal/ng;->b:Lcom/google/android/gms/internal/qa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/qa;->i()Lcom/google/android/gms/internal/qb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qb;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "1"

    :goto_3
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/dh;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->g:Lcom/google/android/gms/internal/dh;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->h:Lcom/google/android/gms/internal/dg;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ttc"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/dh;->a(Lcom/google/android/gms/internal/dg;[Ljava/lang/String;)Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->h()Lcom/google/android/gms/internal/nk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nk;->e()Lcom/google/android/gms/internal/dd;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->h()Lcom/google/android/gms/internal/nk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nk;->e()Lcom/google/android/gms/internal/dd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->g:Lcom/google/android/gms/internal/dh;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/dd;->a(Lcom/google/android/gms/internal/dh;)Z

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/af;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->q()Z

    goto/16 :goto_0

    :cond_8
    const-string v0, "0"

    goto :goto_1

    :cond_9
    const-string v0, "0"

    goto :goto_2

    :cond_a
    const-string v0, "0"

    goto :goto_3
.end method

.method protected b(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->f:Lcom/google/android/gms/ads/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/ag;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->e()Lcom/google/android/gms/internal/oe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/oe;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 2

    const-string v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/bn;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->b:Lcom/google/android/gms/ads/internal/ab;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/ab;->a()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/internal/at;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/at;->c(Lcom/google/android/gms/internal/ng;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/af;->i()V

    return-void
.end method

.method public c(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/a;->b(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "Ad is not visible. Not refreshing ad."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->b:Lcom/google/android/gms/ads/internal/ab;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/ab;->a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V

    goto :goto_0
.end method

.method protected c(Lcom/google/android/gms/internal/ng;)V
    .locals 7

    if-nez p1, :cond_1

    const-string v0, "Ad state was null when trying to ping impression URLs."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Pinging Impression URLs."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->l:Lcom/google/android/gms/internal/ni;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ni;->a()V

    iget-object v0, p1, Lcom/google/android/gms/internal/ng;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->e()Lcom/google/android/gms/internal/oe;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/af;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->c:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->e()Lcom/google/android/gms/internal/oe;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    iget-object v5, p1, Lcom/google/android/gms/internal/ng;->e:Ljava/util/List;

    iget-object v6, p1, Lcom/google/android/gms/internal/ng;->x:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/internal/oe;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/oe;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    const-string v0, "isLoaded must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/bn;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->g:Lcom/google/android/gms/internal/np;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->h:Lcom/google/android/gms/internal/np;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 1

    const-string v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/bn;->b(Ljava/lang/String;)V

    return-void
.end method

.method public f()V
    .locals 1

    const-string v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/bn;->b(Ljava/lang/String;)V

    return-void
.end method

.method public h()V
    .locals 2

    const-string v0, "stopLoading must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/bn;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/a;->a:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/af;->a(Z)V

    return-void
.end method

.method public i()V
    .locals 7

    const-string v0, "recordManualImpression must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/bn;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    if-nez v0, :cond_1

    const-string v0, "Ad state was null when trying to ping manual tracking URLs."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Pinging manual tracking URLs."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v0, v0, Lcom/google/android/gms/internal/ng;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->e()Lcom/google/android/gms/internal/oe;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/af;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->c:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->e()Lcom/google/android/gms/internal/oe;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v5, v5, Lcom/google/android/gms/internal/ng;->f:Ljava/util/List;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v6, v6, Lcom/google/android/gms/internal/ng;->x:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/internal/oe;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/oe;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method public j()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    .locals 1

    const-string v0, "getAdSize must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/bn;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    return-object v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/a;->a:Z

    return v0
.end method

.method public m()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/a;->s()Z

    return-void
.end method

.method n()V
    .locals 8

    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    new-instance v1, Lcom/google/android/gms/internal/dh;

    sget-object v0, Lcom/google/android/gms/internal/cz;->G:Lcom/google/android/gms/internal/cr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cr;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "load_ad"

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/af;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->c:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/dh;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/a;->g:Lcom/google/android/gms/internal/dh;

    new-instance v0, Lcom/google/android/gms/internal/dg;

    invoke-direct {v0, v6, v7, v4, v4}, Lcom/google/android/gms/internal/dg;-><init>(JLjava/lang/String;Lcom/google/android/gms/internal/dg;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/a;->h:Lcom/google/android/gms/internal/dg;

    new-instance v0, Lcom/google/android/gms/internal/dg;

    invoke-direct {v0, v6, v7, v4, v4}, Lcom/google/android/gms/internal/dg;-><init>(JLjava/lang/String;Lcom/google/android/gms/internal/dg;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/a;->i:Lcom/google/android/gms/internal/dg;

    return-void
.end method

.method protected o()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "Ad closing."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->n:Lcom/google/android/gms/ads/internal/client/r;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->n:Lcom/google/android/gms/ads/internal/client/r;

    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/client/r;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Could not call AdListener.onAdClosed()."

    invoke-static {v2, v1}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected p()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "Ad opening."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/b;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->n:Lcom/google/android/gms/ads/internal/client/r;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->n:Lcom/google/android/gms/ads/internal/client/r;

    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/client/r;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Could not call AdListener.onAdOpened()."

    invoke-static {v2, v1}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected q()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "Ad finished loading."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/b;->c(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/a;->a:Z

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->n:Lcom/google/android/gms/ads/internal/client/r;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->n:Lcom/google/android/gms/ads/internal/client/r;

    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/client/r;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Could not call AdListener.onAdLoaded()."

    invoke-static {v2, v1}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected r()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/a;->c(Lcom/google/android/gms/internal/ng;)V

    return-void
.end method
