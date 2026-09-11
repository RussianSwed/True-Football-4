.class public Lcom/firebase/client/snapshot/PriorityUtilities;
.super Ljava/lang/Object;
.source "PriorityUtilities.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static NullPriority()Lcom/firebase/client/snapshot/NodePriority;
    .locals 1

    .line 17
    new-instance v0, Lcom/firebase/client/snapshot/NullPriority;

    invoke-direct {v0}, Lcom/firebase/client/snapshot/NullPriority;-><init>()V

    return-object v0
.end method

.method public static parsePriority(Ljava/lang/Object;)Lcom/firebase/client/snapshot/NodePriority;
    .locals 3

    if-nez p0, :cond_0

    .line 22
    invoke-static {}, Lcom/firebase/client/snapshot/PriorityUtilities;->NullPriority()Lcom/firebase/client/snapshot/NodePriority;

    move-result-object p0

    return-object p0

    .line 23
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 24
    new-instance v0, Lcom/firebase/client/snapshot/StringPriority;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/firebase/client/snapshot/StringPriority;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 25
    :cond_1
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 26
    new-instance v0, Lcom/firebase/client/snapshot/DoublePriority;

    check-cast p0, Ljava/lang/Double;

    invoke-direct {v0, p0}, Lcom/firebase/client/snapshot/DoublePriority;-><init>(Ljava/lang/Double;)V

    return-object v0

    .line 27
    :cond_2
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 28
    new-instance v0, Lcom/firebase/client/snapshot/DoublePriority;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/firebase/client/snapshot/DoublePriority;-><init>(Ljava/lang/Double;)V

    return-object v0

    .line 29
    :cond_3
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 30
    new-instance v0, Lcom/firebase/client/snapshot/DoublePriority;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/firebase/client/snapshot/DoublePriority;-><init>(Ljava/lang/Double;)V

    return-object v0

    .line 31
    :cond_4
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_5

    check-cast p0, Ljava/util/Map;

    const-string v0, ".sv"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 32
    new-instance v0, Lcom/firebase/client/snapshot/DeferredValuePriority;

    invoke-direct {v0, p0}, Lcom/firebase/client/snapshot/DeferredValuePriority;-><init>(Ljava/util/Map;)V

    return-object v0

    .line 34
    :cond_5
    new-instance p0, Lcom/firebase/client/FirebaseException;

    const-string v0, "Invalid Firebase priority (must be a string, double, ServerValue, or null)"

    invoke-direct {p0, v0}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
