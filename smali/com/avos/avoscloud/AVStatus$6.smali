.class Lcom/avos/avoscloud/AVStatus$6;
.super Lcom/avos/avoscloud/DeleteCallback;
.source "AVStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVStatus;->delete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVStatus;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVStatus;)V
    .locals 0

    .prologue
    .line 824
    iput-object p1, p0, Lcom/avos/avoscloud/AVStatus$6;->this$0:Lcom/avos/avoscloud/AVStatus;

    invoke-direct {p0}, Lcom/avos/avoscloud/DeleteCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .param p1, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 828
    if-eqz p1, :cond_0

    .line 829
    invoke-static {p1}, Lcom/avos/avoscloud/AVExceptionHolder;->add(Lcom/avos/avoscloud/AVException;)V

    .line 831
    :cond_0
    return-void
.end method

.method protected mustRunOnUIThread()Z
    .locals 1

    .prologue
    .line 835
    const/4 v0, 0x0

    return v0
.end method
