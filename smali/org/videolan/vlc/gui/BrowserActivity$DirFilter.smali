.class Lorg/videolan/vlc/gui/BrowserActivity$DirFilter;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/BrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DirFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/BrowserActivity;


# direct methods
.method private constructor <init>(Lorg/videolan/vlc/gui/BrowserActivity;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lorg/videolan/vlc/gui/BrowserActivity$DirFilter;->this$0:Lorg/videolan/vlc/gui/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/videolan/vlc/gui/BrowserActivity;Lorg/videolan/vlc/gui/BrowserActivity$DirFilter;)V
    .locals 0

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lorg/videolan/vlc/gui/BrowserActivity$DirFilter;-><init>(Lorg/videolan/vlc/gui/BrowserActivity;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 3
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 287
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/videolan/libvlc/Media;->FOLDER_BLACKLIST:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
