.class public Lorg/dom4j/tree/ConcurrentReaderHashMap$KeyIterator;
.super Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;
.source "ConcurrentReaderHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/dom4j/tree/ConcurrentReaderHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "KeyIterator"
.end annotation


# instance fields
.field private final this$0:Lorg/dom4j/tree/ConcurrentReaderHashMap;


# direct methods
.method protected constructor <init>(Lorg/dom4j/tree/ConcurrentReaderHashMap;)V
    .locals 0
    .param p1, "this$0"    # Lorg/dom4j/tree/ConcurrentReaderHashMap;

    .prologue
    .line 1198
    invoke-direct {p0, p1}, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;-><init>(Lorg/dom4j/tree/ConcurrentReaderHashMap;)V

    iput-object p1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$KeyIterator;->this$0:Lorg/dom4j/tree/ConcurrentReaderHashMap;

    return-void
.end method


# virtual methods
.method protected returnValueOfNext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1200
    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$KeyIterator;->currentKey:Ljava/lang/Object;

    return-object v0
.end method
