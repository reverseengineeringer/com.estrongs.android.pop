.class Lcom/estrongs/android/pop/app/gs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/gs;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/gs;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->showDialog(I)V

    const/4 v0, 0x1

    return v0
.end method
