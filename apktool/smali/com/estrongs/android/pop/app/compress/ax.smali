.class Lcom/estrongs/android/pop/app/compress/ax;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/aw;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/aw;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/ax;->a:Lcom/estrongs/android/pop/app/compress/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ax;->a:Lcom/estrongs/android/pop/app/compress/aw;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/estrongs/android/pop/app/compress/aw;->a:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ax;->a:Lcom/estrongs/android/pop/app/compress/aw;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/aw;->a(Lcom/estrongs/android/pop/app/compress/aw;)Lcom/estrongs/io/archive/h;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/io/archive/sevenzip/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ax;->a:Lcom/estrongs/android/pop/app/compress/aw;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/aw;->a(Lcom/estrongs/android/pop/app/compress/aw;)Lcom/estrongs/io/archive/h;

    move-result-object v0

    check-cast v0, Lcom/estrongs/io/archive/sevenzip/r;

    invoke-virtual {v0}, Lcom/estrongs/io/archive/sevenzip/r;->d()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ax;->a:Lcom/estrongs/android/pop/app/compress/aw;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/aw;->dismiss()V

    return-void
.end method
