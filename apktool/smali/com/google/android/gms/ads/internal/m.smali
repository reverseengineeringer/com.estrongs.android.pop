.class public Lcom/google/android/gms/ads/internal/m;
.super Lcom/google/android/gms/ads/internal/d;


# annotations
.annotation runtime Lcom/google/android/gms/internal/me;
.end annotation


# instance fields
.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/if;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/d;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/if;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/i;)V

    return-void
.end method

.method private b(Lcom/google/android/gms/internal/ng;Lcom/google/android/gms/internal/ng;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p2, Lcom/google/android/gms/internal/ng;->k:Z

    if-eqz v0, :cond_7

    :try_start_0
    iget-object v0, p2, Lcom/google/android/gms/internal/ng;->m:Lcom/google/android/gms/internal/ii;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ii;->a()Lcom/google/android/gms/dynamic/e;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "View in mediation adapter is null."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->e(Ljava/lang/String;)V

    move v0, v3

    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/dynamic/h;->a(Lcom/google/android/gms/dynamic/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/m;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->f:Lcom/google/android/gms/ads/internal/ag;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/ag;->getNextView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    instance-of v1, v2, Lcom/google/android/gms/internal/qa;

    if-eqz v1, :cond_1

    move-object v1, v2

    check-cast v1, Lcom/google/android/gms/internal/qa;

    invoke-interface {v1}, Lcom/google/android/gms/internal/qa;->destroy()V

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/m;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->f:Lcom/google/android/gms/ads/internal/ag;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/ag;->removeView(Landroid/view/View;)V

    :cond_2
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/m;->a(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->f:Lcom/google/android/gms/ads/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/ag;->getChildCount()I

    move-result v0

    if-le v0, v4, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->f:Lcom/google/android/gms/ads/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/ag;->showNext()V

    :cond_4
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->f:Lcom/google/android/gms/ads/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/ag;->getNextView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/qa;

    if-eqz v1, :cond_8

    check-cast v0, Lcom/google/android/gms/internal/qa;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/m;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/m;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/af;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/qa;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->c:Lcom/google/android/gms/ads/internal/af;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/af;->d()V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->f:Lcom/google/android/gms/ads/internal/ag;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/ads/internal/ag;->setVisibility(I)V

    move v0, v4

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not get View from mediation adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v3

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Could not add mediation view to view hierarchy."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v3

    goto :goto_0

    :cond_7
    iget-object v0, p2, Lcom/google/android/gms/internal/ng;->r:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/google/android/gms/internal/ng;->b:Lcom/google/android/gms/internal/qa;

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/google/android/gms/internal/ng;->b:Lcom/google/android/gms/internal/qa;

    iget-object v1, p2, Lcom/google/android/gms/internal/ng;->r:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/qa;->a(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->f:Lcom/google/android/gms/ads/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/ag;->removeAllViews()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->f:Lcom/google/android/gms/ads/internal/ag;

    iget-object v1, p2, Lcom/google/android/gms/internal/ng;->r:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->h:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/ag;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->f:Lcom/google/android/gms/ads/internal/ag;

    iget-object v1, p2, Lcom/google/android/gms/internal/ng;->r:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->e:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/ag;->setMinimumHeight(I)V

    iget-object v0, p2, Lcom/google/android/gms/internal/ng;->b:Lcom/google/android/gms/internal/qa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/qa;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/m;->a(Landroid/view/View;)V

    goto :goto_1

    :cond_8
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/m;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->f:Lcom/google/android/gms/ads/internal/ag;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/ag;->removeView(Landroid/view/View;)V

    goto :goto_2
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    const-string v0, "setManualImpressionsEnabled must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/bn;->b(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/m;->i:Z

    return-void
.end method

.method public a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/m;->d(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/google/android/gms/ads/internal/d;->a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/google/android/gms/internal/ng;Lcom/google/android/gms/internal/ng;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/d;->a(Lcom/google/android/gms/internal/ng;Lcom/google/android/gms/internal/ng;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/m;->c:Lcom/google/android/gms/ads/internal/af;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/af;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/ads/internal/m;->b(Lcom/google/android/gms/internal/ng;Lcom/google/android/gms/internal/ng;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/m;->a(I)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/ads/internal/m;->a(Lcom/google/android/gms/internal/ng;Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->c:Lcom/google/android/gms/ads/internal/af;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/af;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/google/android/gms/internal/ng;->b:Lcom/google/android/gms/internal/qa;

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/google/android/gms/internal/ng;->j:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->e:Lcom/google/android/gms/internal/at;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/m;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/at;->a(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/ng;)Lcom/google/android/gms/internal/au;

    :cond_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ng;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->e:Lcom/google/android/gms/internal/at;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/m;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/at;->a(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/ng;)Lcom/google/android/gms/internal/au;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/ng;->b:Lcom/google/android/gms/internal/qa;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/au;->a(Lcom/google/android/gms/internal/ar;)V

    :cond_3
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p2, Lcom/google/android/gms/internal/ng;->b:Lcom/google/android/gms/internal/qa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/qa;->i()Lcom/google/android/gms/internal/qb;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/internal/n;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/ads/internal/n;-><init>(Lcom/google/android/gms/ads/internal/m;Lcom/google/android/gms/internal/ng;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/qb;->a(Lcom/google/android/gms/internal/qe;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->B:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/google/android/gms/internal/ng;->j:Lorg/json/JSONObject;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->e:Lcom/google/android/gms/internal/at;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/m;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/m;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/af;->B:Landroid/view/View;

    invoke-virtual {v0, v1, p2, v2}, Lcom/google/android/gms/internal/at;->a(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/ng;Landroid/view/View;)Lcom/google/android/gms/internal/au;

    goto :goto_1
.end method

.method d(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    .locals 21

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->i:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/gms/ads/internal/m;->i:Z

    if-ne v2, v3, :cond_0

    :goto_0
    return-object p1

    :cond_0
    new-instance v2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->b:I

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->c:J

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->d:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->e:I

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->f:Ljava/util/List;

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->g:Z

    move-object/from16 v0, p1

    iget v10, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->h:I

    move-object/from16 v0, p1

    iget-boolean v11, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->i:Z

    if-nez v11, :cond_1

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/gms/ads/internal/m;->i:Z

    if-eqz v11, :cond_2

    :cond_1
    const/4 v11, 0x1

    :goto_1
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->j:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->k:Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->l:Landroid/location/Location;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->m:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->n:Landroid/os/Bundle;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->o:Landroid/os/Bundle;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->p:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->q:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->r:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-direct/range {v2 .. v20}, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 p1, v2

    goto :goto_0

    :cond_2
    const/4 v11, 0x0

    goto :goto_1
.end method

.method public g()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Interstitial is NOT supported by BannerAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected s()Z
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->e()Lcom/google/android/gms/internal/oe;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/m;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/m;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.permission.INTERNET"

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/oe;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/m;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/m;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/af;->f:Lcom/google/android/gms/ads/internal/ag;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/m;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/af;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    const-string v4, "Missing internet permission in AndroidManifest.xml."

    const-string v5, "Missing internet permission in AndroidManifest.xml. You must have the following declaration: <uses-permission android:name=\"android.permission.INTERNET\" />"

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/ads/internal/util/client/a;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->e()Lcom/google/android/gms/internal/oe;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/m;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/oe;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/m;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/m;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/af;->f:Lcom/google/android/gms/ads/internal/ag;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/m;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/af;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    const-string v4, "Missing AdActivity with android:configChanges in AndroidManifest.xml."

    const-string v5, "Missing AdActivity with android:configChanges in AndroidManifest.xml. You must have the following declaration within the <application> element: <activity android:name=\"com.google.android.gms.ads.AdActivity\" android:configChanges=\"keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize\" />"

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/ads/internal/util/client/a;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :cond_1
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/m;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/af;->f:Lcom/google/android/gms/ads/internal/ag;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/m;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/af;->f:Lcom/google/android/gms/ads/internal/ag;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/internal/ag;->setVisibility(I)V

    :cond_2
    return v0
.end method
