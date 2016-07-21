.class Lcom/estrongs/android/widget/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/dialog/lc;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/r;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/r;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/s;->a:Lcom/estrongs/android/widget/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/s;->a:Lcom/estrongs/android/widget/r;

    iget-object v0, v0, Lcom/estrongs/android/widget/r;->b:Lcom/estrongs/android/widget/q;

    iget-object v1, p0, Lcom/estrongs/android/widget/s;->a:Lcom/estrongs/android/widget/r;

    iget-object v1, v1, Lcom/estrongs/android/widget/r;->a:Lcom/estrongs/fs/h;

    invoke-static {v0, v1}, Lcom/estrongs/android/widget/q;->a(Lcom/estrongs/android/widget/q;Lcom/estrongs/fs/h;)V

    :cond_0
    return-void
.end method
