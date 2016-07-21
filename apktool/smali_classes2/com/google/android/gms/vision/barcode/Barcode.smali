.class public Lcom/google/android/gms/vision/barcode/Barcode;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final a:Lcom/google/android/gms/vision/barcode/b;


# instance fields
.field final b:I

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:[Landroid/graphics/Point;

.field public h:Lcom/google/android/gms/vision/barcode/Barcode$Email;

.field public i:Lcom/google/android/gms/vision/barcode/Barcode$Phone;

.field public j:Lcom/google/android/gms/vision/barcode/Barcode$Sms;

.field public k:Lcom/google/android/gms/vision/barcode/Barcode$WiFi;

.field public l:Lcom/google/android/gms/vision/barcode/Barcode$UrlBookmark;

.field public m:Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;

.field public n:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

.field public o:Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;

.field public p:Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/vision/barcode/b;

    invoke-direct {v0}, Lcom/google/android/gms/vision/barcode/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/vision/barcode/Barcode;->a:Lcom/google/android/gms/vision/barcode/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/vision/barcode/Barcode;->b:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;I[Landroid/graphics/Point;Lcom/google/android/gms/vision/barcode/Barcode$Email;Lcom/google/android/gms/vision/barcode/Barcode$Phone;Lcom/google/android/gms/vision/barcode/Barcode$Sms;Lcom/google/android/gms/vision/barcode/Barcode$WiFi;Lcom/google/android/gms/vision/barcode/Barcode$UrlBookmark;Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/vision/barcode/Barcode;->b:I

    iput p2, p0, Lcom/google/android/gms/vision/barcode/Barcode;->c:I

    iput-object p3, p0, Lcom/google/android/gms/vision/barcode/Barcode;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/vision/barcode/Barcode;->e:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/vision/barcode/Barcode;->f:I

    iput-object p6, p0, Lcom/google/android/gms/vision/barcode/Barcode;->g:[Landroid/graphics/Point;

    iput-object p7, p0, Lcom/google/android/gms/vision/barcode/Barcode;->h:Lcom/google/android/gms/vision/barcode/Barcode$Email;

    iput-object p8, p0, Lcom/google/android/gms/vision/barcode/Barcode;->i:Lcom/google/android/gms/vision/barcode/Barcode$Phone;

    iput-object p9, p0, Lcom/google/android/gms/vision/barcode/Barcode;->j:Lcom/google/android/gms/vision/barcode/Barcode$Sms;

    iput-object p10, p0, Lcom/google/android/gms/vision/barcode/Barcode;->k:Lcom/google/android/gms/vision/barcode/Barcode$WiFi;

    iput-object p11, p0, Lcom/google/android/gms/vision/barcode/Barcode;->l:Lcom/google/android/gms/vision/barcode/Barcode$UrlBookmark;

    iput-object p12, p0, Lcom/google/android/gms/vision/barcode/Barcode;->m:Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;

    iput-object p13, p0, Lcom/google/android/gms/vision/barcode/Barcode;->n:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

    iput-object p14, p0, Lcom/google/android/gms/vision/barcode/Barcode;->o:Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;

    iput-object p15, p0, Lcom/google/android/gms/vision/barcode/Barcode;->p:Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/vision/barcode/Barcode;->a:Lcom/google/android/gms/vision/barcode/b;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/vision/barcode/Barcode;->a:Lcom/google/android/gms/vision/barcode/b;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/vision/barcode/b;->a(Lcom/google/android/gms/vision/barcode/Barcode;Landroid/os/Parcel;I)V

    return-void
.end method
