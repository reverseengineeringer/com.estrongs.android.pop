.class public Lcom/google/android/gms/ads/internal/t;
.super Lcom/google/android/gms/ads/internal/d;

# interfaces
.implements Lcom/google/android/gms/internal/ga;


# annotations
.annotation runtime Lcom/google/android/gms/internal/me;
.end annotation


# instance fields
.field protected transient i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/if;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/i;)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/ads/internal/d;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/if;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/i;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/t;->i:Z

    return-void
.end method

.method private B()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->c:Lcom/google/android/gms/ads/internal/af;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/af;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->c:Lcom/google/android/gms/ads/internal/af;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/af;->b()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->c:Lcom/google/android/gms/ads/internal/af;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->c:Lcom/google/android/gms/ads/internal/af;

    iput-boolean v2, v0, Lcom/google/android/gms/ads/internal/af;->E:Z

    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/t;->i:Z

    :cond_0
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 6

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->e()Lcom/google/android/gms/internal/oe;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/t;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/t;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/af;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->c:Ljava/lang/String;

    const-string v3, "gmob-apps"

    const/4 v5, 0x0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/oe;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method


# virtual methods
.method protected A()Z
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_2

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_2

    iget v0, v2, Landroid/graphics/Rect;->top:I

    iget v2, v3, Landroid/graphics/Rect;->top:I

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method protected a(Lcom/google/android/gms/internal/nh;Lcom/google/android/gms/ads/internal/j;)Lcom/google/android/gms/internal/qa;
    .locals 12

    const/4 v11, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->f()Lcom/google/android/gms/internal/qh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/t;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/t;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/af;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/t;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v5, v4, Lcom/google/android/gms/ads/internal/af;->d:Lcom/google/android/gms/internal/aj;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/t;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v6, v4, Lcom/google/android/gms/ads/internal/af;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/i;

    move v4, v3

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/qh;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/aj;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/i;)Lcom/google/android/gms/internal/qa;

    move-result-object v10

    invoke-interface {v10}, Lcom/google/android/gms/internal/qa;->i()Lcom/google/android/gms/internal/qb;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/cz;->S:Lcom/google/android/gms/internal/cr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/cr;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v1, p0

    move-object v2, v11

    move-object v3, p0

    move-object v4, p0

    move-object v6, p0

    move-object v7, p0

    move-object v8, p2

    move-object v9, v11

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/internal/qb;->a(Lcom/google/android/gms/ads/internal/client/a;Lcom/google/android/gms/ads/internal/overlay/p;Lcom/google/android/gms/internal/fd;Lcom/google/android/gms/ads/internal/overlay/w;ZLcom/google/android/gms/internal/fy;Lcom/google/android/gms/internal/ga;Lcom/google/android/gms/ads/internal/j;Lcom/google/android/gms/internal/js;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/nh;->a:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->A:Ljava/lang/String;

    invoke-interface {v10, v0}, Lcom/google/android/gms/internal/qa;->b(Ljava/lang/String;)V

    return-object v10
.end method

.method public a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/dh;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    if-eqz v0, :cond_0

    const-string v0, "An interstitial is already loading. Aborting."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/d;->a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/dh;)Z

    move-result v0

    goto :goto_0
.end method

