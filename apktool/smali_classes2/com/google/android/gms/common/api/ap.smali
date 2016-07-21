.class Lcom/google/android/gms/common/api/ap;
.super Lcom/google/android/gms/common/api/aw;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/aj;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/aj;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/common/api/ap;->a:Lcom/google/android/gms/common/api/aj;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/api/aw;-><init>(Lcom/google/android/gms/common/api/aj;Lcom/google/android/gms/common/api/ak;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/aj;Lcom/google/android/gms/common/api/ak;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/ap;-><init>(Lcom/google/android/gms/common/api/aj;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/common/api/ap;->a:Lcom/google/android/gms/common/api/aj;

    invoke-static {v0}, Lcom/google/android/gms/common/api/aj;->f(Lcom/google/android/gms/common/api/aj;)Lcom/google/android/gms/signin/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/ap;->a:Lcom/google/android/gms/common/api/aj;

    invoke-static {v1}, Lcom/google/android/gms/common/api/aj;->g(Lcom/google/android/gms/common/api/aj;)Lcom/google/android/gms/common/internal/au;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/ap;->a:Lcom/google/android/gms/common/api/aj;

    invoke-static {v2}, Lcom/google/android/gms/common/api/aj;->d(Lcom/google/android/gms/common/api/aj;)Lcom/google/android/gms/common/api/ay;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/common/api/ay;->f:Ljava/util/Set;

    new-instance v3, Lcom/google/android/gms/common/api/al;

    iget-object v4, p0, Lcom/google/android/gms/common/api/ap;->a:Lcom/google/android/gms/common/api/aj;

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/al;-><init>(Lcom/google/android/gms/common/api/aj;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/signin/f;->a(Lcom/google/android/gms/common/internal/au;Ljava/util/Set;Lcom/google/android/gms/signin/internal/f;)V

    return-void
.end method
