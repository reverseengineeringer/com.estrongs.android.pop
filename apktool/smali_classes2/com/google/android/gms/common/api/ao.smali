.class Lcom/google/android/gms/common/api/ao;
.super Lcom/google/android/gms/common/api/be;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/aj;

.field final synthetic b:Lcom/google/android/gms/common/internal/ResolveAccountResponse;

.field final synthetic c:Lcom/google/android/gms/common/api/an;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/an;Lcom/google/android/gms/common/api/bi;Lcom/google/android/gms/common/api/aj;Lcom/google/android/gms/common/internal/ResolveAccountResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/ao;->c:Lcom/google/android/gms/common/api/an;

    iput-object p3, p0, Lcom/google/android/gms/common/api/ao;->a:Lcom/google/android/gms/common/api/aj;

    iput-object p4, p0, Lcom/google/android/gms/common/api/ao;->b:Lcom/google/android/gms/common/internal/ResolveAccountResponse;

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/be;-><init>(Lcom/google/android/gms/common/api/bi;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/ao;->a:Lcom/google/android/gms/common/api/aj;

    iget-object v1, p0, Lcom/google/android/gms/common/api/ao;->b:Lcom/google/android/gms/common/internal/ResolveAccountResponse;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/aj;->a(Lcom/google/android/gms/common/api/aj;Lcom/google/android/gms/common/internal/ResolveAccountResponse;)V

    return-void
.end method
