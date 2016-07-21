.class Lcom/google/android/gms/common/api/am;
.super Lcom/google/android/gms/common/api/be;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/aj;

.field final synthetic b:Lcom/google/android/gms/common/ConnectionResult;

.field final synthetic c:Lcom/google/android/gms/common/api/al;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/al;Lcom/google/android/gms/common/api/bi;Lcom/google/android/gms/common/api/aj;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/am;->c:Lcom/google/android/gms/common/api/al;

    iput-object p3, p0, Lcom/google/android/gms/common/api/am;->a:Lcom/google/android/gms/common/api/aj;

    iput-object p4, p0, Lcom/google/android/gms/common/api/am;->b:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/be;-><init>(Lcom/google/android/gms/common/api/bi;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/am;->a:Lcom/google/android/gms/common/api/aj;

    iget-object v1, p0, Lcom/google/android/gms/common/api/am;->b:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/aj;->c(Lcom/google/android/gms/common/api/aj;Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
