.class final Lcom/google/ads/mediation/f;
.super Lcom/google/android/gms/ads/a;

# interfaces
.implements Lcom/google/android/gms/ads/formats/g;
.implements Lcom/google/android/gms/ads/formats/i;
.implements Lcom/google/android/gms/ads/internal/client/a;


# instance fields
.field final a:Lcom/google/ads/mediation/a;

.field final b:Lcom/google/android/gms/ads/a/l;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/a;Lcom/google/android/gms/ads/a/l;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/a;-><init>()V

    iput-object p1, p0, Lcom/google/ads/mediation/f;->a:Lcom/google/ads/mediation/a;

    iput-object p2, p0, Lcom/google/ads/mediation/f;->b:Lcom/google/android/gms/ads/a/l;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/f;->b:Lcom/google/android/gms/ads/a/l;

    iget-object v1, p0, Lcom/google/ads/mediation/f;->a:Lcom/google/ads/mediation/a;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/a/l;->d(Lcom/google/android/gms/ads/a/k;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/ads/formats/f;)V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/mediation/f;->b:Lcom/google/android/gms/ads/a/l;

    iget-object v1, p0, Lcom/google/ads/mediation/f;->a:Lcom/google/ads/mediation/a;

    new-instance v2, Lcom/google/ads/mediation/b;

    invoke-direct {v2, p1}, Lcom/google/ads/mediation/b;-><init>(Lcom/google/android/gms/ads/formats/f;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/a/l;->a(Lcom/google/android/gms/ads/a/k;Lcom/google/android/gms/ads/a/g;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/ads/formats/h;)V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/mediation/f;->b:Lcom/google/android/gms/ads/a/l;

    iget-object v1, p0, Lcom/google/ads/mediation/f;->a:Lcom/google/ads/mediation/a;

    new-instance v2, Lcom/google/ads/mediation/c;

    invoke-direct {v2, p1}, Lcom/google/ads/mediation/c;-><init>(Lcom/google/android/gms/ads/formats/h;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/a/l;->a(Lcom/google/android/gms/ads/a/k;Lcom/google/android/gms/ads/a/g;)V

    return-void
.end method

.method public onAdClosed()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/f;->b:Lcom/google/android/gms/ads/a/l;

    iget-object v1, p0, Lcom/google/ads/mediation/f;->a:Lcom/google/ads/mediation/a;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/a/l;->b(Lcom/google/android/gms/ads/a/k;)V

    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/f;->b:Lcom/google/android/gms/ads/a/l;

    iget-object v1, p0, Lcom/google/ads/mediation/f;->a:Lcom/google/ads/mediation/a;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/ads/a/l;->a(Lcom/google/android/gms/ads/a/k;I)V

    return-void
.end method

.method public onAdLeftApplication()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/f;->b:Lcom/google/android/gms/ads/a/l;

    iget-object v1, p0, Lcom/google/ads/mediation/f;->a:Lcom/google/ads/mediation/a;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/a/l;->c(Lcom/google/android/gms/ads/a/k;)V

    return-void
.end method

.method public onAdLoaded()V
    .locals 0

    return-void
.end method

.method public onAdOpened()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/f;->b:Lcom/google/android/gms/ads/a/l;

    iget-object v1, p0, Lcom/google/ads/mediation/f;->a:Lcom/google/ads/mediation/a;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/a/l;->a(Lcom/google/android/gms/ads/a/k;)V

    return-void
.end method
