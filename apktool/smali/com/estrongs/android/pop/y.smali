.class Lcom/estrongs/android/pop/y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/d/p;


# instance fields
.field final synthetic a:Lcom/estrongs/a/a/h;

.field final synthetic b:Lcom/estrongs/a/a;

.field final synthetic c:Lcom/estrongs/android/pop/m;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/m;Lcom/estrongs/a/a/h;Lcom/estrongs/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/y;->c:Lcom/estrongs/android/pop/m;

    iput-object p2, p0, Lcom/estrongs/android/pop/y;->a:Lcom/estrongs/a/a/h;

    iput-object p3, p0, Lcom/estrongs/android/pop/y;->b:Lcom/estrongs/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 5

    const/4 v4, 0x5

    const/4 v2, 0x1

    sget v0, Lcom/estrongs/android/d/i;->b:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/y;->a:Lcom/estrongs/a/a/h;

    iput v2, v0, Lcom/estrongs/a/a/h;->g:I

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/y;->a:Lcom/estrongs/a/a/h;

    iput-boolean p2, v0, Lcom/estrongs/a/a/h;->f:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/y;->b:Lcom/estrongs/a/a;

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/estrongs/android/pop/y;->a:Lcom/estrongs/a/a/h;

    aput-object v3, v1, v2

    invoke-virtual {v0, v4, v1}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    return-void

    :cond_0
    sget v0, Lcom/estrongs/android/d/i;->e:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/y;->a:Lcom/estrongs/a/a/h;

    const/4 v1, 0x4

    iput v1, v0, Lcom/estrongs/a/a/h;->g:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/estrongs/android/d/i;->c:I

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/y;->a:Lcom/estrongs/a/a/h;

    const/4 v1, 0x2

    iput v1, v0, Lcom/estrongs/a/a/h;->g:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/estrongs/android/d/i;->a:I

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/y;->a:Lcom/estrongs/a/a/h;

    const/4 v1, 0x3

    iput v1, v0, Lcom/estrongs/a/a/h;->g:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/y;->a:Lcom/estrongs/a/a/h;

    iput v4, v0, Lcom/estrongs/a/a/h;->g:I

    goto :goto_0
.end method
