.class Lcom/estrongs/android/pop/app/compress/bt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/bs;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/bs;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/bt;->a:Lcom/estrongs/android/pop/app/compress/bs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bt;->a:Lcom/estrongs/android/pop/app/compress/bs;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/estrongs/android/pop/app/compress/bs;->a:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bt;->a:Lcom/estrongs/android/pop/app/compress/bs;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/bs;->a(Lcom/estrongs/android/pop/app/compress/bs;)Lcom/estrongs/io/archive/i;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/io/archive/sevenzip/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bt;->a:Lcom/estrongs/android/pop/app/compress/bs;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/bs;->a(Lcom/estrongs/android/pop/app/compress/bs;)Lcom/estrongs/io/archive/i;

    move-result-object v0

    check-cast v0, Lcom/estrongs/io/archive/sevenzip/r;

    invoke-virtual {v0}, Lcom/estrongs/io/archive/sevenzip/r;->d()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bt;->a:Lcom/estrongs/android/pop/app/compress/bs;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/bs;->dismiss()V

    return-void
.end method
