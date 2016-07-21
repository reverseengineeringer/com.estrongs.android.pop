.class public Lcom/google/android/gms/analytics/internal/am;
.super Lcom/google/android/gms/analytics/internal/z;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ws;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/ab;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/z;-><init>(Lcom/google/android/gms/analytics/internal/ab;)V

    new-instance v0, Lcom/google/android/gms/internal/ws;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ws;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/am;->a:Lcom/google/android/gms/internal/ws;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/am;->r()Lcom/google/android/gms/internal/wh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wh;->a()Lcom/google/android/gms/internal/ws;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/am;->a:Lcom/google/android/gms/internal/ws;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ws;->a(Lcom/google/android/gms/internal/ws;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/am;->b()V

    return-void
.end method

.method public b()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/am;->v()Lcom/google/android/gms/analytics/internal/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/s;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/am;->a:Lcom/google/android/gms/internal/ws;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ws;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/s;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/am;->a:Lcom/google/android/gms/internal/ws;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ws;->b(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c()Lcom/google/android/gms/internal/ws;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/am;->D()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/am;->a:Lcom/google/android/gms/internal/ws;

    return-object v0
.end method
