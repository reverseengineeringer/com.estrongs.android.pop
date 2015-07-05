.class Lcom/estrongs/android/pop/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/a/t;


# instance fields
.field final synthetic a:Lcom/estrongs/a/a/k;

.field final synthetic b:Lcom/estrongs/android/pop/n;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/n;Lcom/estrongs/a/a/k;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/p;->b:Lcom/estrongs/android/pop/n;

    iput-object p2, p0, Lcom/estrongs/android/pop/p;->a:Lcom/estrongs/a/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/pop/p;->a:Lcom/estrongs/a/a/k;

    iput p1, v0, Lcom/estrongs/a/a/k;->g:I

    iget-object v0, p0, Lcom/estrongs/android/pop/p;->a:Lcom/estrongs/a/a/k;

    iput-boolean p2, v0, Lcom/estrongs/a/a/k;->f:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/p;->b:Lcom/estrongs/android/pop/n;

    iget-object v0, v0, Lcom/estrongs/android/pop/n;->b:Lcom/estrongs/a/a;

    const/4 v1, 0x5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/estrongs/android/pop/p;->b:Lcom/estrongs/android/pop/n;

    iget-object v4, v4, Lcom/estrongs/android/pop/n;->a:Lcom/estrongs/a/a/d;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    return-void
.end method
