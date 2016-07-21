.class Lcom/google/android/gms/common/api/ar;
.super Lcom/google/android/gms/common/api/aw;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/aj;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/h;",
            "Lcom/google/android/gms/common/api/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/aj;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/h;",
            "Lcom/google/android/gms/common/api/u;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/api/ar;->a:Lcom/google/android/gms/common/api/aj;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/api/aw;-><init>(Lcom/google/android/gms/common/api/aj;Lcom/google/android/gms/common/api/ak;)V

    iput-object p2, p0, Lcom/google/android/gms/common/api/ar;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/ar;->a:Lcom/google/android/gms/common/api/aj;

    invoke-static {v0}, Lcom/google/android/gms/common/api/aj;->b(Lcom/google/android/gms/common/api/aj;)Lcom/google/android/gms/common/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/ar;->a:Lcom/google/android/gms/common/api/aj;

    invoke-static {v1}, Lcom/google/android/gms/common/api/aj;->a(Lcom/google/android/gms/common/api/aj;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/b;->a(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/ar;->a:Lcom/google/android/gms/common/api/aj;

    invoke-static {v0}, Lcom/google/android/gms/common/api/aj;->d(Lcom/google/android/gms/common/api/aj;)Lcom/google/android/gms/common/api/ay;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/common/api/as;

    iget-object v3, p0, Lcom/google/android/gms/common/api/ar;->a:Lcom/google/android/gms/common/api/aj;

    invoke-direct {v2, p0, v3, v1}, Lcom/google/android/gms/common/api/as;-><init>(Lcom/google/android/gms/common/api/ar;Lcom/google/android/gms/common/api/bi;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/ay;->a(Lcom/google/android/gms/common/api/be;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/ar;->a:Lcom/google/android/gms/common/api/aj;

    invoke-static {v0}, Lcom/google/android/gms/common/api/aj;->e(Lcom/google/android/gms/common/api/aj;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/ar;->a:Lcom/google/android/gms/common/api/aj;

    invoke-static {v0}, Lcom/google/android/gms/common/api/aj;->f(Lcom/google/android/gms/common/api/aj;)Lcom/google/android/gms/signin/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/signin/f;->g()V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/ar;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/h;

    iget-object v1, p0, Lcom/google/android/gms/common/api/ar;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/u;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/h;->a(Lcom/google/android/gms/common/api/u;)V

    goto :goto_0
.end method
