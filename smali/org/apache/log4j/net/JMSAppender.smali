.class public Lorg/apache/log4j/net/JMSAppender;
.super Lorg/apache/log4j/AppenderSkeleton;


# instance fields
.field initialContextFactoryName:Ljava/lang/String;

.field locationInfo:Z

.field password:Ljava/lang/String;

.field providerURL:Ljava/lang/String;

.field securityCredentials:Ljava/lang/String;

.field securityPrincipalName:Ljava/lang/String;

.field tcfBindingName:Ljava/lang/String;

.field topicBindingName:Ljava/lang/String;

.field topicConnection:Ljavax/jms/TopicConnection;

.field topicPublisher:Ljavax/jms/TopicPublisher;

.field topicSession:Ljavax/jms/TopicSession;

.field urlPkgPrefixes:Ljava/lang/String;

.field userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    return-void
.end method


# virtual methods
.method public activateOptions()V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    const-string v0, "Getting initial context."

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->initialContextFactoryName:Ljava/lang/String;

    if-eqz v0, :cond_4

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    const-string v0, "java.naming.factory.initial"

    iget-object v2, p0, Lorg/apache/log4j/net/JMSAppender;->initialContextFactoryName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->providerURL:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "java.naming.provider.url"

    iget-object v2, p0, Lorg/apache/log4j/net/JMSAppender;->providerURL:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->urlPkgPrefixes:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "java.naming.factory.url.pkgs"

    iget-object v2, p0, Lorg/apache/log4j/net/JMSAppender;->urlPkgPrefixes:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->securityPrincipalName:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "java.naming.security.principal"

    iget-object v2, p0, Lorg/apache/log4j/net/JMSAppender;->securityPrincipalName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->securityCredentials:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "java.naming.security.credentials"

    iget-object v2, p0, Lorg/apache/log4j/net/JMSAppender;->securityCredentials:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    new-instance v0, Ljavax/naming/InitialContext;

    invoke-direct {v0, v1}, Ljavax/naming/InitialContext;-><init>(Ljava/util/Hashtable;)V

    move-object v1, v0

    :goto_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Looking up ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/log4j/net/JMSAppender;->tcfBindingName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->tcfBindingName:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lorg/apache/log4j/net/JMSAppender;->lookup(Ljavax/naming/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jms/TopicConnectionFactory;

    const-string v2, "About to create TopicConnection."

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/log4j/net/JMSAppender;->userName:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/apache/log4j/net/JMSAppender;->userName:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/log4j/net/JMSAppender;->password:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljavax/jms/TopicConnectionFactory;->createTopicConnection(Ljava/lang/String;Ljava/lang/String;)Ljavax/jms/TopicConnection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->topicConnection:Ljavax/jms/TopicConnection;

    :goto_3
    const-string v0, "Creating TopicSession, non-transactional, in AUTO_ACKNOWLEDGE mode."

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->topicConnection:Ljavax/jms/TopicConnection;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Ljavax/jms/TopicConnection;->createTopicSession(ZI)Ljavax/jms/TopicSession;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->topicSession:Ljavax/jms/TopicSession;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Looking up topic name ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/log4j/net/JMSAppender;->topicBindingName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "]."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->topicBindingName:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lorg/apache/log4j/net/JMSAppender;->lookup(Ljavax/naming/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jms/Topic;

    const-string v2, "Creating TopicPublisher."

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/log4j/net/JMSAppender;->topicSession:Ljavax/jms/TopicSession;

    invoke-interface {v2, v0}, Ljavax/jms/TopicSession;->createPublisher(Ljavax/jms/Topic;)Ljavax/jms/TopicPublisher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->topicPublisher:Ljavax/jms/TopicPublisher;

    const-string v0, "Starting TopicConnection."

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->topicConnection:Ljavax/jms/TopicConnection;

    invoke-interface {v0}, Ljavax/jms/Connection;->start()V

    invoke-interface {v1}, Ljavax/naming/Context;->close()V

    :goto_4
    return-void

    :cond_2
    const-string v0, "You have set InitialContextFactoryName option but not the ProviderURL. This is likely to cause problems."

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/jms/JMSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error while activating options for appender named ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0, v4}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_4

    :cond_3
    :try_start_1
    const-string v0, "You have set SecurityPrincipalName option but not the SecurityCredentials. This is likely to cause problems."

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/jms/JMSException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/naming/NamingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error while activating options for appender named ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0, v4}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_4

    :cond_4
    :try_start_2
    new-instance v0, Ljavax/naming/InitialContext;

    invoke-direct {v0}, Ljavax/naming/InitialContext;-><init>()V

    move-object v1, v0

    goto/16 :goto_2

    :cond_5
    invoke-interface {v0}, Ljavax/jms/TopicConnectionFactory;->createTopicConnection()Ljavax/jms/TopicConnection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->topicConnection:Ljavax/jms/TopicConnection;
    :try_end_2
    .catch Ljavax/jms/JMSException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/naming/NamingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v0

    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error while activating options for appender named ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0, v4}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto/16 :goto_4
