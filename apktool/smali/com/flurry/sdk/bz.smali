.class public final Lcom/flurry/sdk/bz;
.super Lcom/flurry/sdk/bi;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private final f:Lcom/google/android/gms/ads/h;

.field private final g:Lcom/google/android/gms/ads/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/bz;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/bz;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/s;Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/bi;-><init>(Landroid/content/Context;Lcom/flurry/sdk/s;)V

    const-string v0, "com.flurry.gms.ads.MY_AD_UNIT_ID"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/bz;->c:Ljava/lang/String;

    const-string v0, "com.flurry.gms.ads.MYTEST_AD_DEVICE_ID"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/bz;->d:Ljava/lang/String;

    const-string v0, "com.flurry.gms.ads.test"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/bz;->e:Z

    new-instance v0, Lcom/flurry/sdk/bz$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flurry/sdk/bz$a;-><init>(Lcom/flurry/sdk/bz;Lcom/flurry/sdk/bz$1;)V

    iput-object v0, p0, Lcom/flurry/sdk/bz;->g:Lcom/google/android/gms/ads/a;

    new-instance v0, Lcom/google/android/gms/ads/h;

    invoke-virtual {p0}, Lcom/flurry/sdk/bz;->c()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/bz;->f:Lcom/google/android/gms/ads/h;

    iget-object v0, p0, Lcom/flurry/sdk/bz;->f:Lcom/google/android/gms/ads/h;

    iget-object v1, p0, Lcom/flurry/sdk/bz;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/bz;->f:Lcom/google/android/gms/ads/h;

    iget-object v1, p0, Lcom/flurry/sdk/bz;->g:Lcom/google/android/gms/ads/a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/h;->a(Lcom/google/android/gms/ads/a;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/bz;)Lcom/google/android/gms/ads/h;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/bz;->f:Lcom/google/android/gms/ads/h;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/bz;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/ads/f;

    invoke-direct {v0}, Lcom/google/android/gms/ads/f;-><init>()V

    iget-boolean v1, p0, Lcom/flurry/sdk/bz;->e:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/bz;->b:Ljava/lang/String;

    const-string v3, "GMS AdView set to Test Mode."

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/ads/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/f;->b(Ljava/lang/String;)Lcom/google/android/gms/ads/f;

    iget-object v1, p0, Lcom/flurry/sdk/bz;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/bz;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/f;->b(Ljava/lang/String;)Lcom/google/android/gms/ads/f;

    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/bz;->f:Lcom/google/android/gms/ads/h;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/f;->a()Lcom/google/android/gms/ads/d;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/h;->a(Lcom/google/android/gms/ads/d;)V

    return-void
.end method
