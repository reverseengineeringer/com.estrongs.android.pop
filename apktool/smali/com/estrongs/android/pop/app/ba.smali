.class final Lcom/estrongs/android/pop/app/ba;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/estrongs/android/ui/pcs/n;

.field final synthetic c:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/estrongs/android/ui/pcs/n;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ba;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/ba;->b:Lcom/estrongs/android/ui/pcs/n;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/ba;->c:Landroid/content/DialogInterface$OnCancelListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance v0, Lcom/estrongs/android/ui/pcs/o;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ba;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/pcs/o;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ba;->b:Lcom/estrongs/android/ui/pcs/n;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/o;->a(Lcom/estrongs/android/ui/pcs/n;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ba;->c:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/o;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/o;->a(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
