.class public Lcom/estrongs/android/b/a/a/e;
.super Lcom/estrongs/android/b/a/a;


# instance fields
.field r:I

.field s:I

.field t:I

.field u:Ljava/lang/String;

.field v:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIILjava/lang/String;)V
    .locals 1

    const-string v0, "rate"

    invoke-direct {p0, v0, p1}, Lcom/estrongs/android/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput p2, p0, Lcom/estrongs/android/b/a/a/e;->r:I

    iput p3, p0, Lcom/estrongs/android/b/a/a/e;->s:I

    iput p5, p0, Lcom/estrongs/android/b/a/a/e;->t:I

    iput-object p6, p0, Lcom/estrongs/android/b/a/a/e;->u:Ljava/lang/String;

    iput p4, p0, Lcom/estrongs/android/b/a/a/e;->v:I

    return-void
.end method


# virtual methods
.method public o()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/b/a/a/e;->r:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/FexApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
