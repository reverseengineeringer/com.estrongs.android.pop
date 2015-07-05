.class Lcom/estrongs/android/ui/view/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/g;

.field final synthetic b:Lcom/estrongs/android/ui/view/c;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/c;Lcom/estrongs/android/widget/g;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/f;->b:Lcom/estrongs/android/ui/view/c;

    iput-object p2, p0, Lcom/estrongs/android/ui/view/f;->a:Lcom/estrongs/android/widget/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/view/f;->b:Lcom/estrongs/android/ui/view/c;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/c;->a:Lcom/estrongs/android/ui/view/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/view/b;->a(Lcom/estrongs/android/ui/view/b;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/f;->b:Lcom/estrongs/android/ui/view/c;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/c;->a:Lcom/estrongs/android/ui/view/b;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/b;->c(Lcom/estrongs/android/ui/view/b;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/f;->a:Lcom/estrongs/android/widget/g;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/g;->k()V

    return-void
.end method