.end method

.method public append(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/apache/log4j/net/JMSAppender;->checkEntryConditions()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->topicSession:Ljavax/jms/TopicSession;

    invoke-interface {v0}, Ljavax/jms/Session;->createObjectMessage()Ljavax/jms/ObjectMessage;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/log4j/net/JMSAppender;->locationInfo:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLocationInformation()Lorg/apache/log4j/spi/LocationInfo;

    :cond_1
    invoke-interface {v0, p1}, Ljavax/jms/ObjectMessage;->setObject(Ljava/io/Serializable;)V

    iget-object v1, p0, Lorg/apache/log4j/net/JMSAppender;->topicPublisher:Ljavax/jms/TopicPublisher;

    invoke-interface {v1, v0}, Ljavax/jms/TopicPublisher;->publish(Ljavax/jms/Message;)V
    :try_end_0
    .catch Ljavax/jms/JMSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not publish message in JMSAppender ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0, v4}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not publish message in JMSAppender ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0, v4}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0
.end method

.method protected checkEntryConditions()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/log4j/net/JMSAppender;->topicConnection:Ljavax/jms/TopicConnection;

    if-nez v1, :cond_1

    const-string v0, "No TopicConnection"

    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " for JMSAppender named ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "]."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_1
    iget-object v1, p0, Lorg/apache/log4j/net/JMSAppender;->topicSession:Ljavax/jms/TopicSession;

    if-nez v1, :cond_2

    const-string v0, "No TopicSession"

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/apache/log4j/net/JMSAppender;->topicPublisher:Ljavax/jms/TopicPublisher;

    if-nez v1, :cond_0

    const-string v0, "No TopicPublisher"

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public declared-synchronized close()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/log4j/AppenderSkeleton;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Closing appender ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/AppenderSkeleton;->closed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->topicSession:Ljavax/jms/TopicSession;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->topicSession:Ljavax/jms/TopicSession;

    invoke-interface {v0}, Ljavax/jms/Session;->close()V

    :cond_1
    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->topicConnection:Ljavax/jms/TopicConnection;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->topicConnection:Ljavax/jms/TopicConnection;

    invoke-interface {v0}, Ljavax/jms/Connection;->close()V
    :try_end_2
    .catch Ljavax/jms/JMSException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->topicPublisher:Ljavax/jms/TopicPublisher;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->topicSession:Ljavax/jms/TopicSession;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->topicConnection:Ljavax/jms/TopicConnection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    :try_start_4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Error while closing JMSAppender ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Error while closing JMSAppender ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getInitialContextFactoryName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->initialContextFactoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationInfo()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/log4j/net/JMSAppender;->locationInfo:Z

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->providerURL:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityCredentials()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->securityCredentials:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityPrincipalName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->securityPrincipalName:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicBindingName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->topicBindingName:Ljava/lang/String;

    return-object v0
.end method

.method protected getTopicConnection()Ljavax/jms/TopicConnection;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->topicConnection:Ljavax/jms/TopicConnection;

    return-object v0
.end method

.method public getTopicConnectionFactoryBindingName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->tcfBindingName:Ljava/lang/String;

    return-object v0
.end method

.method protected getTopicPublisher()Ljavax/jms/TopicPublisher;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->topicPublisher:Ljavax/jms/TopicPublisher;

    return-object v0
.end method

.method protected getTopicSession()Ljavax/jms/TopicSession;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->topicSession:Ljavax/jms/TopicSession;

    return-object v0
.end method

.method getURLPkgPrefixes()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->urlPkgPrefixes:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->userName:Ljava/lang/String;

    return-object v0
.end method

.method protected lookup(Ljavax/naming/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p1, p2}, Ljavax/naming/Context;->lookup(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljavax/naming/NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not find name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    throw v0
.end method

.method public requiresLayout()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setInitialContextFactoryName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/log4j/net/JMSAppender;->initialContextFactoryName:Ljava/lang/String;

    return-void
.end method

.method public setLocationInfo(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/log4j/net/JMSAppender;->locationInfo:Z

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/log4j/net/JMSAppender;->password:Ljava/lang/String;

    return-void
.end method

.method public setProviderURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/log4j/net/JMSAppender;->providerURL:Ljava/lang/String;

    return-void
.end method

.method public setSecurityCredentials(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/log4j/net/JMSAppender;->securityCredentials:Ljava/lang/String;

    return-void
.end method

.method public setSecurityPrincipalName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/log4j/net/JMSAppender;->securityPrincipalName:Ljava/lang/String;

    return-void
.end method

.method public setTopicBindingName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/log4j/net/JMSAppender;->topicBindingName:Ljava/lang/String;

    return-void
.end method

.method public setTopicConnectionFactoryBindingName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/log4j/net/JMSAppender;->tcfBindingName:Ljava/lang/String;

    return-void
.end method

.method public setURLPkgPrefixes(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/log4j/net/JMSAppender;->urlPkgPrefixes:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/log4j/net/JMSAppender;->userName:Ljava/lang/String;

    return-void
.end method
