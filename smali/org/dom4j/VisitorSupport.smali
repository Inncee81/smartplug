.class public abstract Lorg/dom4j/VisitorSupport;
.super Ljava/lang/Object;
.source "VisitorSupport.java"

# interfaces
.implements Lorg/dom4j/Visitor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public visit(Lorg/dom4j/Attribute;)V
    .locals 0
    .param p1, "node"    # Lorg/dom4j/Attribute;

    .prologue
    .line 34
    return-void
.end method

.method public visit(Lorg/dom4j/CDATA;)V
    .locals 0
    .param p1, "node"    # Lorg/dom4j/CDATA;

    .prologue
    .line 37
    return-void
.end method

.method public visit(Lorg/dom4j/Comment;)V
    .locals 0
    .param p1, "node"    # Lorg/dom4j/Comment;

    .prologue
    .line 40
    return-void
.end method

.method public visit(Lorg/dom4j/Document;)V
    .locals 0
    .param p1, "document"    # Lorg/dom4j/Document;

    .prologue
    .line 25
    return-void
.end method

.method public visit(Lorg/dom4j/DocumentType;)V
    .locals 0
    .param p1, "documentType"    # Lorg/dom4j/DocumentType;

    .prologue
    .line 28
    return-void
.end method

.method public visit(Lorg/dom4j/Element;)V
    .locals 0
    .param p1, "node"    # Lorg/dom4j/Element;

    .prologue
    .line 31
    return-void
.end method

.method public visit(Lorg/dom4j/Entity;)V
    .locals 0
    .param p1, "node"    # Lorg/dom4j/Entity;

    .prologue
    .line 43
    return-void
.end method

.method public visit(Lorg/dom4j/Namespace;)V
    .locals 0
    .param p1, "namespace"    # Lorg/dom4j/Namespace;

    .prologue
    .line 46
    return-void
.end method

.method public visit(Lorg/dom4j/ProcessingInstruction;)V
    .locals 0
    .param p1, "node"    # Lorg/dom4j/ProcessingInstruction;

    .prologue
    .line 49
    return-void
.end method

.method public visit(Lorg/dom4j/Text;)V
    .locals 0
    .param p1, "node"    # Lorg/dom4j/Text;

    .prologue
    .line 52
    return-void
.end method
