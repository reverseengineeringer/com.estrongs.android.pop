.class Lcom/estrongs/android/ui/preference/fragments/be;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/preference/fragments/WindowPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/preference/fragments/WindowPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/preference/fragments/be;->a:Lcom/estrongs/android/ui/preference/fragments/WindowPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/be;->a:Lcom/estrongs/android/ui/preference/fragments/WindowPreferenceFragment;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.estrongs.action.DEFAULT_OPEN_WINDOW_LIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/preference/fragments/WindowPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method
