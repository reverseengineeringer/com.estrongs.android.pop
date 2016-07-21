.class Lcom/estrongs/android/pop/app/compress/av;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/aj;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/aj;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/av;->a:Lcom/estrongs/android/pop/app/compress/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/av;->a:Lcom/estrongs/android/pop/app/compress/aj;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/aj;->a(Lcom/estrongs/android/pop/app/compress/aj;)Lcom/estrongs/io/a/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/io/a/a/b;->e()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/av;->a:Lcom/estrongs/android/pop/app/compress/aj;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/aj;->b:Lcom/estrongs/io/archive/j;

    instance-of v0, v0, Lcom/estrongs/io/archive/sevenzip/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/av;->a:Lcom/estrongs/android/pop/app/compress/aj;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/aj;->b:Lcom/estrongs/io/archive/j;

    check-cast v0, Lcom/estrongs/io/archive/sevenzip/x;

    invoke-virtual {v0}, Lcom/estrongs/io/archive/sevenzip/x;->b()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/av;->a:Lcom/estrongs/android/pop/app/compress/aj;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/aj;->a()V

    return-void
.end method
