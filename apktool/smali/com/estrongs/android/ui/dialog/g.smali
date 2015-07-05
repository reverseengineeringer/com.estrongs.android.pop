.class Lcom/estrongs/android/ui/dialog/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/f;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/f;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/g;->a:Lcom/estrongs/android/ui/dialog/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/g;->a:Lcom/estrongs/android/ui/dialog/f;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/f;->a:Lcom/estrongs/android/ui/dialog/dg;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/dg;->a()Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
