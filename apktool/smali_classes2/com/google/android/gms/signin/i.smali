.class public final Lcom/google/android/gms/signin/i;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Lcom/google/android/gms/common/api/s;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/signin/g;
    .locals 6

    new-instance v0, Lcom/google/android/gms/signin/g;

    iget-boolean v1, p0, Lcom/google/android/gms/signin/i;->a:Z

    iget-boolean v2, p0, Lcom/google/android/gms/signin/i;->b:Z

    iget-object v3, p0, Lcom/google/android/gms/signin/i;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/signin/i;->d:Lcom/google/android/gms/common/api/s;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/signin/g;-><init>(ZZLjava/lang/String;Lcom/google/android/gms/common/api/s;Lcom/google/android/gms/signin/h;)V

    return-object v0
.end method
