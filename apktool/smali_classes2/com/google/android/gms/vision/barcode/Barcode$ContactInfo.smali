.class public Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final a:Lcom/google/android/gms/vision/barcode/e;


# instance fields
.field final b:I

.field public c:Lcom/google/android/gms/vision/barcode/Barcode$PersonName;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:[Lcom/google/android/gms/vision/barcode/Barcode$Phone;

.field public g:[Lcom/google/android/gms/vision/barcode/Barcode$Email;

.field public h:[Ljava/lang/String;

.field public i:[Lcom/google/android/gms/vision/barcode/Barcode$Address;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/vision/barcode/e;

    invoke-direct {v0}, Lcom/google/android/gms/vision/barcode/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->a:Lcom/google/android/gms/vision/barcode/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->b:I

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/vision/barcode/Barcode$PersonName;Ljava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/vision/barcode/Barcode$Phone;[Lcom/google/android/gms/vision/barcode/Barcode$Email;[Ljava/lang/String;[Lcom/google/android/gms/vision/barcode/Barcode$Address;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->b:I

    iput-object p2, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->c:Lcom/google/android/gms/vision/barcode/Barcode$PersonName;

    iput-object p3, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->f:[Lcom/google/android/gms/vision/barcode/Barcode$Phone;

    iput-object p6, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->g:[Lcom/google/android/gms/vision/barcode/Barcode$Email;

    iput-object p7, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->h:[Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->i:[Lcom/google/android/gms/vision/barcode/Barcode$Address;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->a:Lcom/google/android/gms/vision/barcode/e;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->a:Lcom/google/android/gms/vision/barcode/e;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/vision/barcode/e;->a(Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;Landroid/os/Parcel;I)V

    return-void
.end method
