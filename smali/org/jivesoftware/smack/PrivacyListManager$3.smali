.class Lorg/jivesoftware/smack/PrivacyListManager$3;
.super Ljava/lang/Object;
.source "PrivacyListManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/PrivacyListManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smack/PrivacyListManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/PrivacyListManager;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lorg/jivesoftware/smack/PrivacyListManager$3;->this$0:Lorg/jivesoftware/smack/PrivacyListManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 8

    .prologue
    .line 117
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 121
    check-cast v0, Lorg/jivesoftware/smack/packet/Privacy;

    .line 124
    iget-object v1, p0, Lorg/jivesoftware/smack/PrivacyListManager$3;->this$0:Lorg/jivesoftware/smack/PrivacyListManager;

    # getter for: Lorg/jivesoftware/smack/PrivacyListManager;->listeners:Ljava/util/List;
    invoke-static {v1}, Lorg/jivesoftware/smack/PrivacyListManager;->access$300(Lorg/jivesoftware/smack/PrivacyListManager;)Ljava/util/List;

    move-result-object v4

    monitor-enter v4

    .line 125
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/PrivacyListManager$3;->this$0:Lorg/jivesoftware/smack/PrivacyListManager;

    # getter for: Lorg/jivesoftware/smack/PrivacyListManager;->listeners:Ljava/util/List;
    invoke-static {v1}, Lorg/jivesoftware/smack/PrivacyListManager;->access$300(Lorg/jivesoftware/smack/PrivacyListManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/PrivacyListListener;

    .line 127
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Privacy;->getItemLists()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 128
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 129
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 130
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 131
    invoke-interface {v1, v3}, Lorg/jivesoftware/smack/PrivacyListListener;->updatedPrivacyList(Ljava/lang/String;)V

    goto :goto_1

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 133
    :cond_3
    :try_start_1
    invoke-interface {v1, v3, v2}, Lorg/jivesoftware/smack/PrivacyListListener;->setPrivacyList(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 137
    :cond_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    new-instance v0, Lorg/jivesoftware/smack/PrivacyListManager$3$1;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/PrivacyListManager$3$1;-><init>(Lorg/jivesoftware/smack/PrivacyListManager$3;)V

    .line 147
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 148
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/IQ;->setFrom(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getPacketID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/IQ;->setPacketID(Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lorg/jivesoftware/smack/PrivacyListManager$3;->this$0:Lorg/jivesoftware/smack/PrivacyListManager;

    # getter for: Lorg/jivesoftware/smack/PrivacyListManager;->connection:Lorg/jivesoftware/smack/Connection;
    invoke-static {v1}, Lorg/jivesoftware/smack/PrivacyListManager;->access$100(Lorg/jivesoftware/smack/PrivacyListManager;)Lorg/jivesoftware/smack/Connection;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0
.end method
