.class public final Lcom/google/android/gms/maps/model/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/google/android/gms/maps/model/LatLng;

.field private b:F

.field private c:F

.field private d:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/maps/model/CameraPosition;
    .locals 5

    new-instance v0, Lcom/google/android/gms/maps/model/CameraPosition;

    iget-object v1, p0, Lcom/google/android/gms/maps/model/c;->a:Lcom/google/android/gms/maps/model/LatLng;

    iget v2, p0, Lcom/google/android/gms/maps/model/c;->b:F

    iget v3, p0, Lcom/google/android/gms/maps/model/c;->c:F

    iget v4, p0, Lcom/google/android/gms/maps/model/c;->d:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/CameraPosition;-><init>(Lcom/google/android/gms/maps/model/LatLng;FFF)V

    return-object v0
.end method

.method public a(F)Lcom/google/android/gms/maps/model/c;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/c;->b:F

    return-object p0
.end method

.method public a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/c;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/model/c;->a:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method public b(F)Lcom/google/android/gms/maps/model/c;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/c;->c:F

    return-object p0
.end method

.method public c(F)Lcom/google/android/gms/maps/model/c;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/c;->d:F

    return-object p0
.end method
