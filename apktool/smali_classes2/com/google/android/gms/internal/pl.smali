.class public Lcom/google/android/gms/internal/pl;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/google/android/gms/internal/po;Lcom/google/android/gms/internal/pn;)Lcom/google/android/gms/internal/po;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/po",
            "<TA;>;",
            "Lcom/google/android/gms/internal/pn",
            "<TA;TB;>;)",
            "Lcom/google/android/gms/internal/po",
            "<TB;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/pj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/pj;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/pm;

    invoke-direct {v1, v0, p1, p0}, Lcom/google/android/gms/internal/pm;-><init>(Lcom/google/android/gms/internal/pj;Lcom/google/android/gms/internal/pn;Lcom/google/android/gms/internal/po;)V

    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/po;->a(Ljava/lang/Runnable;)V

    return-object v0
.end method
