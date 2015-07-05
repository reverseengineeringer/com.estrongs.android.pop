.class Lcom/estrongs/android/ui/dialog/hz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/hn;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/hn;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/hz;->b:Lcom/estrongs/android/ui/dialog/hn;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/hz;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hz;->b:Lcom/estrongs/android/ui/dialog/hn;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/hn;->a(Lcom/estrongs/android/ui/dialog/hn;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/hz;->b:Lcom/estrongs/android/ui/dialog/hn;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/hn;->a(Lcom/estrongs/android/ui/dialog/hn;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->ba(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/estrongs/android/util/am;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hz;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/hz;->a:Landroid/content/Context;

    const-string v2, "clipboard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hz;->a:Landroid/content/Context;

    const v1, 0x7f0b0378

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    :cond_0
    return-void

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method
