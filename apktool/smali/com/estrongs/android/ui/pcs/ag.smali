.class Lcom/estrongs/android/ui/pcs/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/af;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/af;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/ag;->a:Lcom/estrongs/android/ui/pcs/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ag;->a:Lcom/estrongs/android/ui/pcs/af;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/af;->a:Lcom/estrongs/android/ui/pcs/w;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/w;->m(Lcom/estrongs/android/ui/pcs/w;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ag;->a:Lcom/estrongs/android/ui/pcs/af;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/af;->a:Lcom/estrongs/android/ui/pcs/w;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/w;->h(Lcom/estrongs/android/ui/pcs/w;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ag;->a:Lcom/estrongs/android/ui/pcs/af;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/af;->a:Lcom/estrongs/android/ui/pcs/w;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/w;->h(Lcom/estrongs/android/ui/pcs/w;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ag;->a:Lcom/estrongs/android/ui/pcs/af;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/af;->a:Lcom/estrongs/android/ui/pcs/w;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/w;->d(Lcom/estrongs/android/ui/pcs/w;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a00af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ag;->a:Lcom/estrongs/android/ui/pcs/af;

    iget-object v1, v1, Lcom/estrongs/android/ui/pcs/af;->a:Lcom/estrongs/android/ui/pcs/w;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/w;->h(Lcom/estrongs/android/ui/pcs/w;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ag;->a:Lcom/estrongs/android/ui/pcs/af;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/af;->a:Lcom/estrongs/android/ui/pcs/w;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/w;->n(Lcom/estrongs/android/ui/pcs/w;)V

    return-void
.end method
