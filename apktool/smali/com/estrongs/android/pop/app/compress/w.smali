.class Lcom/estrongs/android/pop/app/compress/w;
.super Lcom/estrongs/io/archive/d;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/l;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/l;Landroid/content/Context;Lcom/estrongs/android/pop/app/compress/l;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/w;->a:Lcom/estrongs/android/pop/app/compress/l;

    invoke-direct {p0, p2, p3, p4}, Lcom/estrongs/io/archive/d;-><init>(Landroid/content/Context;Lcom/estrongs/android/pop/app/compress/l;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/w;->a:Lcom/estrongs/android/pop/app/compress/l;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/compress/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/w;->a:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->c(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->show()V

    return-void
.end method
