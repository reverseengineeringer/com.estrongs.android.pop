.class public abstract Lcom/estrongs/android/pop/app/c/a/c;
.super Ljava/lang/Object;


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/estrongs/android/pop/app/c/a/c;->c:I

    iput v0, p0, Lcom/estrongs/android/pop/app/c/a/c;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/c/a/c;->b:I

    return-void
.end method


# virtual methods
.method protected abstract a(I)I
.end method

.method protected abstract a()V
.end method

.method protected abstract b()V
.end method

.method public b(I)V
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/c/a/c;->a:I

    if-eq v0, p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput p1, p0, Lcom/estrongs/android/pop/app/c/a/c;->a:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/c/a/c;->a()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract c()V
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/pop/app/c/a/c;->b:I

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/c/a/c;->b()V

    return-void
.end method

.method public abstract d()I
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/pop/app/c/a/c;->c:I

    return-void
.end method

.method public abstract e()I
.end method

.method public e(I)I
    .locals 2

    iget v0, p0, Lcom/estrongs/android/pop/app/c/a/c;->a:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/estrongs/android/pop/app/c/a/c;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/estrongs/android/pop/app/c/a/c;->b:I

    iget v1, p0, Lcom/estrongs/android/pop/app/c/a/c;->a:I

    rem-int/2addr v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/app/c/a/c;->a(I)I

    move-result v0

    goto :goto_0
.end method

.method public abstract f()I
.end method
