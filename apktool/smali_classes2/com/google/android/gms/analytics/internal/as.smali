.class Lcom/google/android/gms/analytics/internal/as;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/internal/bf;

.field final synthetic b:J

.field final synthetic c:Lcom/google/android/gms/analytics/internal/an;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/an;Lcom/google/android/gms/analytics/internal/bf;J)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/as;->c:Lcom/google/android/gms/analytics/internal/an;

    iput-object p2, p0, Lcom/google/android/gms/analytics/internal/as;->a:Lcom/google/android/gms/analytics/internal/bf;

    iput-wide p3, p0, Lcom/google/android/gms/analytics/internal/as;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/as;->c:Lcom/google/android/gms/analytics/internal/an;

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/as;->a:Lcom/google/android/gms/analytics/internal/bf;

    iget-wide v2, p0, Lcom/google/android/gms/analytics/internal/as;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/analytics/internal/an;->a(Lcom/google/android/gms/analytics/internal/bf;J)V

    return-void
.end method
