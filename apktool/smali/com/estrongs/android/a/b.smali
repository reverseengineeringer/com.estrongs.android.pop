.class Lcom/estrongs/android/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/a/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/a/b;->a:Lcom/estrongs/android/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/a/b;->a:Lcom/estrongs/android/a/a;

    invoke-static {v0}, Lcom/estrongs/android/a/a;->a(Lcom/estrongs/android/a/a;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/a/b;->a:Lcom/estrongs/android/a/a;

    invoke-static {v0}, Lcom/estrongs/android/a/a;->b(Lcom/estrongs/android/a/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/a/b;->a:Lcom/estrongs/android/a/a;

    invoke-static {v0}, Lcom/estrongs/android/a/a;->c(Lcom/estrongs/android/a/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/a/b;->a:Lcom/estrongs/android/a/a;

    invoke-static {v0}, Lcom/estrongs/android/a/a;->b(Lcom/estrongs/android/a/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/a/b;->a:Lcom/estrongs/android/a/a;

    invoke-static {v0}, Lcom/estrongs/android/a/a;->c(Lcom/estrongs/android/a/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_0
.end method
