.class Lcom/google/android/gms/internal/rn;
.super Lcom/google/android/gms/internal/sb;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/rm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/rm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/rn;->a:Lcom/google/android/gms/internal/rm;

    invoke-direct {p0}, Lcom/google/android/gms/internal/sb;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/rm;->a()Lcom/google/android/gms/cast/internal/w;

    move-result-object v0

    const-string v1, "onRemoteDisplayEnded"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/w;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/rn;->a:Lcom/google/android/gms/internal/rm;

    invoke-static {v0}, Lcom/google/android/gms/internal/rm;->a(Lcom/google/android/gms/internal/rm;)V

    return-void
.end method
