.class Lcom/avos/avoscloud/AVUser$24;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVUser;->unfollowInBackground(Ljava/lang/String;Lcom/avos/avoscloud/FollowCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVUser;

.field final synthetic val$callback:Lcom/avos/avoscloud/FollowCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/FollowCallback;)V
    .locals 0

    .prologue
    .line 1393
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser$24;->this$0:Lcom/avos/avoscloud/AVUser;

    iput-object p2, p0, Lcom/avos/avoscloud/AVUser$24;->val$callback:Lcom/avos/avoscloud/FollowCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 1405
    invoke-super {p0, p1, p2}, Lcom/avos/avoscloud/GenericObjectCallback;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1407
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$24;->val$callback:Lcom/avos/avoscloud/FollowCallback;

    if-eqz v0, :cond_0

    .line 1408
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$24;->val$callback:Lcom/avos/avoscloud/FollowCallback;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/FollowCallback;->internalDone0(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVException;)V

    .line 1410
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 1396
    invoke-super {p0, p1, p2}, Lcom/avos/avoscloud/GenericObjectCallback;->onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V

    .line 1398
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$24;->val$callback:Lcom/avos/avoscloud/FollowCallback;

    if-eqz v0, :cond_0

    .line 1399
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$24;->val$callback:Lcom/avos/avoscloud/FollowCallback;

    iget-object v1, p0, Lcom/avos/avoscloud/AVUser$24;->this$0:Lcom/avos/avoscloud/AVUser;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/FollowCallback;->internalDone0(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVException;)V

    .line 1401
    :cond_0
    return-void
.end method
