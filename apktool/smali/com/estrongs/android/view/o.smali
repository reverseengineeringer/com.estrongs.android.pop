.class Lcom/estrongs/android/view/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/e;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/e;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/o;->a:Lcom/estrongs/android/view/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/o;->a:Lcom/estrongs/android/view/e;

    invoke-static {v0}, Lcom/estrongs/android/view/e;->a(Lcom/estrongs/android/view/e;)Lcom/estrongs/android/pop/app/compress/aw;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/o;->a:Lcom/estrongs/android/view/e;

    invoke-static {v1}, Lcom/estrongs/android/view/e;->i(Lcom/estrongs/android/view/e;)Lcom/estrongs/android/pop/app/compress/be;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/compress/be;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/compress/aw;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/view/o;->a:Lcom/estrongs/android/view/e;

    invoke-static {v0}, Lcom/estrongs/android/view/e;->a(Lcom/estrongs/android/view/e;)Lcom/estrongs/android/pop/app/compress/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/aw;->show()V

    iget-object v0, p0, Lcom/estrongs/android/view/o;->a:Lcom/estrongs/android/view/e;

    invoke-static {v0}, Lcom/estrongs/android/view/e;->i(Lcom/estrongs/android/view/e;)Lcom/estrongs/android/pop/app/compress/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/be;->dismiss()V

    return-void
.end method
