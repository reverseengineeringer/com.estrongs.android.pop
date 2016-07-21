.class Lcom/google/android/gms/internal/xq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/wr;


# instance fields
.field private final a:Lcom/google/android/gms/analytics/k;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/xq;->a:Lcom/google/android/gms/analytics/k;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/wy;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/xq;->a:Lcom/google/android/gms/analytics/k;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/wy;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/k;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/analytics/i;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/i;-><init>()V

    const-string v1, "&a"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/wy;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/analytics/i;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/h;

    iget-object v1, p0, Lcom/google/android/gms/internal/xq;->a:Lcom/google/android/gms/analytics/k;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/i;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/k;->a(Ljava/util/Map;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/wy;Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
