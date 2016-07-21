.class public Lcom/estrongs/android/b/a/a/b;
.super Lcom/estrongs/android/b/a/a;


# instance fields
.field r:I

.field public s:I

.field public t:J

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:J

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIZZLjava/lang/String;)V
    .locals 1

    const-string v0, "file"

    invoke-direct {p0, v0, p1}, Lcom/estrongs/android/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p7}, Lcom/estrongs/android/b/a/a/b;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/b/a/a/b;->a(I)V

    iput p2, p0, Lcom/estrongs/android/b/a/a/b;->r:I

    iput p3, p0, Lcom/estrongs/android/b/a/a/b;->j:I

    iput p4, p0, Lcom/estrongs/android/b/a/a/b;->k:I

    iput-boolean p5, p0, Lcom/estrongs/android/b/a/a/b;->n:Z

    iput-boolean p6, p0, Lcom/estrongs/android/b/a/a/b;->l:Z

    return-void
.end method


# virtual methods
.method public o()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/b/a/a/b;->r:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/FexApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
