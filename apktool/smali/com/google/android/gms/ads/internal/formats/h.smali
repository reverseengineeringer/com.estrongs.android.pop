.class public Lcom/google/android/gms/ads/internal/formats/h;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/me;
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lcom/google/android/gms/ads/internal/w;

.field private final c:Landroid/content/Context;

.field private final d:Lorg/json/JSONObject;

.field private final e:Lcom/google/android/gms/internal/bh;

.field private final f:Lcom/google/android/gms/ads/internal/formats/o;

.field private final g:Lcom/google/android/gms/internal/aj;

.field private final h:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private i:Z

.field private j:Lcom/google/android/gms/internal/qa;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/w;Lcom/google/android/gms/internal/bh;Lcom/google/android/gms/internal/aj;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/o;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/formats/h;->a:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/h;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/formats/h;->b:Lcom/google/android/gms/ads/internal/w;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/formats/h;->e:Lcom/google/android/gms/internal/bh;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/formats/h;->g:Lcom/google/android/gms/internal/aj;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/formats/h;->d:Lorg/json/JSONObject;

    iput-object p6, p0, Lcom/google/android/gms/ads/internal/formats/h;->f:Lcom/google/android/gms/ads/internal/formats/o;

    iput-object p7, p0, Lcom/google/android/gms/ads/internal/formats/h;->h:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/ads/internal/formats/h;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/h;->k:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/gms/ads/internal/formats/h;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/h;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/ads/internal/formats/h;)Lcom/google/android/gms/internal/bh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/h;->e:Lcom/google/android/gms/internal/bh;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/ads/internal/formats/h;)Lcom/google/android/gms/internal/qa;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/h;->j:Lcom/google/android/gms/internal/qa;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View$OnClickListener;)Lcom/google/android/gms/ads/internal/formats/b;
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/h;->f:Lcom/google/android/gms/ads/internal/formats/o;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/formats/o;->l()Lcom/google/android/gms/ads/internal/formats/a;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/internal/formats/b;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/h;->c:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/ads/internal/formats/b;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/formats/a;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/formats/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/formats/b;->a()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/formats/b;->a()Landroid/view/ViewGroup;

    move-result-object v1

    const-string v2, "Ad attribution icon"

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a()V
    .locals 1

    const-string v0, "recordImpression must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/bn;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/formats/h;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/h;->b:Lcom/google/android/gms/ads/internal/w;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/w;->i()V

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/h;->g:Lcom/google/android/gms/internal/aj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aj;->a(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "performClick must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/bn;->b(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/formats/h;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    const-string v0, "performClick must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/bn;->b(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "asset"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "template"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/h;->f:Lcom/google/android/gms/ads/internal/formats/o;

    invoke-interface {v2}, Lcom/google/android/gms/ads/internal/formats/o;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "ad"

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/formats/h;->d:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "click"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "has_custom_click_handler"

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/h;->b:Lcom/google/android/gms/ads/internal/w;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/formats/h;->f:Lcom/google/android/gms/ads/internal/formats/o;

    invoke-interface {v3}, Lcom/google/android/gms/ads/internal/formats/o;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/ads/internal/w;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/es;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/h;->e:Lcom/google/android/gms/internal/bh;

    const-string v2, "google.afma.nativeAds.handleClickGmsg"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/bh;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Unable to create click JSON."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/formats/h;->i:Z

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/h;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/formats/h;->i:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v0

    if-nez v0, :cond_2

    monitor-exit v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/formats/h;->a()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public c()Lcom/google/android/gms/internal/qa;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/formats/h;->d()Lcom/google/android/gms/internal/qa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/formats/h;->j:Lcom/google/android/gms/internal/qa;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/h;->j:Lcom/google/android/gms/internal/qa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/qa;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/h;->e:Lcom/google/android/gms/internal/bh;

    const-string v1, "/loadHtml"

    new-instance v2, Lcom/google/android/gms/ads/internal/formats/i;

    invoke-direct {v2, p0}, Lcom/google/android/gms/ads/internal/formats/i;-><init>(Lcom/google/android/gms/ads/internal/formats/h;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/bh;->a(Ljava/lang/String;Lcom/google/android/gms/internal/fq;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/h;->e:Lcom/google/android/gms/internal/bh;

    const-string v1, "/showOverlay"

    new-instance v2, Lcom/google/android/gms/ads/internal/formats/k;

    invoke-direct {v2, p0}, Lcom/google/android/gms/ads/internal/formats/k;-><init>(Lcom/google/android/gms/ads/internal/formats/h;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/bh;->a(Ljava/lang/String;Lcom/google/android/gms/internal/fq;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/h;->e:Lcom/google/android/gms/internal/bh;

    const-string v1, "/hideOverlay"

    new-instance v2, Lcom/google/android/gms/ads/internal/formats/l;

    invoke-direct {v2, p0}, Lcom/google/android/gms/ads/internal/formats/l;-><init>(Lcom/google/android/gms/ads/internal/formats/h;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/bh;->a(Ljava/lang/String;Lcom/google/android/gms/internal/fq;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/h;->j:Lcom/google/android/gms/internal/qa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/qa;->i()Lcom/google/android/gms/internal/qb;

    move-result-object v0

    const-string v1, "/hideOverlay"

    new-instance v2, Lcom/google/android/gms/ads/internal/formats/m;

    invoke-direct {v2, p0}, Lcom/google/android/gms/ads/internal/formats/m;-><init>(Lcom/google/android/gms/ads/internal/formats/h;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/qb;->a(Ljava/lang/String;Lcom/google/android/gms/internal/fq;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/h;->j:Lcom/google/android/gms/internal/qa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/qa;->i()Lcom/google/android/gms/internal/qb;

    move-result-object v0

    const-string v1, "/sendMessageToSdk"

    new-instance v2, Lcom/google/android/gms/ads/internal/formats/n;

    invoke-direct {v2, p0}, Lcom/google/android/gms/ads/internal/formats/n;-><init>(Lcom/google/android/gms/ads/internal/formats/h;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/qb;->a(Ljava/lang/String;Lcom/google/android/gms/internal/fq;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/h;->j:Lcom/google/android/gms/internal/qa;

    return-object v0
.end method

.method d()Lcom/google/android/gms/internal/qa;
    .locals 7

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->f()Lcom/google/android/gms/internal/qh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/h;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/h;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/formats/h;->g:Lcom/google/android/gms/internal/aj;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/formats/h;->h:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/qh;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/aj;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/internal/qa;

    move-result-object v0

    return-object v0
.end method
