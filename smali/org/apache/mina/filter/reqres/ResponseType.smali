.class public final enum Lorg/apache/mina/filter/reqres/ResponseType;
.super Ljava/lang/Enum;
.source "ResponseType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/mina/filter/reqres/ResponseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/mina/filter/reqres/ResponseType;

.field public static final enum PARTIAL:Lorg/apache/mina/filter/reqres/ResponseType;

.field public static final enum PARTIAL_LAST:Lorg/apache/mina/filter/reqres/ResponseType;

.field public static final enum WHOLE:Lorg/apache/mina/filter/reqres/ResponseType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lorg/apache/mina/filter/reqres/ResponseType;

    const-string v1, "WHOLE"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/filter/reqres/ResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/mina/filter/reqres/ResponseType;->WHOLE:Lorg/apache/mina/filter/reqres/ResponseType;

    new-instance v0, Lorg/apache/mina/filter/reqres/ResponseType;

    const-string v1, "PARTIAL"

    invoke-direct {v0, v1, v3}, Lorg/apache/mina/filter/reqres/ResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/mina/filter/reqres/ResponseType;->PARTIAL:Lorg/apache/mina/filter/reqres/ResponseType;

    new-instance v0, Lorg/apache/mina/filter/reqres/ResponseType;

    const-string v1, "PARTIAL_LAST"

    invoke-direct {v0, v1, v4}, Lorg/apache/mina/filter/reqres/ResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/mina/filter/reqres/ResponseType;->PARTIAL_LAST:Lorg/apache/mina/filter/reqres/ResponseType;

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/mina/filter/reqres/ResponseType;

    sget-object v1, Lorg/apache/mina/filter/reqres/ResponseType;->WHOLE:Lorg/apache/mina/filter/reqres/ResponseType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/mina/filter/reqres/ResponseType;->PARTIAL:Lorg/apache/mina/filter/reqres/ResponseType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/mina/filter/reqres/ResponseType;->PARTIAL_LAST:Lorg/apache/mina/filter/reqres/ResponseType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/apache/mina/filter/reqres/ResponseType;->$VALUES:[Lorg/apache/mina/filter/reqres/ResponseType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/mina/filter/reqres/ResponseType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lorg/apache/mina/filter/reqres/ResponseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/reqres/ResponseType;

    return-object v0
.end method

.method public static values()[Lorg/apache/mina/filter/reqres/ResponseType;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lorg/apache/mina/filter/reqres/ResponseType;->$VALUES:[Lorg/apache/mina/filter/reqres/ResponseType;

    invoke-virtual {v0}, [Lorg/apache/mina/filter/reqres/ResponseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/mina/filter/reqres/ResponseType;

    return-object v0
.end method
