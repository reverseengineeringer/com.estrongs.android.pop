.class Lcom/estrongs/android/ui/preference/fragments/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/cc;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/g;

.field final synthetic b:Lcom/estrongs/android/ui/preference/fragments/n;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/preference/fragments/n;Lcom/estrongs/android/widget/g;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/preference/fragments/p;->b:Lcom/estrongs/android/ui/preference/fragments/n;

    iput-object p2, p0, Lcom/estrongs/android/ui/preference/fragments/p;->a:Lcom/estrongs/android/widget/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/fs/h;)V
    .locals 2

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/p;->b:Lcom/estrongs/android/ui/preference/fragments/n;

    iget-object v1, v1, Lcom/estrongs/android/ui/preference/fragments/n;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/p;->a:Lcom/estrongs/android/widget/g;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/g;->k()V

    return-void
.end method
