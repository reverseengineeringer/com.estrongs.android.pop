.class Lcom/estrongs/android/view/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/app/compress/az;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/g;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/g;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/i;->a:Lcom/estrongs/android/view/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/i;->a:Lcom/estrongs/android/view/g;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/estrongs/android/view/g;->c:Z

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/i;->a:Lcom/estrongs/android/view/g;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/estrongs/android/view/g;->c:Z

    iget-object v0, p0, Lcom/estrongs/android/view/i;->a:Lcom/estrongs/android/view/g;

    invoke-virtual {v0}, Lcom/estrongs/android/view/g;->al()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/i;->a:Lcom/estrongs/android/view/g;

    invoke-virtual {v0}, Lcom/estrongs/android/view/g;->q()V

    :cond_0
    return-void
.end method
