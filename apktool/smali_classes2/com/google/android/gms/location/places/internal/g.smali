.class public Lcom/google/android/gms/location/places/internal/g;
.super Lcom/google/android/gms/location/places/internal/i;

# interfaces
.implements Lcom/google/android/gms/location/places/d;


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/location/places/internal/i;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    const-string v0, "photo_fife_url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/location/places/internal/g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/internal/g;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/g;->c()Lcom/google/android/gms/location/places/d;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/google/android/gms/location/places/d;
    .locals 6

    new-instance v0, Lcom/google/android/gms/location/places/internal/f;

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/g;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/g;->d()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/g;->e()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/g;->f()Ljava/lang/CharSequence;

    move-result-object v4

    iget v5, p0, Lcom/google/android/gms/location/places/internal/g;->b_:I

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/location/places/internal/f;-><init>(Ljava/lang/String;IILjava/lang/CharSequence;I)V

    return-object v0
.end method

.method public d()I
    .locals 2

    const-string v0, "photo_max_width"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/g;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 2

    const-string v0, "photo_max_height"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/g;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/CharSequence;
    .locals 2

    const-string v0, "photo_attributions"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
