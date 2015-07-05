.class Lcom/estrongs/android/pop/app/compress/au;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/ai;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/ai;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/au;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/au;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/ai;->a(Lcom/estrongs/android/pop/app/compress/ai;)Lcom/estrongs/io/a/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/io/a/a/b;->e()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/au;->a:Lcom/estrongs/android/pop/app/compress/ai;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/ai;->b:Lcom/estrongs/io/archive/i;

    instance-of v0, v0, Lcom/estrongs/io/archive/sevenzip/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/au;->a:Lcom/estrongs/android/pop/app/compress/ai;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/ai;->b:Lcom/estrongs/io/archive/i;

    check-cast v0, Lcom/estrongs/io/archive/sevenzip/x;

    invoke-virtual {v0}, Lcom/estrongs/io/archive/sevenzip/x;->b()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/au;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/ai;->a()V

    return-void
.end method
