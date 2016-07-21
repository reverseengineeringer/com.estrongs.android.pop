.class Lcom/estrongs/android/pop/app/compress/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/l;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/l;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/u;->a:Lcom/estrongs/android/pop/app/compress/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/u;->a:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->b(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/u;->a:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->b(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/io/archive/i;->d()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/u;->a:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->a(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/io/a/a/a;->e()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/u;->a:Lcom/estrongs/android/pop/app/compress/l;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/l;->c()V

    return-void
.end method
