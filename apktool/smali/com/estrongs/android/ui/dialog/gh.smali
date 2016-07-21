.class Lcom/estrongs/android/ui/dialog/gh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/dialog/gm;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/gg;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/gg;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/gh;->a:Lcom/estrongs/android/ui/dialog/gg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gh;->a:Lcom/estrongs/android/ui/dialog/gg;

    invoke-static {v0, p1}, Lcom/estrongs/android/ui/dialog/gg;->a(Lcom/estrongs/android/ui/dialog/gg;I)I

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gh;->a:Lcom/estrongs/android/ui/dialog/gg;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/gg;->a:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
