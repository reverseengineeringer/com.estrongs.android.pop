.class public final Lcom/google/android/gms/internal/xr;
.super Ljava/lang/Object;


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/xt;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/xt;->a(Lcom/google/android/gms/internal/xt;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/xr;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/xt;->b(Lcom/google/android/gms/internal/xt;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/xr;->a:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/xt;->c(Lcom/google/android/gms/internal/xt;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/xr;->b:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/xt;->d(Lcom/google/android/gms/internal/xt;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/xr;->c:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/xt;Lcom/google/android/gms/internal/xs;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/xr;-><init>(Lcom/google/android/gms/internal/xt;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/xr;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/xr;->a:Z

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/xr;->b:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/xr;->c:Ljava/lang/String;

    return-object v0
.end method
