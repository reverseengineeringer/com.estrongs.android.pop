.class public Lcom/google/android/gms/ads/internal/formats/c;
.super Lcom/google/android/gms/internal/ds;


# annotations
.annotation runtime Lcom/google/android/gms/internal/me;
.end annotation


# instance fields
.field private final a:Landroid/graphics/drawable/Drawable;

.field private final b:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ds;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/c;->a:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/formats/c;->b:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/dynamic/e;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/h;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/e;

    move-result-object v0

    return-object v0
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/c;->b:Landroid/net/Uri;

    return-object v0
.end method
