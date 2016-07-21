.class public Lcom/google/android/gms/vision/barcode/Barcode$WiFi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final a:Lcom/google/android/gms/vision/barcode/m;


# instance fields
.field final b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/vision/barcode/m;

    invoke-direct {v0}, Lcom/google/android/gms/vision/barcode/m;-><init>()V

    sput-object v0, Lcom/google/android/gms/vision/barcode/Barcode$WiFi;->a:Lcom/google/android/gms/vision/barcode/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/vision/barcode/Barcode$WiFi;->b:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/vision/barcode/Barcode$WiFi;->b:I

    iput-object p2, p0, Lcom/google/android/gms/vision/barcode/Barcode$WiFi;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/vision/barcode/Barcode$WiFi;->d:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/vision/barcode/Barcode$WiFi;->e:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/vision/barcode/Barcode$WiFi;->a:Lcom/google/android/gms/vision/barcode/m;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/vision/barcode/Barcode$WiFi;->a:Lcom/google/android/gms/vision/barcode/m;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/vision/barcode/m;->a(Lcom/google/android/gms/vision/barcode/Barcode$WiFi;Landroid/os/Parcel;I)V

    return-void
.end method
