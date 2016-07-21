.class Lcom/estrongs/android/ui/e/eu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/a/b;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/cr;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/cr;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/eu;->a:Lcom/estrongs/android/ui/e/cr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/ui/e/cp;)Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p1, Lcom/estrongs/android/ui/e/cp;->e:Z

    if-nez v1, :cond_0

    iget-boolean v1, p1, Lcom/estrongs/android/ui/e/cp;->L:Z

    if-nez v1, :cond_0

    iget-boolean v1, p1, Lcom/estrongs/android/ui/e/cp;->I:Z

    if-nez v1, :cond_0

    iget-boolean v1, p1, Lcom/estrongs/android/ui/e/cp;->J:Z

    if-nez v1, :cond_0

    iget-boolean v1, p1, Lcom/estrongs/android/ui/e/cp;->K:Z

    if-nez v1, :cond_0

    iget-boolean v1, p1, Lcom/estrongs/android/ui/e/cp;->H:Z

    if-nez v1, :cond_0

    iget-boolean v1, p1, Lcom/estrongs/android/ui/e/cp;->l:Z

    if-eqz v1, :cond_2

    :cond_0
    iget v1, p1, Lcom/estrongs/android/ui/e/cp;->N:I

    if-ne v1, v0, :cond_2

    iget-boolean v1, p1, Lcom/estrongs/android/ui/e/cp;->Q:Z

    if-nez v1, :cond_1

    iget-boolean v1, p1, Lcom/estrongs/android/ui/e/cp;->R:Z

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-boolean v1, p1, Lcom/estrongs/android/ui/e/cp;->n:Z

    if-nez v1, :cond_3

    iget-boolean v1, p1, Lcom/estrongs/android/ui/e/cp;->B:Z

    if-eqz v1, :cond_4

    :cond_3
    iget v1, p1, Lcom/estrongs/android/ui/e/cp;->N:I

    if-eq v1, v0, :cond_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
