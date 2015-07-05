.class Lcom/estrongs/android/ui/dialog/fj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/fh;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/fh;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/fj;->b:Lcom/estrongs/android/ui/dialog/fh;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/fj;->a:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fj;->b:Lcom/estrongs/android/ui/dialog/fh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/fh;->d(Lcom/estrongs/android/ui/dialog/fh;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fj;->b:Lcom/estrongs/android/ui/dialog/fh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/fh;->a(Lcom/estrongs/android/ui/dialog/fh;)[Ljava/lang/String;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/fj;->a:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0b000c

    new-instance v2, Lcom/estrongs/android/ui/dialog/fk;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/fk;-><init>(Lcom/estrongs/android/ui/dialog/fj;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0b02a6

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
