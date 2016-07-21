.class public Lcom/google/android/gms/internal/zzqp;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/google/android/gms/internal/n;)Lcom/google/android/gms/internal/n;
    .locals 2

    new-instance v1, Lcom/google/android/gms/internal/n;

    invoke-direct {v1}, Lcom/google/android/gms/internal/n;-><init>()V

    iget v0, p0, Lcom/google/android/gms/internal/n;->a:I

    iput v0, v1, Lcom/google/android/gms/internal/n;->a:I

    iget-object v0, p0, Lcom/google/android/gms/internal/n;->k:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, v1, Lcom/google/android/gms/internal/n;->k:[I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/n;->l:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/n;->l:Z

    iput-boolean v0, v1, Lcom/google/android/gms/internal/n;->l:Z

    :cond_0
    return-object v1
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method
