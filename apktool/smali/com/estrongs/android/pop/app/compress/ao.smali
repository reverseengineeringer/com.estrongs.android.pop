.class Lcom/estrongs/android/pop/app/compress/ao;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/d/h;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/an;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/an;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/ao;->a:Lcom/estrongs/android/pop/app/compress/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ao;->a:Lcom/estrongs/android/pop/app/compress/an;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/an;->a:Lcom/estrongs/android/pop/app/compress/aj;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/aj;->h(Lcom/estrongs/android/pop/app/compress/aj;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ao;->a:Lcom/estrongs/android/pop/app/compress/an;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/an;->a:Lcom/estrongs/android/pop/app/compress/aj;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/aj;->b(Lcom/estrongs/android/pop/app/compress/aj;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method
