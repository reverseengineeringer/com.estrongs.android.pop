.class Lcom/estrongs/android/ui/dialog/hr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/hq;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/hq;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/hr;->b:Lcom/estrongs/android/ui/dialog/hq;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/hr;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hr;->b:Lcom/estrongs/android/ui/dialog/hq;

    const v1, 0x7f0e0322

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/dialog/hq;->a(Lcom/estrongs/android/ui/dialog/hq;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hr;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/hr;->a:Landroid/content/Context;

    const-string v2, "clipboard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hr;->a:Landroid/content/Context;

    const v1, 0x7f080232

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    :cond_0
    return-void
.end method
