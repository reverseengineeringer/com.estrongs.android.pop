.class Lcom/estrongs/android/pop/app/compress/bc;
.super Lcom/estrongs/io/archive/c;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/bb;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/bb;Landroid/content/Context;Lcom/estrongs/android/pop/app/compress/l;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/bc;->a:Lcom/estrongs/android/pop/app/compress/bb;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/estrongs/io/archive/c;-><init>(Landroid/content/Context;Lcom/estrongs/android/pop/app/compress/l;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bc;->a:Lcom/estrongs/android/pop/app/compress/bb;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/compress/bb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bc;->a:Lcom/estrongs/android/pop/app/compress/bb;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/bb;->a(Lcom/estrongs/android/pop/app/compress/bb;)Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->show()V

    return-void
.end method
