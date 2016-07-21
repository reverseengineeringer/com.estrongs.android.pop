.class public Lcom/google/android/gms/appdatasearch/DocumentId;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final a:Lcom/google/android/gms/appdatasearch/h;


# instance fields
.field final b:I

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/h;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/DocumentId;->a:Lcom/google/android/gms/appdatasearch/h;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/DocumentId;->b:I

    iput-object p2, p0, Lcom/google/android/gms/appdatasearch/DocumentId;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/appdatasearch/DocumentId;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/appdatasearch/DocumentId;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/DocumentId;->a:Lcom/google/android/gms/appdatasearch/h;

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "DocumentId[packageName=%s, corpusName=%s, uri=%s]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/appdatasearch/DocumentId;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/appdatasearch/DocumentId;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/appdatasearch/DocumentId;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/DocumentId;->a:Lcom/google/android/gms/appdatasearch/h;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/appdatasearch/h;->a(Lcom/google/android/gms/appdatasearch/DocumentId;Landroid/os/Parcel;I)V

    return-void
.end method
