.class Lcom/estrongs/android/pop/app/compress/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/util/e;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/d;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/d;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/e;->a:Lcom/estrongs/android/pop/app/compress/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/e;->a:Lcom/estrongs/android/pop/app/compress/d;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/d;->b:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/a;->i(Lcom/estrongs/android/pop/app/compress/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/e;->a:Lcom/estrongs/android/pop/app/compress/d;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/d;->b:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/app/compress/a;->c(Lcom/estrongs/android/pop/app/compress/a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/e;->a:Lcom/estrongs/android/pop/app/compress/d;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/d;->a:Landroid/view/View;

    const v1, 0x7f0a0056

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
