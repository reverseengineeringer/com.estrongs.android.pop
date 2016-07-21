.class public Lcom/google/android/gms/vision/barcode/Barcode$Address;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final a:Lcom/google/android/gms/vision/barcode/a;


# instance fields
.field final b:I

.field public c:I

.field public d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/vision/barcode/a;

    invoke-direct {v0}, Lcom/google/android/gms/vision/barcode/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/vision/barcode/Barcode$Address;->a:Lcom/google/android/gms/vision/barcode/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/vision/barcode/Barcode$Address;->b:I

    return-void
.end method

.method public constructor <init>(II[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/vision/barcode/Barcode$Address;->b:I

    iput p2, p0, Lcom/google/android/gms/vision/barcode/Barcode$Address;->c:I

    iput-object p3, p0, Lcom/google/android/gms/vision/barcode/Barcode$Address;->d:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/vision/barcode/Barcode$Address;->a:Lcom/google/android/gms/vision/barcode/a;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/vision/barcode/Barcode$Address;->a:Lcom/google/android/gms/vision/barcode/a;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/vision/barcode/a;->a(Lcom/google/android/gms/vision/barcode/Barcode$Address;Landroid/os/Parcel;I)V

    return-void
.end method
