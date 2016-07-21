.class public Lcom/google/android/gms/analytics/internal/t;
.super Lcom/google/android/gms/analytics/internal/z;


# instance fields
.field private final a:Lcom/google/android/gms/analytics/internal/an;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/analytics/internal/ab;Lcom/google/android/gms/analytics/internal/ad;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/z;-><init>(Lcom/google/android/gms/analytics/internal/ab;)V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/bn;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/analytics/internal/ad;->j(Lcom/google/android/gms/analytics/internal/ab;)Lcom/google/android/gms/analytics/internal/an;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/t;->a:Lcom/google/android/gms/analytics/internal/an;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/internal/t;)Lcom/google/android/gms/analytics/internal/an;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/t;->a:Lcom/google/android/gms/analytics/internal/an;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/analytics/internal/ae;)J
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/t;->D()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/bn;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/t;->m()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/t;->a:Lcom/google/android/gms/analytics/internal/an;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/analytics/internal/an;->a(Lcom/google/android/gms/analytics/internal/ae;Z)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/t;->a:Lcom/google/android/gms/analytics/internal/an;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/analytics/internal/an;->a(Lcom/google/android/gms/analytics/internal/ae;)V

    :cond_0
    return-wide v0
.end method

.method protected a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/t;->a:Lcom/google/android/gms/analytics/internal/an;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/an;->E()V

    return-void
.end method

.method public a(Lcom/google/android/gms/analytics/internal/bf;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/t;->D()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/t;->r()Lcom/google/android/gms/internal/wh;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/x;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/analytics/internal/x;-><init>(Lcom/google/android/gms/analytics/internal/t;Lcom/google/android/gms/analytics/internal/bf;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/wh;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/analytics/internal/d;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/common/internal/bn;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/t;->D()V

    const-string v0, "Hit delivery requested"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/internal/t;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/t;->r()Lcom/google/android/gms/internal/wh;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/w;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/analytics/internal/w;-><init>(Lcom/google/android/gms/analytics/internal/t;Lcom/google/android/gms/analytics/internal/d;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/wh;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "campaign param can\'t be empty"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/bn;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/t;->r()Lcom/google/android/gms/internal/wh;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/v;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/analytics/internal/v;-><init>(Lcom/google/android/gms/analytics/internal/t;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/wh;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    const-string v0, "Network connectivity status changed"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/internal/t;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/t;->r()Lcom/google/android/gms/internal/wh;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/u;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/analytics/internal/u;-><init>(Lcom/google/android/gms/analytics/internal/t;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/wh;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/t;->a:Lcom/google/android/gms/analytics/internal/an;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/an;->b()V

    return-void
.end method

.method public c()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/t;->D()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/t;->o()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/AnalyticsReceiver;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/analytics/AnalyticsService;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/gms/analytics/AnalyticsService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/t;->a(Lcom/google/android/gms/analytics/internal/bf;)V

    goto :goto_0
.end method

.method public d()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/t;->D()V

    invoke-static {}, Lcom/google/android/gms/internal/wh;->d()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/t;->a:Lcom/google/android/gms/analytics/internal/an;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/an;->f()V

    return-void
.end method

.method public e()V
    .locals 1

    const-string v0, "Radio powered up"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/t;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/t;->c()V

    return-void
.end method

.method f()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/t;->m()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/t;->a:Lcom/google/android/gms/analytics/internal/an;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/an;->e()V

    return-void
.end method

.method g()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/t;->m()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/t;->a:Lcom/google/android/gms/analytics/internal/an;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/an;->d()V

    return-void
.end method
