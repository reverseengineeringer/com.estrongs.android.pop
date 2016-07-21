.class Lcom/estrongs/android/view/au;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/app/compress/az;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/ak;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/au;->a:Lcom/estrongs/android/view/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/au;->a:Lcom/estrongs/android/view/ak;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/estrongs/android/view/ak;->d:Z

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/au;->a:Lcom/estrongs/android/view/ak;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/estrongs/android/view/ak;->d:Z

    iget-object v0, p0, Lcom/estrongs/android/view/au;->a:Lcom/estrongs/android/view/ak;

    invoke-virtual {v0}, Lcom/estrongs/android/view/ak;->al()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/au;->a:Lcom/estrongs/android/view/ak;

    invoke-virtual {v0}, Lcom/estrongs/android/view/ak;->q()V

    :cond_0
    return-void
.end method
