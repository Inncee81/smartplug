.class Lcom/avos/avoscloud/AVQuery$6;
.super Lcom/avos/avoscloud/GetCallback;
.source "AVQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVQuery;->get(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/GetCallback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVQuery;

.field final synthetic val$result:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVQuery;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 718
    .local p0, "this":Lcom/avos/avoscloud/AVQuery$6;, "Lcom/avos/avoscloud/AVQuery.6;"
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery$6;->this$0:Lcom/avos/avoscloud/AVQuery;

    iput-object p2, p0, Lcom/avos/avoscloud/AVQuery$6;->val$result:[Ljava/lang/Object;

    invoke-direct {p0}, Lcom/avos/avoscloud/GetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVException;)V
    .locals 2
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/avos/avoscloud/AVException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 721
    .local p0, "this":Lcom/avos/avoscloud/AVQuery$6;, "Lcom/avos/avoscloud/AVQuery.6;"
    .local p1, "object":Lcom/avos/avoscloud/AVObject;, "TT;"
    if-nez p2, :cond_0

    .line 722
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$6;->val$result:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 726
    :goto_0
    return-void

    .line 724
    :cond_0
    invoke-static {p2}, Lcom/avos/avoscloud/AVExceptionHolder;->add(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method

.method protected mustRunOnUIThread()Z
    .locals 1

    .prologue
    .line 730
    .local p0, "this":Lcom/avos/avoscloud/AVQuery$6;, "Lcom/avos/avoscloud/AVQuery.6;"
    const/4 v0, 0x0

    return v0
.end method
