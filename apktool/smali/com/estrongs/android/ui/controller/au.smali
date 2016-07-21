.class Lcom/estrongs/android/ui/controller/au;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/cr;

.field final synthetic b:Lcom/estrongs/android/ui/controller/aj;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/controller/aj;Lcom/estrongs/android/view/cr;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/au;->b:Lcom/estrongs/android/ui/controller/aj;

    iput-object p2, p0, Lcom/estrongs/android/ui/controller/au;->a:Lcom/estrongs/android/view/cr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/au;->b:Lcom/estrongs/android/ui/controller/aj;

    invoke-static {v0}, Lcom/estrongs/android/ui/controller/aj;->b(Lcom/estrongs/android/ui/controller/aj;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/au;->b:Lcom/estrongs/android/ui/controller/aj;

    invoke-static {v0}, Lcom/estrongs/android/ui/controller/aj;->b(Lcom/estrongs/android/ui/controller/aj;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "all"

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/au;->a:Lcom/estrongs/android/view/cr;

    invoke-virtual {v1}, Lcom/estrongs/android/view/cr;->aq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/au;->b:Lcom/estrongs/android/ui/controller/aj;

    iget-object v0, v0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f080380

    invoke-static {v0, v1, v4}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/au;->b:Lcom/estrongs/android/ui/controller/aj;

    iget-object v0, v0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-string v1, "externalstorage://"

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/au;->a:Lcom/estrongs/android/view/cr;

    invoke-virtual {v2}, Lcom/estrongs/android/view/cr;->aq()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/controller/au;->b:Lcom/estrongs/android/ui/controller/aj;

    invoke-static {v3}, Lcom/estrongs/android/ui/controller/aj;->b(Lcom/estrongs/android/ui/controller/aj;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/au;->b:Lcom/estrongs/android/ui/controller/aj;

    iget-object v0, v0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/au;->b:Lcom/estrongs/android/ui/controller/aj;

    invoke-static {v1}, Lcom/estrongs/android/ui/controller/aj;->b(Lcom/estrongs/android/ui/controller/aj;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method