.method protected a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/ng;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->c:Lcom/google/android/gms/ads/internal/af;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/af;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/google/android/gms/internal/ng;->b:Lcom/google/android/gms/internal/qa;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->g()Lcom/google/android/gms/internal/oh;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/ng;->b:Lcom/google/android/gms/internal/qa;

    invoke-interface {v1}, Lcom/google/android/gms/internal/qa;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/oh;->a(Landroid/webkit/WebView;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->b:Lcom/google/android/gms/ads/internal/ab;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/ab;->d()Z

    move-result v0

    return v0
.end method

.method public a(Lcom/google/android/gms/internal/ng;Lcom/google/android/gms/internal/ng;)Z
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/d;->a(Lcom/google/android/gms/internal/ng;Lcom/google/android/gms/internal/ng;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->c:Lcom/google/android/gms/ads/internal/af;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/af;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->B:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/google/android/gms/internal/ng;->j:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->e:Lcom/google/android/gms/internal/at;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/t;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/t;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/af;->B:Landroid/view/View;

    invoke-virtual {v0, v1, p2, v2}, Lcom/google/android/gms/internal/at;->a(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/ng;Landroid/view/View;)Lcom/google/android/gms/internal/au;

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->c:Lcom/google/android/gms/ads/internal/af;

    iput-boolean p1, v0, Lcom/google/android/gms/ads/internal/af;->E:Z

    return-void
.end method

.method public g()V
    .locals 9

    const-string v0, "showInterstitial must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/bn;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    if-nez v0, :cond_1

    const-string v0, "The interstitial has not loaded."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/cz;->ae:Lcom/google/android/gms/internal/cr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cr;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/t;->i:Z

    if-nez v1, :cond_2

    const-string v1, "It is not recommended to show an interstitial before onAdLoaded completes."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/b;->e(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "appid"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "action"

    const-string v3, "show_interstitial_before_load_finish"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/t;->a(Landroid/os/Bundle;)V

    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->e()Lcom/google/android/gms/internal/oe;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/t;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/oe;->g(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "It is not recommended to show an interstitial when app is not in foreground."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/b;->e(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "appid"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "action"

    const-string v2, "show_interstitial_app_not_in_foreground"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/t;->a(Landroid/os/Bundle;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->c:Lcom/google/android/gms/ads/internal/af;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/af;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ng;->k:Z

    if-eqz v0, :cond_5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v0, v0, Lcom/google/android/gms/internal/ng;->m:Lcom/google/android/gms/internal/ii;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ii;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not show interstitial."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/t;->B()V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v0, v0, Lcom/google/android/gms/internal/ng;->b:Lcom/google/android/gms/internal/qa;

    if-nez v0, :cond_6

    const-string v0, "The interstitial failed to load."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v0, v0, Lcom/google/android/gms/internal/ng;->b:Lcom/google/android/gms/internal/qa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/qa;->m()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "The interstitial is already showing."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v0, v0, Lcom/google/android/gms/internal/ng;->b:Lcom/google/android/gms/internal/qa;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/qa;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v0, v0, Lcom/google/android/gms/internal/ng;->j:Lorg/json/JSONObject;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->e:Lcom/google/android/gms/internal/at;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/t;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/t;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/at;->a(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/ng;)Lcom/google/android/gms/internal/au;

    :cond_8
    new-instance v8, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->c:Lcom/google/android/gms/ads/internal/af;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/af;->E:Z

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/t;->A()Z

    move-result v1

    invoke-direct {v8, v0, v1}, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;-><init>(ZZ)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v0, v0, Lcom/google/android/gms/internal/ng;->b:Lcom/google/android/gms/internal/qa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/qa;->getRequestedOrientation()I

    move-result v5

    const/4 v0, -0x1

    if-ne v5, v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget v5, v0, Lcom/google/android/gms/internal/ng;->g:I

    :cond_9
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/t;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v4, v1, Lcom/google/android/gms/internal/ng;->b:Lcom/google/android/gms/internal/qa;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/t;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v6, v1, Lcom/google/android/gms/ads/internal/af;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/t;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v7, v1, Lcom/google/android/gms/internal/ng;->v:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/client/a;Lcom/google/android/gms/ads/internal/overlay/p;Lcom/google/android/gms/ads/internal/overlay/w;Lcom/google/android/gms/internal/qa;ILcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->c()Lcom/google/android/gms/ads/internal/overlay/n;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/t;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/ads/internal/overlay/n;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    goto/16 :goto_0
.end method

.method protected q()Z
    .locals 2

    const/4 v0, 0x1

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/d;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/t;->i:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q_()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/t;->B()V

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/d;->q_()V

    return-void
.end method

.method public r_()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/t;->r()V

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/d;->r_()V

    return-void
.end method
