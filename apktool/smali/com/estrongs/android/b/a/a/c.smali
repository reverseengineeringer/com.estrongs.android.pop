.class public Lcom/estrongs/android/b/a/a/c;
.super Lcom/estrongs/android/b/a/a;


# instance fields
.field r:I

.field s:I

.field t:I

.field u:I

.field v:Ljava/lang/String;

.field w:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIILjava/lang/String;)V
    .locals 1

    const-string v0, "function"

    invoke-direct {p0, v0, p1}, Lcom/estrongs/android/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput p2, p0, Lcom/estrongs/android/b/a/a/c;->r:I

    iput p3, p0, Lcom/estrongs/android/b/a/a/c;->s:I

    iput p5, p0, Lcom/estrongs/android/b/a/a/c;->t:I

    iput p6, p0, Lcom/estrongs/android/b/a/a/c;->u:I

    iput-object p7, p0, Lcom/estrongs/android/b/a/a/c;->v:Ljava/lang/String;

    iput p4, p0, Lcom/estrongs/android/b/a/a/c;->w:I

    return-void
.end method


# virtual methods
.method public o()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/b/a/a/c;->r:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/FexApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/b/a/a/c;->t:I

    return v0
.end method

.method public t()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/b/a/a/c;->u:I

    return v0
.end method

.method public u()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/b/a/a/c;->s:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/FexApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/b/a/a/c;->v:Ljava/lang/String;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/b/a/a/c;->w:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/FexApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
