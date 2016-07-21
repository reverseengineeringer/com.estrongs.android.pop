.class final Lcom/google/android/gms/cast/ay;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/aa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/aa",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/cast/ax;

.field private final b:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/ax;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/ay;->a:Lcom/google/android/gms/cast/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/google/android/gms/cast/ay;->b:J

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/ay;->a:Lcom/google/android/gms/cast/ax;

    iget-object v0, v0, Lcom/google/android/gms/cast/ax;->a:Lcom/google/android/gms/cast/ak;

    invoke-static {v0}, Lcom/google/android/gms/cast/ak;->g(Lcom/google/android/gms/cast/ak;)Lcom/google/android/gms/cast/internal/x;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/cast/ay;->b:J

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->f()I

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/cast/internal/x;->a(JI)V

    :cond_0
    return-void
.end method

.method public synthetic onResult(Lcom/google/android/gms/common/api/z;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/ay;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
