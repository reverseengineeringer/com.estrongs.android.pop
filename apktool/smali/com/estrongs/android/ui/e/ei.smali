.class Lcom/estrongs/android/ui/e/ei;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/a/b;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/cp;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/cp;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/ei;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/ui/e/co;)Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p1, Lcom/estrongs/android/ui/e/co;->e:Z

    if-nez v1, :cond_1

    iget-boolean v1, p1, Lcom/estrongs/android/ui/e/co;->h:Z

    if-nez v1, :cond_1

    iget-boolean v1, p1, Lcom/estrongs/android/ui/e/co;->f:Z

    if-nez v1, :cond_0

    iget-boolean v1, p1, Lcom/estrongs/android/ui/e/co;->x:Z

    if-nez v1, :cond_0

    iget-boolean v1, p1, Lcom/estrongs/android/ui/e/co;->g:Z

    if-eqz v1, :cond_3

    :cond_0
    iget-boolean v1, p1, Lcom/estrongs/android/ui/e/co;->d:Z

    if-nez v1, :cond_3

    :cond_1
    iget-boolean v1, p1, Lcom/estrongs/android/ui/e/co;->P:Z

    if-nez v1, :cond_2

    iget-boolean v1, p1, Lcom/estrongs/android/ui/e/co;->T:Z

    if-eqz v1, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    iget-boolean v1, p1, Lcom/estrongs/android/ui/e/co;->i:Z

    if-nez v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0
.end method
