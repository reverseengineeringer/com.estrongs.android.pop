.class Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$new_album_check:Landroid/widget/CheckBox;

.field final synthetic val$new_album_name:Landroid/widget/EditText;

.field final synthetic val$scan_progress:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;Landroid/widget/ProgressBar;Landroid/widget/CheckBox;Landroid/widget/EditText;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$3;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;

    iput-object p2, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$3;->val$scan_progress:Landroid/widget/ProgressBar;

    iput-object p3, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$3;->val$new_album_check:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$3;->val$new_album_name:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$3;->val$scan_progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$3;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->isRadio:Z
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->access$500(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$3;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->new_album_radio:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->access$600(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const-string v0, ""

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$3;->val$new_album_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$3;->val$context:Landroid/content/Context;

    const v1, 0x7f0b02e7

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/utils/a;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$3;->val$new_album_check:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$3;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;

    iget-object v0, v0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->selectedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$3;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->checkedInfo:[Z
    invoke-static {v3}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->access$300(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;)[Z

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$3;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->checkedInfo:[Z
    invoke-static {v3}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->access$300(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;)[Z

    move-result-object v3

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$3;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;

    iget-object v3, v3, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->selectedList:Ljava/util/List;

    iget-object v4, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$3;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->allAlbumList:Ljava/util/List;
    invoke-static {v4}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->access$100(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$3;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;

    iget-object v0, v0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->selectedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/spfs/Album;

    iget-object v4, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$3;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;

    iget-object v5, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$3;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->albumList:Ljava/util/List;
    invoke-static {v5}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->access$200(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;)Ljava/util/List;

    move-result-object v5

    # invokes: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->albumContains(Ljava/util/List;Lcom/estrongs/android/pop/spfs/Album;)Z
    invoke-static {v4, v5, v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->access$400(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;Ljava/util/List;Lcom/estrongs/android/pop/spfs/Album;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$3;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->albumList:Ljava/util/List;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->access$200(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/spfs/Album;

    iget-object v4, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$3;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;

    iget-object v5, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$3;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;

    iget-object v5, v5, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->selectedList:Ljava/util/List;

    # invokes: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->albumContains(Ljava/util/List;Lcom/estrongs/android/pop/spfs/Album;)Z
    invoke-static {v4, v5, v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->access$400(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;Ljava/util/List;Lcom/estrongs/android/pop/spfs/Album;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$3;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->mAocb:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$AlbumOptionCallback;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->access$700(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;)Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$AlbumOptionCallback;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$3;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;

    iget-object v3, v3, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->selectedList:Ljava/util/List;

    iget-object v4, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$3;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->isRadio:Z
    invoke-static {v4}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->access$500(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$3;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->new_album_radio:Landroid/widget/RadioButton;
    invoke-static {v4}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->access$600(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;)Landroid/widget/RadioButton;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v4

    :goto_4
    iget-object v5, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$3;->val$new_album_name:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$AlbumOptionCallback;->setAlbum(Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$3;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;->dismiss()V

    goto/16 :goto_0

    :cond_a
    iget-object v4, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$3;->val$new_album_check:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    goto :goto_4
.end method
