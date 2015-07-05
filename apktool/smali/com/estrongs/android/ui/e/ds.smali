.class Lcom/estrongs/android/ui/e/ds;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/a/b;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/cp;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/cp;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/ds;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/ui/e/co;)Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p1, Lcom/estrongs/android/ui/e/co;->f:Z

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/estrongs/android/ui/e/co;->F:I

    if-ne v1, v0, :cond_0

    iget-boolean v1, p1, Lcom/estrongs/android/ui/e/co;->H:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
