.class public final Lcom/google/android/gms/internal/di;
.super Lcom/google/android/gms/internal/dl;


# annotations
.annotation runtime Lcom/google/android/gms/internal/me;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/internal/o;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/o;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/dl;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/ads/internal/o;

    iput-object p2, p0, Lcom/google/android/gms/internal/di;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/di;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/di;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/google/android/gms/dynamic/e;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/ads/internal/o;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/h;->a(Lcom/google/android/gms/dynamic/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/o;->b(Landroid/view/View;)V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/di;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/ads/internal/o;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/o;->y()V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/ads/internal/o;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/o;->r()V

    return-void
.end method
