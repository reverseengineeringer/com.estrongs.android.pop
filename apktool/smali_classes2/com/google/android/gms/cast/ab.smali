.class public Lcom/google/android/gms/cast/ab;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/cast/aa;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Content ID cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/cast/aa;

    invoke-direct {v0, p1}, Lcom/google/android/gms/cast/aa;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/ab;->a:Lcom/google/android/gms/cast/aa;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/cast/aa;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/ab;->a:Lcom/google/android/gms/cast/aa;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/aa;->b()V

    iget-object v0, p0, Lcom/google/android/gms/cast/ab;->a:Lcom/google/android/gms/cast/aa;

    return-object v0
.end method

.method public a(I)Lcom/google/android/gms/cast/ab;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/ab;->a:Lcom/google/android/gms/cast/aa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/aa;->a(I)V

    return-object p0
.end method

.method public a(Lcom/google/android/gms/cast/ac;)Lcom/google/android/gms/cast/ab;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/ab;->a:Lcom/google/android/gms/cast/aa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/aa;->a(Lcom/google/android/gms/cast/ac;)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/google/android/gms/cast/ab;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/ab;->a:Lcom/google/android/gms/cast/aa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/aa;->a(Ljava/lang/String;)V

    return-object p0
.end method
