.class public Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;
.super Lorg/apache/log4j/lf5/viewer/LogFactor5Dialog;


# direct methods
.method public constructor <init>(Ljavax/swing/JFrame;Ljava/lang/String;)V
    .locals 4

    const-string v0, "Error"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/log4j/lf5/viewer/LogFactor5Dialog;-><init>(Ljavax/swing/JFrame;Ljava/lang/String;Z)V

    new-instance v0, Ljavax/swing/JButton;

    const-string v1, "Ok"

    invoke-direct {v0, v1}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog$1;

    invoke-direct {v1, p0}, Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog$1;-><init>(Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;)V

    invoke-virtual {v0, v1}, Ljavax/swing/AbstractButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    new-instance v1, Ljavax/swing/JPanel;

    invoke-direct {v1}, Ljavax/swing/JPanel;-><init>()V

    new-instance v2, Ljava/awt/FlowLayout;

    invoke-direct {v2}, Ljava/awt/FlowLayout;-><init>()V

    invoke-virtual {v1, v2}, Ljava/awt/Container;->setLayout(Ljava/awt/LayoutManager;)V

    invoke-virtual {v1, v0}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    new-instance v2, Ljava/awt/GridBagLayout;

    invoke-direct {v2}, Ljava/awt/GridBagLayout;-><init>()V

    invoke-virtual {v0, v2}, Ljava/awt/Container;->setLayout(Ljava/awt/LayoutManager;)V

    invoke-virtual {p0, p2, v0}, Lorg/apache/log4j/lf5/viewer/LogFactor5Dialog;->wrapStringOnPanel(Ljava/lang/String;Ljava/awt/Container;)V

    invoke-virtual {p0}, Ljavax/swing/JDialog;->getContentPane()Ljava/awt/Container;

    move-result-object v2

    const-string v3, "Center"

    invoke-virtual {v2, v0, v3}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljavax/swing/JDialog;->getContentPane()Ljava/awt/Container;

    move-result-object v0

    const-string v2, "South"

    invoke-virtual {v0, v1, v2}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogFactor5Dialog;->show()V

    return-void
.end method