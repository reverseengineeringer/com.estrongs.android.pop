.class Lcom/estrongs/android/pop/app/compress/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/i;->a:Lcom/estrongs/android/pop/app/compress/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/i;->a:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/a;->n(Lcom/estrongs/android/pop/app/compress/a;)Lcom/estrongs/android/pop/app/compress/j;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/i;->a:Lcom/estrongs/android/pop/app/compress/a;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/i;->a:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/a;->f(Lcom/estrongs/android/pop/app/compress/a;)Lcom/estrongs/android/pop/app/compress/k;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/estrongs/android/pop/app/compress/j;->a(Lcom/estrongs/android/pop/app/compress/a;Lcom/estrongs/android/pop/app/compress/k;)V

    return-void
.end method
