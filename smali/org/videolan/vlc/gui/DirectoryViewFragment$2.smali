.class Lorg/videolan/vlc/gui/DirectoryViewFragment$2;
.super Ljava/lang/Object;
.source "DirectoryViewFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/DirectoryViewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/DirectoryViewFragment;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/DirectoryViewFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/DirectoryViewFragment$2;->this$0:Lorg/videolan/vlc/gui/DirectoryViewFragment;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lorg/videolan/vlc/gui/DirectoryViewFragment$2;->this$0:Lorg/videolan/vlc/gui/DirectoryViewFragment;

    # getter for: Lorg/videolan/vlc/gui/DirectoryViewFragment;->mDirectoryAdapter:Lorg/videolan/vlc/gui/DirectoryAdapter;
    invoke-static {v0}, Lorg/videolan/vlc/gui/DirectoryViewFragment;->access$0(Lorg/videolan/vlc/gui/DirectoryViewFragment;)Lorg/videolan/vlc/gui/DirectoryAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/videolan/vlc/gui/DirectoryAdapter;->isChildFile(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const/4 v0, 0x0

    .line 111
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
