.class Lorg/apache/log4j/helpers/PatternParser$CategoryPatternConverter;
.super Lorg/apache/log4j/helpers/PatternParser$NamedPatternConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/helpers/PatternParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CategoryPatternConverter"
.end annotation


# instance fields
.field private final this$0:Lorg/apache/log4j/helpers/PatternParser;


# direct methods
.method constructor <init>(Lorg/apache/log4j/helpers/PatternParser;Lorg/apache/log4j/helpers/FormattingInfo;I)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lorg/apache/log4j/helpers/PatternParser$NamedPatternConverter;-><init>(Lorg/apache/log4j/helpers/FormattingInfo;I)V

    iput-object p1, p0, Lorg/apache/log4j/helpers/PatternParser$CategoryPatternConverter;->this$0:Lorg/apache/log4j/helpers/PatternParser;

    return-void
.end method


# virtual methods
.method getFullyQualifiedName(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method