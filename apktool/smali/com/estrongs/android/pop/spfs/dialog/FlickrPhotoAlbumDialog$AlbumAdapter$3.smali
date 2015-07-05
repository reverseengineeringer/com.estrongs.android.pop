.class Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$AlbumAdapter$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$AlbumAdapter;

.field final synthetic val$album_check:Landroid/widget/CheckBox;

.field final synthetic val$album_radio:Landroid/widget/RadioButton;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$AlbumAdapter;Landroid/widget/RadioButton;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$AlbumAdapter$3;->this$1:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$AlbumAdapter;

    iput-object p2, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$AlbumAdapter$3;->val$album_radio:Landroid/widget/RadioButton;

    iput-object p3, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$AlbumAdapter$3;->val$album_check:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$AlbumAdapter$3;->this$1:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$AlbumAdapter;

    iget-object v0, v0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$AlbumAdapter;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->isRadio:Z
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->access$500(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$AlbumAdapter$3;->val$album_radio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$AlbumAdapter$3;->val$album_check:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$AlbumAdapter$3;->val$album_check:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$AlbumAdapter$3;->val$album_check:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
