.class public final Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final a:Lcom/google/android/gms/vision/face/internal/client/c;


# instance fields
.field public final b:I

.field public final c:F

.field public final d:F

.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/vision/face/internal/client/c;

    invoke-direct {v0}, Lcom/google/android/gms/vision/face/internal/client/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;->a:Lcom/google/android/gms/vision/face/internal/client/c;

    return-void
.end method

.method public constructor <init>(IFFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;->b:I

    iput p2, p0, Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;->c:F

    iput p3, p0, Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;->d:F

    iput p4, p0, Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;->e:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/vision/face/internal/client/c;->a(Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;Landroid/os/Parcel;I)V

    return-void
.end method
