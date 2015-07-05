.class Lcom/estrongs/android/ui/preference/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/g;

.field final synthetic b:Lcom/estrongs/android/ui/preference/DirChoosePreference;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/preference/DirChoosePreference;Lcom/estrongs/android/widget/g;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/preference/c;->b:Lcom/estrongs/android/ui/preference/DirChoosePreference;

    iput-object p2, p0, Lcom/estrongs/android/ui/preference/c;->a:Lcom/estrongs/android/widget/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/c;->b:Lcom/estrongs/android/ui/preference/DirChoosePreference;

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/c;->a:Lcom/estrongs/android/widget/g;

    invoke-virtual {v1}, Lcom/estrongs/android/widget/g;->e()Lcom/estrongs/fs/h;

    move-result-object v1

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/ui/preference/DirChoosePreference;->a:Ljava/lang/String;

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
