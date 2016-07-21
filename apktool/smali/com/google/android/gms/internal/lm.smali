.class public Lcom/google/android/gms/internal/lm;
.super Lcom/google/android/gms/internal/lc;


# annotations
.annotation runtime Lcom/google/android/gms/internal/me;
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/nh;Lcom/google/android/gms/internal/qa;Lcom/google/android/gms/internal/ll;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/lc;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/nh;Lcom/google/android/gms/internal/qa;Lcom/google/android/gms/internal/ll;)V

    return-void
.end method


# virtual methods
.method protected b(J)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/oe;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ln;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ln;-><init>(Lcom/google/android/gms/internal/lm;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/lm;->a(J)V

    return-void
.end method

.method protected c()V
    .locals 0

    return-void
.end method
