.class public abstract Lcom/google/android/gms/ads/internal/d;
.super Lcom/google/android/gms/ads/internal/b;

# interfaces
.implements Lcom/google/android/gms/ads/internal/o;
.implements Lcom/google/android/gms/internal/js;


# annotations
.annotation runtime Lcom/google/android/gms/internal/me;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/if;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/i;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/ads/internal/b;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/if;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/i;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/internal/nh;Lcom/google/android/gms/ads/internal/j;)Lcom/google/android/gms/internal/qa;
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/d;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->f:Lcom/google/android/gms/ads/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/ag;->getNextView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/qa;

    if-eqz v1, :cond_0

    const-string v1, "Reusing webview..."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/b;->a(Ljava/lang/String;)V

    check-cast v0, Lcom/google/android/gms/internal/qa;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/d;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/d;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/af;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/qa;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V

    move-object v10, v0

    :goto_0
    invoke-interface {v10}, Lcom/google/android/gms/internal/qa;->i()Lcom/google/android/gms/internal/qb;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p0

    move-object v3, p0

    move-object v4, p0

    move-object v6, p0

    move-object v8, p2

    move-object v9, p0

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/internal/qb;->a(Lcom/google/android/gms/ads/internal/client/a;Lcom/google/android/gms/ads/internal/overlay/p;Lcom/google/android/gms/internal/fd;Lcom/google/android/gms/ads/internal/overlay/w;ZLcom/google/android/gms/internal/fy;Lcom/google/android/gms/internal/ga;Lcom/google/android/gms/ads/internal/j;Lcom/google/android/gms/internal/js;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/nh;->a:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->A:Ljava/lang/String;

    invoke-interface {v10, v0}, Lcom/google/android/gms/internal/qa;->b(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/nh;->a:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->y:Ljava/lang/String;

    invoke-interface {v10, v0}, Lcom/google/android/gms/internal/qa;->c(Ljava/lang/String;)V

    return-object v10

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/d;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->f:Lcom/google/android/gms/ads/internal/ag;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/ag;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->f()Lcom/google/android/gms/internal/qh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/d;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/d;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/af;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/d;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/af;->d:Lcom/google/android/gms/internal/aj;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/d;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/af;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/d;->f:Lcom/google/android/gms/ads/internal/i;

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/qh;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/aj;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/i;)Lcom/google/android/gms/internal/qa;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/d;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->i:[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    if-nez v1, :cond_2

    invoke-interface {v0}, Lcom/google/android/gms/internal/qa;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/d;->a(Landroid/view/View;)V

    :cond_2
    move-object v10, v0

    goto :goto_0
.end method

.method public a(IIII)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/d;->p()Z

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/dn;)V
    .locals 1

    const-string v0, "setOnCustomRenderedAdLoadedListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/bn;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/d;->c:Lcom/google/android/gms/ads/internal/af;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/af;->x:Lcom/google/android/gms/internal/dn;

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/nh;Lcom/google/android/gms/internal/dh;)V
    .locals 10

    iget v0, p1, Lcom/google/android/gms/internal/nh;->e:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/oe;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/e;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/e;-><init>(Lcom/google/android/gms/ads/internal/d;Lcom/google/android/gms/internal/nh;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/nh;->d:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/d;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, p1, Lcom/google/android/gms/internal/nh;->d:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/af;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/nh;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->i:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/d;->c:Lcom/google/android/gms/ads/internal/af;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/ads/internal/af;->C:I

    iget-object v9, p0, Lcom/google/android/gms/ads/internal/d;->c:Lcom/google/android/gms/ads/internal/af;

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->d()Lcom/google/android/gms/internal/lk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/d;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/d;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v4, v2, Lcom/google/android/gms/ads/internal/af;->d:Lcom/google/android/gms/internal/aj;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/d;->g:Lcom/google/android/gms/internal/if;

    move-object v2, p0

    move-object v3, p1

    move-object v7, p0

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/internal/lk;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/nh;Lcom/google/android/gms/internal/aj;Lcom/google/android/gms/internal/qa;Lcom/google/android/gms/internal/if;Lcom/google/android/gms/internal/ll;Lcom/google/android/gms/internal/dh;)Lcom/google/android/gms/internal/np;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gms/ads/internal/af;->h:Lcom/google/android/gms/internal/np;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/oe;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/f;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/ads/internal/f;-><init>(Lcom/google/android/gms/ads/internal/d;Lcom/google/android/gms/internal/nh;Lcom/google/android/gms/internal/dh;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected a(Lcom/google/android/gms/internal/ng;Lcom/google/android/gms/internal/ng;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/d;->c:Lcom/google/android/gms/ads/internal/af;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/af;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/d;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->f:Lcom/google/android/gms/ads/internal/ag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/d;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->f:Lcom/google/android/gms/ads/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/ag;->a()Lcom/google/android/gms/internal/oq;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/ng;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/oq;->a(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/b;->a(Lcom/google/android/gms/internal/ng;Lcom/google/android/gms/internal/ng;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/View;)V
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/d;->c:Lcom/google/android/gms/ads/internal/af;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/af;->B:Landroid/view/View;

    new-instance v0, Lcom/google/android/gms/internal/ng;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/d;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->k:Lcom/google/android/gms/internal/nh;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ng;-><init>(Lcom/google/android/gms/internal/nh;Lcom/google/android/gms/internal/qa;Lcom/google/android/gms/internal/hs;Lcom/google/android/gms/internal/ii;Ljava/lang/String;Lcom/google/android/gms/internal/hy;Lcom/google/android/gms/ads/internal/formats/o;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/d;->b(Lcom/google/android/gms/internal/ng;)V

    return-void
.end method

.method public r()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/d;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/ads/internal/d;->a(Lcom/google/android/gms/internal/ng;Z)V

    return-void
.end method

.method public y()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/d;->a()V

    return-void
.end method

.method public z()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/d;->o()Z

    return-void
.end method
