.class public Lcom/estrongs/android/b/a/a/f;
.super Lcom/estrongs/android/b/a/a;


# instance fields
.field r:I

.field s:I

.field t:I

.field u:I

.field v:I

.field w:Ljava/lang/String;

.field x:Ljava/lang/String;

.field y:Ljava/lang/String;

.field z:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "recommend"

    invoke-direct {p0, v0, p1}, Lcom/estrongs/android/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput p4, p0, Lcom/estrongs/android/b/a/a/f;->t:I

    iput p2, p0, Lcom/estrongs/android/b/a/a/f;->r:I

    iput p3, p0, Lcom/estrongs/android/b/a/a/f;->s:I

    iput p5, p0, Lcom/estrongs/android/b/a/a/f;->u:I

    iput-object p7, p0, Lcom/estrongs/android/b/a/a/f;->w:Ljava/lang/String;

    iput-object p8, p0, Lcom/estrongs/android/b/a/a/f;->x:Ljava/lang/String;

    iput p6, p0, Lcom/estrongs/android/b/a/a/f;->v:I

    iput-object p9, p0, Lcom/estrongs/android/b/a/a/f;->y:Ljava/lang/String;

    iput p10, p0, Lcom/estrongs/android/b/a/a/f;->z:I

    return-void
.end method


# virtual methods
.method public o()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/b/a/a/f;->r:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/FexApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/b/a/a/f;->x:Ljava/lang/String;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/b/a/a/f;->s:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/FexApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/b/a/a/f;->u:I

    return v0
.end method

.method public u()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/b/a/a/f;->t:I

    return v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/b/a/a/f;->w:Ljava/lang/String;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/b/a/a/f;->v:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/FexApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/b/a/a/f;->y:Ljava/lang/String;

    return-object v0
.end method

.method public y()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/b/a/a/f;->z:I

    return v0
.end method
