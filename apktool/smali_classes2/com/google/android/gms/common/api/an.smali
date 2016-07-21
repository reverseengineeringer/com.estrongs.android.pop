.class Lcom/google/android/gms/common/api/an;
.super Lcom/google/android/gms/common/internal/bf;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/common/api/aj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/aj;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/bf;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/an;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/internal/ResolveAccountResponse;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/an;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/aj;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/common/api/aj;->d(Lcom/google/android/gms/common/api/aj;)Lcom/google/android/gms/common/api/ay;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/api/ao;

    invoke-direct {v2, p0, v0, v0, p1}, Lcom/google/android/gms/common/api/ao;-><init>(Lcom/google/android/gms/common/api/an;Lcom/google/android/gms/common/api/bi;Lcom/google/android/gms/common/api/aj;Lcom/google/android/gms/common/internal/ResolveAccountResponse;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/ay;->a(Lcom/google/android/gms/common/api/be;)V

    goto :goto_0
.end method
