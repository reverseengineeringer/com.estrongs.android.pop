.class public final Lcom/google/android/gms/internal/rr;
.super Lcom/google/android/gms/internal/rp;


# instance fields
.field final synthetic b:Lcom/google/android/gms/internal/rq;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/rq;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/rr;->b:Lcom/google/android/gms/internal/rq;

    iget-object v0, p1, Lcom/google/android/gms/internal/rq;->b:Lcom/google/android/gms/internal/rm;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/rp;-><init>(Lcom/google/android/gms/internal/rm;Lcom/google/android/gms/internal/rn;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/rm;->a()Lcom/google/android/gms/cast/internal/w;

    move-result-object v0

    const-string v1, "onDisconnected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/w;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/rr;->b:Lcom/google/android/gms/internal/rq;

    iget-object v0, v0, Lcom/google/android/gms/internal/rq;->b:Lcom/google/android/gms/internal/rm;

    invoke-static {v0}, Lcom/google/android/gms/internal/rm;->a(Lcom/google/android/gms/internal/rm;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/rr;->b:Lcom/google/android/gms/internal/rq;

    new-instance v1, Lcom/google/android/gms/internal/rs;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/rs;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/rq;->a(Lcom/google/android/gms/common/api/z;)V

    return-void
.end method

.method public a(I)V
    .locals 5

    invoke-static {}, Lcom/google/android/gms/internal/rm;->a()Lcom/google/android/gms/cast/internal/w;

    move-result-object v0

    const-string v1, "onError: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/w;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/rr;->b:Lcom/google/android/gms/internal/rq;

    iget-object v0, v0, Lcom/google/android/gms/internal/rq;->b:Lcom/google/android/gms/internal/rm;

    invoke-static {v0}, Lcom/google/android/gms/internal/rm;->a(Lcom/google/android/gms/internal/rm;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/rr;->b:Lcom/google/android/gms/internal/rq;

    new-instance v1, Lcom/google/android/gms/internal/rs;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->c:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/rs;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/rq;->a(Lcom/google/android/gms/common/api/z;)V

    return-void
.end method
