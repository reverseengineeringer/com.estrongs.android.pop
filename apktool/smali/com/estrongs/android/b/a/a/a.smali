.class public Lcom/estrongs/android/b/a/a/a;
.super Lcom/estrongs/android/b/a/a;


# instance fields
.field public A:I

.field public B:I

.field r:I

.field public s:I

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:I

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:J

.field public z:J


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "app"

    invoke-direct {p0, v0, p1}, Lcom/estrongs/android/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput v1, p0, Lcom/estrongs/android/b/a/a/a;->A:I

    iput v1, p0, Lcom/estrongs/android/b/a/a/a;->B:I

    iput p2, p0, Lcom/estrongs/android/b/a/a/a;->r:I

    const-string v0, "app://"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/b/a/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/b/a/a/a;->a(I)V

    iput-object p3, p0, Lcom/estrongs/android/b/a/a/a;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public o()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/b/a/a/a;->r:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/FexApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
