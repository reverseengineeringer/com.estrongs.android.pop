.class final Lcom/estrongs/android/ui/e/ij;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/estrongs/fs/h;

.field final synthetic c:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/estrongs/fs/h;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/ij;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/estrongs/android/ui/e/ij;->b:Lcom/estrongs/fs/h;

    iput-object p3, p0, Lcom/estrongs/android/ui/e/ij;->c:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ij;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/ij;->b:Lcom/estrongs/fs/h;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/ij;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3, v3}, Lcom/estrongs/android/ui/e/ib;->a(Landroid/content/Context;Lcom/estrongs/fs/h;Ljava/lang/String;ZZ)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
