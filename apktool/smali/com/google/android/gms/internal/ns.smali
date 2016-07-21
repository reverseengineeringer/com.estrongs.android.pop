.class public final Lcom/google/android/gms/internal/ns;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/me;
.end annotation


# direct methods
.method static synthetic a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/ns;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;I)Ljava/util/concurrent/Future;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/nv;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/nv;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nv;->g()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/ny;)Ljava/util/concurrent/Future;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/nu;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/nu;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ny;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nu;->g()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Z)Ljava/util/concurrent/Future;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/nt;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/nt;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nt;->g()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "admob"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Lcom/google/android/gms/internal/ny;)Ljava/util/concurrent/Future;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/nw;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/nw;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ny;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nw;->g()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
