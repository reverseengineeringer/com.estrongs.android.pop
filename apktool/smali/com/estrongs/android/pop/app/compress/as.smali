.class Lcom/estrongs/android/pop/app/compress/as;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/aq;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/aq;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/as;->a:Lcom/estrongs/android/pop/app/compress/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/as;->a:Lcom/estrongs/android/pop/app/compress/aq;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/aq;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/ai;->o(Lcom/estrongs/android/pop/app/compress/ai;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/as;->a:Lcom/estrongs/android/pop/app/compress/aq;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/aq;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/ai;->m(Lcom/estrongs/android/pop/app/compress/ai;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/as;->a:Lcom/estrongs/android/pop/app/compress/aq;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/compress/aq;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/ai;->n(Lcom/estrongs/android/pop/app/compress/ai;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
