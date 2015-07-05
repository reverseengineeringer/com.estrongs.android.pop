.class Lcom/estrongs/android/ui/dialog/ec;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/eb;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/eb;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ec;->b:Lcom/estrongs/android/ui/dialog/eb;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/ec;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ec;->b:Lcom/estrongs/android/ui/dialog/eb;

    const v1, 0x7f0a017d

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/dialog/eb;->a(Lcom/estrongs/android/ui/dialog/eb;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ec;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/ec;->a:Landroid/app/Activity;

    const-string v2, "clipboard"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ec;->a:Landroid/app/Activity;

    const v1, 0x7f0b0378

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    :cond_0
    return-void
.end method
