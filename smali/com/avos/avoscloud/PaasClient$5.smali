.class Lcom/avos/avoscloud/PaasClient$5;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "PaasClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/PaasClient;->handleArchivedRequest(Ljava/io/File;ZLcom/avos/avoscloud/GenericObjectCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/PaasClient;

.field final synthetic val$archivedFile:Ljava/io/File;

.field final synthetic val$callback:Lcom/avos/avoscloud/GenericObjectCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/PaasClient;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 676
    iput-object p1, p0, Lcom/avos/avoscloud/PaasClient$5;->this$0:Lcom/avos/avoscloud/PaasClient;

    iput-object p2, p0, Lcom/avos/avoscloud/PaasClient$5;->val$callback:Lcom/avos/avoscloud/GenericObjectCallback;

    iput-object p3, p0, Lcom/avos/avoscloud/PaasClient$5;->val$archivedFile:Ljava/io/File;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 702
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient$5;->val$callback:Lcom/avos/avoscloud/GenericObjectCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient$5;->val$callback:Lcom/avos/avoscloud/GenericObjectCallback;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/GenericObjectCallback;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient$5;->val$archivedFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVPersistenceUtils;->removeLock(Ljava/lang/String;)V

    .line 704
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 6
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 679
    iget-object v4, p0, Lcom/avos/avoscloud/PaasClient$5;->val$callback:Lcom/avos/avoscloud/GenericObjectCallback;

    if-eqz v4, :cond_0

    .line 680
    iget-object v4, p0, Lcom/avos/avoscloud/PaasClient$5;->val$callback:Lcom/avos/avoscloud/GenericObjectCallback;

    invoke-virtual {v4, p1, p2}, Lcom/avos/avoscloud/GenericObjectCallback;->onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V

    .line 683
    :cond_0
    :try_start_0
    const-class v4, Ljava/util/Map;

    invoke-static {p1, v4}, Lcom/avos/avoscloud/AVUtils;->getFromJSON(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 684
    .local v3, "objectMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 685
    .local v0, "_internalId":Ljava/lang/String;
    sget-object v4, Lcom/avos/avoscloud/PaasClient;->internalObjectsForEventuallySave:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 686
    sget-object v4, Lcom/avos/avoscloud/PaasClient;->internalObjectsForEventuallySave:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/avos/avoscloud/AVObjectReferenceCount;

    invoke-virtual {v4}, Lcom/avos/avoscloud/AVObjectReferenceCount;->getValue()Lcom/avos/avoscloud/AVObject;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/avos/avoscloud/AVObject;->copyFromMap(Ljava/util/Map;)V

    .line 688
    sget-object v4, Lcom/avos/avoscloud/PaasClient;->internalObjectsForEventuallySave:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/avos/avoscloud/AVObjectReferenceCount;

    invoke-virtual {v4}, Lcom/avos/avoscloud/AVObjectReferenceCount;->getValue()Lcom/avos/avoscloud/AVObject;

    move-result-object v4

    invoke-static {v4}, Lcom/avos/avoscloud/PaasClient;->unregisterEvtuallyObject(Lcom/avos/avoscloud/AVObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 692
    .end local v0    # "_internalId":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "objectMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 693
    .local v1, "e1":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parse exception during archive request"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/avos/avoscloud/AVException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    .line 695
    .end local v1    # "e1":Ljava/lang/Exception;
    :cond_2
    iget-object v4, p0, Lcom/avos/avoscloud/PaasClient$5;->val$archivedFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 696
    iget-object v4, p0, Lcom/avos/avoscloud/PaasClient$5;->val$archivedFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/avos/avoscloud/AVPersistenceUtils;->removeLock(Ljava/lang/String;)V

    .line 697
    return-void
.end method
