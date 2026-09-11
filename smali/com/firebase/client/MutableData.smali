.class public Lcom/firebase/client/MutableData;
.super Ljava/lang/Object;
.source "MutableData.java"


# static fields
.field private static final mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;


# instance fields
.field private holder:Lcom/firebase/client/core/SnapshotHolder;

.field private prefixPath:Lcom/firebase/client/core/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    sput-object v0, Lcom/firebase/client/MutableData;->mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    return-void
.end method

.method private constructor <init>(Lcom/firebase/client/core/SnapshotHolder;Lcom/firebase/client/core/Path;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/firebase/client/MutableData;->holder:Lcom/firebase/client/core/SnapshotHolder;

    .line 48
    iput-object p2, p0, Lcom/firebase/client/MutableData;->prefixPath:Lcom/firebase/client/core/Path;

    return-void
.end method

.method synthetic constructor <init>(Lcom/firebase/client/core/SnapshotHolder;Lcom/firebase/client/core/Path;Lcom/firebase/client/MutableData$1;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/firebase/client/MutableData;-><init>(Lcom/firebase/client/core/SnapshotHolder;Lcom/firebase/client/core/Path;)V

    return-void
.end method

.method public constructor <init>(Lcom/firebase/client/snapshot/Node;)V
    .locals 2

    .line 43
    new-instance v0, Lcom/firebase/client/core/SnapshotHolder;

    invoke-direct {v0, p1}, Lcom/firebase/client/core/SnapshotHolder;-><init>(Lcom/firebase/client/snapshot/Node;)V

    new-instance p1, Lcom/firebase/client/core/Path;

    const-string v1, ""

    invoke-direct {p1, v1}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/firebase/client/MutableData;-><init>(Lcom/firebase/client/core/SnapshotHolder;Lcom/firebase/client/core/Path;)V

    return-void
.end method

.method static synthetic access$000(Lcom/firebase/client/MutableData;)Lcom/firebase/client/core/SnapshotHolder;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/firebase/client/MutableData;->holder:Lcom/firebase/client/core/SnapshotHolder;

    return-object p0
.end method

.method static synthetic access$100(Lcom/firebase/client/MutableData;)Lcom/firebase/client/core/Path;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/firebase/client/MutableData;->prefixPath:Lcom/firebase/client/core/Path;

    return-object p0
.end method


# virtual methods
.method public child(Ljava/lang/String;)Lcom/firebase/client/MutableData;
    .locals 3

    .line 78
    new-instance v0, Lcom/firebase/client/MutableData;

    iget-object v1, p0, Lcom/firebase/client/MutableData;->holder:Lcom/firebase/client/core/SnapshotHolder;

    iget-object v2, p0, Lcom/firebase/client/MutableData;->prefixPath:Lcom/firebase/client/core/Path;

    invoke-virtual {v2, p1}, Lcom/firebase/client/core/Path;->child(Ljava/lang/String;)Lcom/firebase/client/core/Path;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/firebase/client/MutableData;-><init>(Lcom/firebase/client/core/SnapshotHolder;Lcom/firebase/client/core/Path;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 328
    instance-of v0, p1, Lcom/firebase/client/MutableData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/MutableData;->holder:Lcom/firebase/client/core/SnapshotHolder;

    check-cast p1, Lcom/firebase/client/MutableData;

    iget-object v1, p1, Lcom/firebase/client/MutableData;->holder:Lcom/firebase/client/core/SnapshotHolder;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/MutableData;->prefixPath:Lcom/firebase/client/core/Path;

    invoke-virtual {v0}, Lcom/firebase/client/core/Path;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/firebase/client/MutableData;->prefixPath:Lcom/firebase/client/core/Path;

    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getChildren()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/firebase/client/MutableData;",
            ">;"
        }
    .end annotation

    .line 98
    invoke-virtual {p0}, Lcom/firebase/client/MutableData;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 99
    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    new-instance v0, Lcom/firebase/client/MutableData$1;

    invoke-direct {v0, p0}, Lcom/firebase/client/MutableData$1;-><init>(Lcom/firebase/client/MutableData;)V

    return-object v0

    .line 122
    :cond_0
    check-cast v0, Lcom/firebase/client/snapshot/ChildrenNode;

    invoke-virtual {v0}, Lcom/firebase/client/snapshot/ChildrenNode;->getIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 123
    new-instance v1, Lcom/firebase/client/MutableData$2;

    invoke-direct {v1, p0, v0}, Lcom/firebase/client/MutableData$2;-><init>(Lcom/firebase/client/MutableData;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public getChildrenCount()J
    .locals 2

    .line 85
    invoke-virtual {p0}, Lcom/firebase/client/MutableData;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->getChildCount()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/firebase/client/MutableData;->prefixPath:Lcom/firebase/client/core/Path;

    invoke-virtual {v0}, Lcom/firebase/client/core/Path;->getBack()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNode()Lcom/firebase/client/snapshot/Node;
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/firebase/client/MutableData;->holder:Lcom/firebase/client/core/SnapshotHolder;

    iget-object v1, p0, Lcom/firebase/client/MutableData;->prefixPath:Lcom/firebase/client/core/Path;

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/SnapshotHolder;->getNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lcom/firebase/client/MutableData;
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/firebase/client/MutableData;->prefixPath:Lcom/firebase/client/core/Path;

    invoke-virtual {v0}, Lcom/firebase/client/core/Path;->getParent()Lcom/firebase/client/core/Path;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    new-instance v1, Lcom/firebase/client/MutableData;

    iget-object v2, p0, Lcom/firebase/client/MutableData;->holder:Lcom/firebase/client/core/SnapshotHolder;

    invoke-direct {v1, v2, v0}, Lcom/firebase/client/MutableData;-><init>(Lcom/firebase/client/core/SnapshotHolder;Lcom/firebase/client/core/Path;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPriority()Ljava/lang/Object;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lcom/firebase/client/MutableData;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/NodePriority;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/NodePriority;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 185
    invoke-virtual {p0}, Lcom/firebase/client/MutableData;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Lcom/firebase/client/GenericTypeIndicator;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/firebase/client/GenericTypeIndicator<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 257
    invoke-virtual {p0}, Lcom/firebase/client/MutableData;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 259
    :try_start_0
    sget-object v1, Lcom/firebase/client/MutableData;->mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v1, v0}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-virtual {v1, v0, p1}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Lcom/shaded/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 263
    new-instance v0, Lcom/firebase/client/FirebaseException;

    const-string v1, "Failed to bounce to type"

    invoke-direct {v0, v1, p1}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 231
    invoke-virtual {p0}, Lcom/firebase/client/MutableData;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 233
    :try_start_0
    sget-object v1, Lcom/firebase/client/MutableData;->mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v1, v0}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-virtual {v1, v0, p1}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 237
    new-instance v0, Lcom/firebase/client/FirebaseException;

    const-string v1, "Failed to bounce to type"

    invoke-direct {v0, v1, p1}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public hasChild(Ljava/lang/String;)Z
    .locals 2

    .line 68
    invoke-virtual {p0}, Lcom/firebase/client/MutableData;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    new-instance v1, Lcom/firebase/client/core/Path;

    invoke-direct {v1, p1}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/firebase/client/snapshot/Node;->getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object p1

    invoke-interface {p1}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public hasChildren()Z
    .locals 2

    .line 59
    invoke-virtual {p0}, Lcom/firebase/client/MutableData;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 60
    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->isLeafNode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setPriority(Ljava/lang/Object;)V
    .locals 3

    .line 309
    iget-object v0, p0, Lcom/firebase/client/MutableData;->holder:Lcom/firebase/client/core/SnapshotHolder;

    iget-object v1, p0, Lcom/firebase/client/MutableData;->prefixPath:Lcom/firebase/client/core/Path;

    invoke-virtual {p0}, Lcom/firebase/client/MutableData;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-static {p1}, Lcom/firebase/client/snapshot/PriorityUtilities;->parsePriority(Ljava/lang/Object;)Lcom/firebase/client/snapshot/NodePriority;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/firebase/client/snapshot/Node;->updatePriority(Lcom/firebase/client/snapshot/NodePriority;)Lcom/firebase/client/snapshot/Node;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/firebase/client/core/SnapshotHolder;->update(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/firebase/client/FirebaseException;
        }
    .end annotation

    .line 296
    :try_start_0
    sget-object v0, Lcom/firebase/client/MutableData;->mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 297
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 298
    iget-object v0, p0, Lcom/firebase/client/MutableData;->holder:Lcom/firebase/client/core/SnapshotHolder;

    iget-object v1, p0, Lcom/firebase/client/MutableData;->prefixPath:Lcom/firebase/client/core/Path;

    invoke-static {p1}, Lcom/firebase/client/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/firebase/client/core/SnapshotHolder;->update(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 300
    new-instance v0, Lcom/firebase/client/FirebaseException;

    const-string v1, "Failed to parse to snapshot"

    invoke-direct {v0, v1, p1}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
