.class Lcom/estrongs/android/ui/dialog/fm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/fk;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/fk;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/fm;->b:Lcom/estrongs/android/ui/dialog/fk;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/fm;->a:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fm;->b:Lcom/estrongs/android/ui/dialog/fk;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/fk;->d(Lcom/estrongs/android/ui/dialog/fk;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fm;->b:Lcom/estrongs/android/ui/dialog/fk;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/fk;->a(Lcom/estrongs/android/ui/dialog/fk;)[Ljava/lang/String;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/fm;->a:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f080221

    new-instance v2, Lcom/estrongs/android/ui/dialog/fn;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/fn;-><init>(Lcom/estrongs/android/ui/dialog/fm;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f08061c

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
