.class Lcom/estrongs/android/view/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/app/compress/av;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/e;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/e;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/g;->a:Lcom/estrongs/android/view/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/g;->a:Lcom/estrongs/android/view/e;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/estrongs/android/view/e;->c:Z

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/g;->a:Lcom/estrongs/android/view/e;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/estrongs/android/view/e;->c:Z

    iget-object v0, p0, Lcom/estrongs/android/view/g;->a:Lcom/estrongs/android/view/e;

    invoke-virtual {v0}, Lcom/estrongs/android/view/e;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/g;->a:Lcom/estrongs/android/view/e;

    invoke-virtual {v0}, Lcom/estrongs/android/view/e;->p()V

    :cond_0
    return-void
.end method
