.class Lcom/estrongs/android/pop/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/a/h;


# instance fields
.field final synthetic a:Lcom/estrongs/a/a/h;

.field final synthetic b:Lcom/estrongs/a/a;

.field final synthetic c:Lcom/estrongs/android/pop/m;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/m;Lcom/estrongs/a/a/h;Lcom/estrongs/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/x;->c:Lcom/estrongs/android/pop/m;

    iput-object p2, p0, Lcom/estrongs/android/pop/x;->a:Lcom/estrongs/a/a/h;

    iput-object p3, p0, Lcom/estrongs/android/pop/x;->b:Lcom/estrongs/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZZ)V
    .locals 5

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/x;->a:Lcom/estrongs/a/a/h;

    iput v2, v0, Lcom/estrongs/a/a/h;->g:I

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/x;->a:Lcom/estrongs/a/a/h;

    iput-boolean p2, v0, Lcom/estrongs/a/a/h;->f:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/x;->b:Lcom/estrongs/a/a;

    const/4 v1, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/estrongs/android/pop/x;->a:Lcom/estrongs/a/a/h;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/x;->a:Lcom/estrongs/a/a/h;

    const/4 v1, 0x2

    iput v1, v0, Lcom/estrongs/a/a/h;->g:I

    goto :goto_0
.end method
