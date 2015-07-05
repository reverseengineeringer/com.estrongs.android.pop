.class final Lcom/estrongs/android/ui/e/ik;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/widget/EditText;

.field final synthetic d:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/ik;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/estrongs/android/ui/e/ik;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/ui/e/ik;->c:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/estrongs/android/ui/e/ik;->d:Landroid/content/DialogInterface$OnDismissListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ik;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/ik;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/ik;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/e/ik;->d:Landroid/content/DialogInterface$OnDismissListener;

    invoke-static {v0, v1, v2, v3}, Lcom/estrongs/android/ui/e/ie;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
