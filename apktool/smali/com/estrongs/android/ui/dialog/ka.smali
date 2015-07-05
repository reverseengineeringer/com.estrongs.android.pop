.class Lcom/estrongs/android/ui/dialog/ka;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/a/a;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/jw;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/jw;Lcom/estrongs/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ka;->b:Lcom/estrongs/android/ui/dialog/jw;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/ka;->a:Lcom/estrongs/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ka;->a:Lcom/estrongs/a/a;

    invoke-virtual {v0}, Lcom/estrongs/a/a;->canPause()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ka;->a:Lcom/estrongs/a/a;

    invoke-virtual {v0}, Lcom/estrongs/a/a;->resume()V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ka;->b:Lcom/estrongs/android/ui/dialog/jw;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ka;->b:Lcom/estrongs/android/ui/dialog/jw;

    const v2, 0x7f0b0043

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/dialog/jw;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/ka;->b:Lcom/estrongs/android/ui/dialog/jw;

    invoke-static {v2}, Lcom/estrongs/android/ui/dialog/jw;->b(Lcom/estrongs/android/ui/dialog/jw;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/jw;->setMiddleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    :cond_0
    return-void
.end method
