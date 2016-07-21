.class Lcom/estrongs/android/ui/view/bi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/fs/util/k;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/bg;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/bg;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/bi;->a:Lcom/estrongs/android/ui/view/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([BII)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bi;->a:Lcom/estrongs/android/ui/view/bg;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/bg;->a:Lcom/estrongs/fs/util/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bi;->a:Lcom/estrongs/android/ui/view/bg;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/bg;->a:Lcom/estrongs/fs/util/k;

    invoke-interface {v0, p1, p2, p3}, Lcom/estrongs/fs/util/k;->a([BII)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bi;->a:Lcom/estrongs/android/ui/view/bg;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/bg;->b:Lcom/estrongs/fs/util/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bi;->a:Lcom/estrongs/android/ui/view/bg;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/bg;->b:Lcom/estrongs/fs/util/k;

    invoke-interface {v0, p1, p2, p3}, Lcom/estrongs/fs/util/k;->a([BII)V

    :cond_1
    return-void
.end method
