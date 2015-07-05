.class Lcom/estrongs/android/pop/view/db;
.super Lcom/estrongs/android/widget/a;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/db;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/db;->a:Landroid/view/View;

    invoke-direct {p0}, Lcom/estrongs/android/widget/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/estrongs/android/widget/a;->onAnimationEnd(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/db;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-boolean v3, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->q:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/view/db;->a:Landroid/view/View;

    const v1, 0x7f0a00c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/db;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method
