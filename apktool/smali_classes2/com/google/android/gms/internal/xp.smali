.class Lcom/google/android/gms/internal/xp;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/internal/xr;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/a;Lcom/google/android/gms/internal/xr;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/xp;->b:Landroid/content/Context;

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/xp;->a(Lcom/google/android/gms/tagmanager/a;Lcom/google/android/gms/internal/xr;)Lcom/google/android/gms/internal/xr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/xp;->a:Lcom/google/android/gms/internal/xr;

    invoke-direct {p0}, Lcom/google/android/gms/internal/xp;->b()V

    return-void
.end method

.method static a(Lcom/google/android/gms/tagmanager/a;Lcom/google/android/gms/internal/xr;)Lcom/google/android/gms/internal/xr;
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/xt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/xr;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/xt;-><init>(Ljava/lang/String;)V

    const-string v1, "trackingId"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/tagmanager/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/xt;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/xt;

    move-result-object v1

    const-string v2, "trackScreenViews"

    invoke-virtual {p0, v2}, Lcom/google/android/gms/tagmanager/a;->a(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/xt;->a(Z)Lcom/google/android/gms/internal/xt;

    move-result-object v1

    const-string v2, "collectAdIdentifiers"

    invoke-virtual {p0, v2}, Lcom/google/android/gms/tagmanager/a;->a(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/xt;->b(Z)Lcom/google/android/gms/internal/xt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xt;->a()Lcom/google/android/gms/internal/xr;

    move-result-object p1

    goto :goto_0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/xp;->a:Lcom/google/android/gms/internal/xr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xr;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/xp;->a:Lcom/google/android/gms/internal/xr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xr;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/xp;->a:Lcom/google/android/gms/internal/xr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xr;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/xp;->a(Ljava/lang/String;)Lcom/google/android/gms/analytics/k;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/xp;->a:Lcom/google/android/gms/internal/xr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/xr;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/k;->a(Z)V

    new-instance v1, Lcom/google/android/gms/internal/xq;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/xq;-><init>(Lcom/google/android/gms/analytics/k;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/xp;->a(Lcom/google/android/gms/internal/wr;)V

    :cond_0
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Lcom/google/android/gms/analytics/k;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/xp;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/analytics/f;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/f;->a(Ljava/lang/String;)Lcom/google/android/gms/analytics/k;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/google/android/gms/internal/xr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/xp;->a:Lcom/google/android/gms/internal/xr;

    return-object v0
.end method

.method a(Lcom/google/android/gms/internal/wr;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/common/internal/bn;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/xp;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/wq;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/wq;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/wq;->a(Z)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/wq;->a(Lcom/google/android/gms/internal/wr;)V

    return-void
.end method
