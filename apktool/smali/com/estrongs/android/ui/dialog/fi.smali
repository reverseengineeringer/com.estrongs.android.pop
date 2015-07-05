.class Lcom/estrongs/android/ui/dialog/fi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/fh;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/fh;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/fi;->a:Lcom/estrongs/android/ui/dialog/fh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fi;->a:Lcom/estrongs/android/ui/dialog/fh;

    invoke-static {v0, p2}, Lcom/estrongs/android/ui/dialog/fh;->a(Lcom/estrongs/android/ui/dialog/fh;I)I

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fi;->a:Lcom/estrongs/android/ui/dialog/fh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/fh;->c(Lcom/estrongs/android/ui/dialog/fh;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/fi;->a:Lcom/estrongs/android/ui/dialog/fh;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/fh;->a(Lcom/estrongs/android/ui/dialog/fh;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/fi;->a:Lcom/estrongs/android/ui/dialog/fh;

    invoke-static {v2}, Lcom/estrongs/android/ui/dialog/fh;->b(Lcom/estrongs/android/ui/dialog/fh;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
