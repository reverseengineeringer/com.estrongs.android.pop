.class public Lcom/estrongs/android/pop/app/a/a/a;
.super Lcom/estrongs/android/pop/app/a/a/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/a/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(I)I
    .locals 3

    const/4 v0, -0x1

    iget v1, p0, Lcom/estrongs/android/pop/app/a/a/a;->a:I

    if-nez v1, :cond_1

    move p1, v0

    :cond_0
    :goto_0
    return p1

    :cond_1
    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/estrongs/android/pop/app/a/a/a;->a:I

    add-int/lit8 p1, v0, -0x1

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/estrongs/android/pop/app/a/a/a;->a:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/estrongs/android/pop/app/a/a/a;->c:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget v0, p0, Lcom/estrongs/android/pop/app/a/a/a;->a:I

    rem-int/2addr p1, v0

    goto :goto_0

    :cond_3
    move p1, v0

    goto :goto_0
.end method

.method protected a()V
    .locals 0

    return-void
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()I
    .locals 2

    iget v0, p0, Lcom/estrongs/android/pop/app/a/a/a;->a:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/estrongs/android/pop/app/a/a/a;->b:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/estrongs/android/pop/app/a/a/a;->a:I

    rem-int/2addr v0, v1

    goto :goto_0
.end method

.method public e()I
    .locals 2

    iget v0, p0, Lcom/estrongs/android/pop/app/a/a/a;->a:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/estrongs/android/pop/app/a/a/a;->b:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/estrongs/android/pop/app/a/a/a;->a:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/estrongs/android/pop/app/a/a/a;->a:I

    rem-int/2addr v0, v1

    goto :goto_0
.end method

.method public f()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
