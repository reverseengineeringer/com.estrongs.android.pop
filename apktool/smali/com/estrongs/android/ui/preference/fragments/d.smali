.class Lcom/estrongs/android/ui/preference/fragments/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/preference/fragments/d;->a:Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/d;->a:Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;

    invoke-static {v0}, Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;->d(Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
