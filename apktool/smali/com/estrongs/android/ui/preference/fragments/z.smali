.class Lcom/estrongs/android/ui/preference/fragments/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/preference/fragments/z;->a:Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/z;->a:Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;

    invoke-static {v0}, Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;->f(Lcom/estrongs/android/ui/preference/fragments/DirectoryPreferenceFragment;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
