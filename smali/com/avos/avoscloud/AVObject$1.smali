.class Lcom/avos/avoscloud/AVObject$1;
.super Lcom/avos/avoscloud/DeleteCallback;
.source "AVObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVObject;->delete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVObject;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVObject;)V
    .locals 0

    .prologue
    .line 415
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject$1;->this$0:Lcom/avos/avoscloud/AVObject;

    invoke-direct {p0}, Lcom/avos/avoscloud/DeleteCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .param p1, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 418
    if-eqz p1, :cond_0

    .line 419
    invoke-static {p1}, Lcom/avos/avoscloud/AVExceptionHolder;->add(Lcom/avos/avoscloud/AVException;)V

    .line 421
    :cond_0
    return-void
.end method

.method protected mustRunOnUIThread()Z
    .locals 1

    .prologue
    .line 425
    const/4 v0, 0x0

    return v0
.end method
