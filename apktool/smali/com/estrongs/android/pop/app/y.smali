.class Lcom/estrongs/android/pop/app/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/r;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/r;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/y;->a:Lcom/estrongs/android/pop/app/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/y;->a:Lcom/estrongs/android/pop/app/r;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/r;->a(Lcom/estrongs/android/pop/app/r;)Lcom/estrongs/android/pop/app/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/aa;->q()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/y;->a:Lcom/estrongs/android/pop/app/r;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/r;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/y;->a:Lcom/estrongs/android/pop/app/r;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/r;->i(Lcom/estrongs/android/pop/app/r;)Lcom/estrongs/android/pop/app/ae;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/y;->a:Lcom/estrongs/android/pop/app/r;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/r;->i(Lcom/estrongs/android/pop/app/r;)Lcom/estrongs/android/pop/app/ae;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/ae;->b()V

    :cond_0
    return-void
.end method
