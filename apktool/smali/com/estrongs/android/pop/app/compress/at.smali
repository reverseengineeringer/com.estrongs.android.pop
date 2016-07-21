.class Lcom/estrongs/android/pop/app/compress/at;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/ar;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/at;->a:Lcom/estrongs/android/pop/app/compress/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/at;->a:Lcom/estrongs/android/pop/app/compress/ar;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/ar;->a:Lcom/estrongs/android/pop/app/compress/aj;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/aj;->o(Lcom/estrongs/android/pop/app/compress/aj;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/at;->a:Lcom/estrongs/android/pop/app/compress/ar;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/ar;->a:Lcom/estrongs/android/pop/app/compress/aj;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/aj;->m(Lcom/estrongs/android/pop/app/compress/aj;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/at;->a:Lcom/estrongs/android/pop/app/compress/ar;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/compress/ar;->a:Lcom/estrongs/android/pop/app/compress/aj;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/aj;->n(Lcom/estrongs/android/pop/app/compress/aj;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
