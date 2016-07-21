.class Lcom/google/android/gms/internal/qf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/p;


# instance fields
.field private a:Lcom/google/android/gms/internal/qa;

.field private b:Lcom/google/android/gms/ads/internal/overlay/p;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/qa;Lcom/google/android/gms/ads/internal/overlay/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/qf;->a:Lcom/google/android/gms/internal/qa;

    iput-object p2, p0, Lcom/google/android/gms/internal/qf;->b:Lcom/google/android/gms/ads/internal/overlay/p;

    return-void
.end method


# virtual methods
.method public q_()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/qf;->b:Lcom/google/android/gms/ads/internal/overlay/p;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/p;->q_()V

    iget-object v0, p0, Lcom/google/android/gms/internal/qf;->a:Lcom/google/android/gms/internal/qa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/qa;->a()V

    return-void
.end method

.method public r_()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/qf;->b:Lcom/google/android/gms/ads/internal/overlay/p;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/p;->r_()V

    iget-object v0, p0, Lcom/google/android/gms/internal/qf;->a:Lcom/google/android/gms/internal/qa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/qa;->b()V

    return-void
.end method
