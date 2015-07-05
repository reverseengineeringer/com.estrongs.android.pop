.class Lcom/estrongs/android/ui/view/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/cc;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/g;

.field final synthetic b:Lcom/estrongs/android/ui/view/c;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/c;Lcom/estrongs/android/widget/g;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/e;->b:Lcom/estrongs/android/ui/view/c;

    iput-object p2, p0, Lcom/estrongs/android/ui/view/e;->a:Lcom/estrongs/android/widget/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/fs/h;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/view/e;->b:Lcom/estrongs/android/ui/view/c;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/c;->a:Lcom/estrongs/android/ui/view/b;

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/view/b;->a(Lcom/estrongs/android/ui/view/b;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/e;->b:Lcom/estrongs/android/ui/view/c;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/c;->a:Lcom/estrongs/android/ui/view/b;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/b;->c(Lcom/estrongs/android/ui/view/b;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/e;->b:Lcom/estrongs/android/ui/view/c;

    iget-object v1, v1, Lcom/estrongs/android/ui/view/c;->a:Lcom/estrongs/android/ui/view/b;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/b;->b(Lcom/estrongs/android/ui/view/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/e;->a:Lcom/estrongs/android/widget/g;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/g;->k()V

    return-void
.end method
