.class Lcom/estrongs/android/view/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/g;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/g;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/q;->a:Lcom/estrongs/android/view/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/q;->a:Lcom/estrongs/android/view/g;

    invoke-static {v0}, Lcom/estrongs/android/view/g;->a(Lcom/estrongs/android/view/g;)Lcom/estrongs/android/pop/app/compress/bs;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/q;->a:Lcom/estrongs/android/view/g;

    invoke-static {v1}, Lcom/estrongs/android/view/g;->i(Lcom/estrongs/android/view/g;)Lcom/estrongs/android/pop/app/compress/cb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/compress/cb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/compress/bs;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/view/q;->a:Lcom/estrongs/android/view/g;

    invoke-static {v0}, Lcom/estrongs/android/view/g;->a(Lcom/estrongs/android/view/g;)Lcom/estrongs/android/pop/app/compress/bs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/bs;->show()V

    iget-object v0, p0, Lcom/estrongs/android/view/q;->a:Lcom/estrongs/android/view/g;

    invoke-static {v0}, Lcom/estrongs/android/view/g;->i(Lcom/estrongs/android/view/g;)Lcom/estrongs/android/pop/app/compress/cb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/cb;->dismiss()V

    return-void
.end method
