.class Lcom/estrongs/android/ui/dialog/gl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/gk;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/gk;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/gl;->a:Lcom/estrongs/android/ui/dialog/gk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gl;->a:Lcom/estrongs/android/ui/dialog/gk;

    invoke-static {v0, p2}, Lcom/estrongs/android/ui/dialog/gk;->a(Lcom/estrongs/android/ui/dialog/gk;I)I

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gl;->a:Lcom/estrongs/android/ui/dialog/gk;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gl;->a:Lcom/estrongs/android/ui/dialog/gk;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/gk;->b:[I

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/gl;->a:Lcom/estrongs/android/ui/dialog/gk;

    invoke-static {v2}, Lcom/estrongs/android/ui/dialog/gk;->a(Lcom/estrongs/android/ui/dialog/gk;)I

    move-result v2

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/dialog/gk;->b(Lcom/estrongs/android/ui/dialog/gk;I)I

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gl;->a:Lcom/estrongs/android/ui/dialog/gk;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/gk;->b(Lcom/estrongs/android/ui/dialog/gk;)Lcom/estrongs/android/ui/dialog/gm;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gl;->a:Lcom/estrongs/android/ui/dialog/gk;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/gk;->b(Lcom/estrongs/android/ui/dialog/gk;)Lcom/estrongs/android/ui/dialog/gm;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gl;->a:Lcom/estrongs/android/ui/dialog/gk;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/gk;->c(Lcom/estrongs/android/ui/dialog/gk;)I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/gl;->a:Lcom/estrongs/android/ui/dialog/gk;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/gk;->c:[Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/gl;->a:Lcom/estrongs/android/ui/dialog/gk;

    invoke-static {v3}, Lcom/estrongs/android/ui/dialog/gk;->a(Lcom/estrongs/android/ui/dialog/gk;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/gm;->a(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
