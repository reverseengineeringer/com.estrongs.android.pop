.class final Lcom/google/android/gms/internal/mk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

.field final synthetic c:Lcom/google/android/gms/internal/mq;

.field final synthetic d:Lcom/google/android/gms/internal/dh;

.field final synthetic e:Lcom/google/android/gms/internal/dg;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/google/android/gms/internal/co;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/internal/mq;Lcom/google/android/gms/internal/dh;Lcom/google/android/gms/internal/dg;Ljava/lang/String;Lcom/google/android/gms/internal/co;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mk;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/mk;->b:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/mk;->c:Lcom/google/android/gms/internal/mq;

    iput-object p4, p0, Lcom/google/android/gms/internal/mk;->d:Lcom/google/android/gms/internal/dh;

    iput-object p5, p0, Lcom/google/android/gms/internal/mk;->e:Lcom/google/android/gms/internal/dg;

    iput-object p6, p0, Lcom/google/android/gms/internal/mk;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/mk;->g:Lcom/google/android/gms/internal/co;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->f()Lcom/google/android/gms/internal/qh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mk;->a:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-direct {v2}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>()V

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/mk;->b:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v6, v4, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->l:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/qh;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/aj;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/internal/qa;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->h()Lcom/google/android/gms/internal/nk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/nk;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/qa;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/webkit/WebView;->clearCache(Z)V

    :cond_0
    invoke-interface {v0, v7}, Lcom/google/android/gms/internal/qa;->setWillNotDraw(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mk;->c:Lcom/google/android/gms/internal/mq;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mq;->a(Lcom/google/android/gms/internal/qa;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mk;->d:Lcom/google/android/gms/internal/dh;

    iget-object v2, p0, Lcom/google/android/gms/internal/mk;->e:Lcom/google/android/gms/internal/dg;

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "rwc"

    aput-object v5, v4, v3

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/dh;->a(Lcom/google/android/gms/internal/dg;[Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/mk;->d:Lcom/google/android/gms/internal/dh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/dh;->a()Lcom/google/android/gms/internal/dg;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/mk;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/mk;->d:Lcom/google/android/gms/internal/dh;

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/mg;->a(Ljava/lang/String;Lcom/google/android/gms/internal/dh;Lcom/google/android/gms/internal/dg;)Lcom/google/android/gms/internal/qd;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/qa;->i()Lcom/google/android/gms/internal/qb;

    move-result-object v2

    const-string v3, "/invalidRequest"

    iget-object v4, p0, Lcom/google/android/gms/internal/mk;->c:Lcom/google/android/gms/internal/mq;

    iget-object v4, v4, Lcom/google/android/gms/internal/mq;->c:Lcom/google/android/gms/internal/fq;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/qb;->a(Ljava/lang/String;Lcom/google/android/gms/internal/fq;)V

    const-string v3, "/loadAdURL"

    iget-object v4, p0, Lcom/google/android/gms/internal/mk;->c:Lcom/google/android/gms/internal/mq;

    iget-object v4, v4, Lcom/google/android/gms/internal/mq;->d:Lcom/google/android/gms/internal/fq;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/qb;->a(Ljava/lang/String;Lcom/google/android/gms/internal/fq;)V

    const-string v3, "/log"

    sget-object v4, Lcom/google/android/gms/internal/ff;->h:Lcom/google/android/gms/internal/fq;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/qb;->a(Ljava/lang/String;Lcom/google/android/gms/internal/fq;)V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/qb;->a(Lcom/google/android/gms/internal/qd;)V

    const-string v1, "Loading the JS library."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/b;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mk;->g:Lcom/google/android/gms/internal/co;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/co;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/qa;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
