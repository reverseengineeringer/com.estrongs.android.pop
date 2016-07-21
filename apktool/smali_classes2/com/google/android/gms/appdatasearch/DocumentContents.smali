.class public Lcom/google/android/gms/appdatasearch/DocumentContents;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final a:Lcom/google/android/gms/appdatasearch/g;


# instance fields
.field final b:I

.field final c:[Lcom/google/android/gms/appdatasearch/DocumentSection;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Landroid/accounts/Account;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/g;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/DocumentContents;->a:Lcom/google/android/gms/appdatasearch/g;

    return-void
.end method

.method constructor <init>(I[Lcom/google/android/gms/appdatasearch/DocumentSection;Ljava/lang/String;ZLandroid/accounts/Account;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/DocumentContents;->b:I

    iput-object p2, p0, Lcom/google/android/gms/appdatasearch/DocumentContents;->c:[Lcom/google/android/gms/appdatasearch/DocumentSection;

    iput-object p3, p0, Lcom/google/android/gms/appdatasearch/DocumentContents;->d:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/appdatasearch/DocumentContents;->e:Z

    iput-object p5, p0, Lcom/google/android/gms/appdatasearch/DocumentContents;->f:Landroid/accounts/Account;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/DocumentSection;
    .locals 6

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/bn;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/appdatasearch/DocumentContents;->c:[Lcom/google/android/gms/appdatasearch/DocumentSection;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/appdatasearch/DocumentContents;->c:[Lcom/google/android/gms/appdatasearch/DocumentSection;

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    invoke-virtual {v1}, Lcom/google/android/gms/appdatasearch/DocumentSection;->a()Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;->c:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "web_url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/appdatasearch/DocumentContents;->a(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/DocumentSection;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/appdatasearch/DocumentSection;->d:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/DocumentContents;->a:Lcom/google/android/gms/appdatasearch/g;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/DocumentContents;->a:Lcom/google/android/gms/appdatasearch/g;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/appdatasearch/g;->a(Lcom/google/android/gms/appdatasearch/DocumentContents;Landroid/os/Parcel;I)V

    return-void
.end method
