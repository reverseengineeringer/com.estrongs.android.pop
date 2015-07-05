.class Lcom/estrongs/android/ui/dialog/ge;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/dialog/gj;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/gd;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/gd;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ge;->a:Lcom/estrongs/android/ui/dialog/gd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ge;->a:Lcom/estrongs/android/ui/dialog/gd;

    invoke-static {v0, p1}, Lcom/estrongs/android/ui/dialog/gd;->a(Lcom/estrongs/android/ui/dialog/gd;I)I

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ge;->a:Lcom/estrongs/android/ui/dialog/gd;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/gd;->a:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
