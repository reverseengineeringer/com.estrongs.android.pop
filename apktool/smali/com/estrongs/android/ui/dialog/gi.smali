.class Lcom/estrongs/android/ui/dialog/gi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/gh;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/gh;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/gi;->a:Lcom/estrongs/android/ui/dialog/gh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gi;->a:Lcom/estrongs/android/ui/dialog/gh;

    invoke-static {v0, p2}, Lcom/estrongs/android/ui/dialog/gh;->a(Lcom/estrongs/android/ui/dialog/gh;I)I

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gi;->a:Lcom/estrongs/android/ui/dialog/gh;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gi;->a:Lcom/estrongs/android/ui/dialog/gh;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/gh;->b:[I

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/gi;->a:Lcom/estrongs/android/ui/dialog/gh;

    invoke-static {v2}, Lcom/estrongs/android/ui/dialog/gh;->a(Lcom/estrongs/android/ui/dialog/gh;)I

    move-result v2

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/dialog/gh;->b(Lcom/estrongs/android/ui/dialog/gh;I)I

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gi;->a:Lcom/estrongs/android/ui/dialog/gh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/gh;->b(Lcom/estrongs/android/ui/dialog/gh;)Lcom/estrongs/android/ui/dialog/gj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gi;->a:Lcom/estrongs/android/ui/dialog/gh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/gh;->b(Lcom/estrongs/android/ui/dialog/gh;)Lcom/estrongs/android/ui/dialog/gj;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gi;->a:Lcom/estrongs/android/ui/dialog/gh;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/gh;->c(Lcom/estrongs/android/ui/dialog/gh;)I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/gi;->a:Lcom/estrongs/android/ui/dialog/gh;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/gh;->c:[Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/gi;->a:Lcom/estrongs/android/ui/dialog/gh;

    invoke-static {v3}, Lcom/estrongs/android/ui/dialog/gh;->a(Lcom/estrongs/android/ui/dialog/gh;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/gj;->a(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
