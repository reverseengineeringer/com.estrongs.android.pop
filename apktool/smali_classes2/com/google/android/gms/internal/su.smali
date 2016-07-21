.class final Lcom/google/android/gms/internal/su;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:I

.field b:I

.field c:I

.field d:Z

.field final synthetic e:Lcom/google/android/gms/internal/st;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/st;I)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/su;->e:Lcom/google/android/gms/internal/st;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/su;->d:Z

    iput p2, p0, Lcom/google/android/gms/internal/su;->a:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/st;->a()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/su;->b:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/su;->c:I

    iget v1, p0, Lcom/google/android/gms/internal/su;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/su;->e:Lcom/google/android/gms/internal/st;

    iget v1, p0, Lcom/google/android/gms/internal/su;->c:I

    iget v2, p0, Lcom/google/android/gms/internal/su;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/st;->a(II)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/su;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/su;->c:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/su;->d:Z

    return-object v0
.end method

.method public remove()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/su;->d:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/su;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/su;->c:I

    iget v0, p0, Lcom/google/android/gms/internal/su;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/su;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/su;->d:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/su;->e:Lcom/google/android/gms/internal/st;

    iget v1, p0, Lcom/google/android/gms/internal/su;->c:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/st;->a(I)V

    return-void
.end method
