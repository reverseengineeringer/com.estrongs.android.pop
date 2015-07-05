.class Lcom/estrongs/android/ui/preference/fragments/ae;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/preference/fragments/ae;->a:Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->K:Lcom/estrongs/fs/i;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/estrongs/fs/i;->a(Lcom/estrongs/fs/h;)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
