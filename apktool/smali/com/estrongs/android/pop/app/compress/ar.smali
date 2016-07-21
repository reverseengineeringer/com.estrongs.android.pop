.class Lcom/estrongs/android/pop/app/compress/ar;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/aj;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/aj;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/ar;->a:Lcom/estrongs/android/pop/app/compress/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Lcom/estrongs/android/ui/dialog/cv;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ar;->a:Lcom/estrongs/android/pop/app/compress/aj;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/aj;->d(Lcom/estrongs/android/pop/app/compress/aj;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08021f

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->a(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ar;->a:Lcom/estrongs/android/pop/app/compress/aj;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/aj;->m(Lcom/estrongs/android/pop/app/compress/aj;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/ar;->a:Lcom/estrongs/android/pop/app/compress/aj;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/aj;->n(Lcom/estrongs/android/pop/app/compress/aj;)I

    move-result v2

    new-instance v3, Lcom/estrongs/android/pop/app/compress/au;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/compress/au;-><init>(Lcom/estrongs/android/pop/app/compress/ar;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/ui/dialog/cv;->a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f080226

    new-instance v2, Lcom/estrongs/android/pop/app/compress/at;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/compress/at;-><init>(Lcom/estrongs/android/pop/app/compress/ar;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f080221

    new-instance v2, Lcom/estrongs/android/pop/app/compress/as;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/compress/as;-><init>(Lcom/estrongs/android/pop/app/compress/ar;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->c()Lcom/estrongs/android/ui/dialog/ci;

    return-void
.end method
