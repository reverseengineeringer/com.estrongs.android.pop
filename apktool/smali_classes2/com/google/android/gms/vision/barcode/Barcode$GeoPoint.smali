.class public Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final a:Lcom/google/android/gms/vision/barcode/h;


# instance fields
.field final b:I

.field public c:D

.field public d:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/vision/barcode/h;

    invoke-direct {v0}, Lcom/google/android/gms/vision/barcode/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;->a:Lcom/google/android/gms/vision/barcode/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;->b:I

    return-void
.end method

.method public constructor <init>(IDD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;->b:I

    iput-wide p2, p0, Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;->c:D

    iput-wide p4, p0, Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;->d:D

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;->a:Lcom/google/android/gms/vision/barcode/h;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;->a:Lcom/google/android/gms/vision/barcode/h;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/vision/barcode/h;->a(Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;Landroid/os/Parcel;I)V

    return-void
.end method
