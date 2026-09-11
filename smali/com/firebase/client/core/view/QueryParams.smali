.class public Lcom/firebase/client/core/view/QueryParams;
.super Ljava/lang/Object;
.source "QueryParams.java"


# static fields
.field public static final DEFAULT_PARAMS:Lcom/firebase/client/core/view/QueryParams;

.field private static final END_NAME:Ljava/lang/String; = "en"

.field private static final END_PRIORITY:Ljava/lang/String; = "ep"

.field private static final LIMIT:Ljava/lang/String; = "l"

.field private static final START_NAME:Ljava/lang/String; = "sn"

.field private static final START_PRIORITY:Ljava/lang/String; = "sp"

.field private static final VIEW_FROM:Ljava/lang/String; = "vf"


# instance fields
.field private endName:Ljava/lang/String;

.field private endPriority:Lcom/firebase/client/snapshot/NodePriority;

.field private endSet:Z

.field private limit:I

.field private limitSet:Z

.field private startName:Ljava/lang/String;

.field private startPriority:Lcom/firebase/client/snapshot/NodePriority;

.field private startSet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/firebase/client/core/view/QueryParams;

    invoke-direct {v0}, Lcom/firebase/client/core/view/QueryParams;-><init>()V

    sput-object v0, Lcom/firebase/client/core/view/QueryParams;->DEFAULT_PARAMS:Lcom/firebase/client/core/view/QueryParams;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/firebase/client/core/view/QueryParams;->startSet:Z

    .line 36
    iput-boolean v0, p0, Lcom/firebase/client/core/view/QueryParams;->endSet:Z

    .line 37
    iput-boolean v0, p0, Lcom/firebase/client/core/view/QueryParams;->limitSet:Z

    return-void
.end method

.method private copy()Lcom/firebase/client/core/view/QueryParams;
    .locals 3

    .line 82
    new-instance v0, Lcom/firebase/client/core/view/QueryParams;

    invoke-direct {v0}, Lcom/firebase/client/core/view/QueryParams;-><init>()V

    .line 83
    iget-boolean v1, p0, Lcom/firebase/client/core/view/QueryParams;->startSet:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 84
    iput-boolean v2, v0, Lcom/firebase/client/core/view/QueryParams;->startSet:Z

    .line 85
    iget-object v1, p0, Lcom/firebase/client/core/view/QueryParams;->startPriority:Lcom/firebase/client/snapshot/NodePriority;

    iput-object v1, v0, Lcom/firebase/client/core/view/QueryParams;->startPriority:Lcom/firebase/client/snapshot/NodePriority;

    .line 86
    iget-object v1, p0, Lcom/firebase/client/core/view/QueryParams;->startName:Ljava/lang/String;

    iput-object v1, v0, Lcom/firebase/client/core/view/QueryParams;->startName:Ljava/lang/String;

    .line 88
    :cond_0
    iget-boolean v1, p0, Lcom/firebase/client/core/view/QueryParams;->endSet:Z

    if-eqz v1, :cond_1

    .line 89
    iput-boolean v2, v0, Lcom/firebase/client/core/view/QueryParams;->endSet:Z

    .line 90
    iget-object v1, p0, Lcom/firebase/client/core/view/QueryParams;->endPriority:Lcom/firebase/client/snapshot/NodePriority;

    iput-object v1, v0, Lcom/firebase/client/core/view/QueryParams;->endPriority:Lcom/firebase/client/snapshot/NodePriority;

    .line 91
    iget-object v1, p0, Lcom/firebase/client/core/view/QueryParams;->endName:Ljava/lang/String;

    iput-object v1, v0, Lcom/firebase/client/core/view/QueryParams;->endName:Ljava/lang/String;

    .line 93
    :cond_1
    iget-boolean v1, p0, Lcom/firebase/client/core/view/QueryParams;->limitSet:Z

    if-eqz v1, :cond_2

    .line 94
    iput-boolean v2, v0, Lcom/firebase/client/core/view/QueryParams;->limitSet:Z

    .line 95
    iget v1, p0, Lcom/firebase/client/core/view/QueryParams;->limit:I

    iput v1, v0, Lcom/firebase/client/core/view/QueryParams;->limit:I

    :cond_2
    return-object v0
.end method

.method private endEqual(Lcom/firebase/client/core/view/QueryParams;)Z
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/firebase/client/core/view/QueryParams;->endPriority:Lcom/firebase/client/snapshot/NodePriority;

    iget-object v1, p1, Lcom/firebase/client/core/view/QueryParams;->endPriority:Lcom/firebase/client/snapshot/NodePriority;

    invoke-interface {v0, v1}, Lcom/firebase/client/snapshot/NodePriority;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/firebase/client/core/view/QueryParams;->endName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v1, p1, Lcom/firebase/client/core/view/QueryParams;->endName:Ljava/lang/String;

    if-eqz v1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    iget-object p1, p1, Lcom/firebase/client/core/view/QueryParams;->endName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getQueryObject()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 50
    iget-boolean v1, p0, Lcom/firebase/client/core/view/QueryParams;->startSet:Z

    const-string v2, "l"

    if-eqz v1, :cond_1

    .line 52
    iget-object v1, p0, Lcom/firebase/client/core/view/QueryParams;->startPriority:Lcom/firebase/client/snapshot/NodePriority;

    invoke-interface {v1}, Lcom/firebase/client/snapshot/NodePriority;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v3, "sp"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v1, p0, Lcom/firebase/client/core/view/QueryParams;->startName:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v3, "sn"

    .line 55
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/firebase/client/core/view/QueryParams;->startName:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/firebase/client/core/view/QueryParams;->startPriority:Lcom/firebase/client/snapshot/NodePriority;

    invoke-interface {v1}, Lcom/firebase/client/snapshot/NodePriority;->isNull()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "vf"

    .line 59
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_1
    iget-boolean v1, p0, Lcom/firebase/client/core/view/QueryParams;->endSet:Z

    if-eqz v1, :cond_2

    .line 64
    iget-object v1, p0, Lcom/firebase/client/core/view/QueryParams;->endPriority:Lcom/firebase/client/snapshot/NodePriority;

    invoke-interface {v1}, Lcom/firebase/client/snapshot/NodePriority;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v3, "ep"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v1, p0, Lcom/firebase/client/core/view/QueryParams;->endName:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v3, "en"

    .line 67
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_2
    iget-boolean v1, p0, Lcom/firebase/client/core/view/QueryParams;->limitSet:Z

    if-eqz v1, :cond_3

    .line 71
    iget v1, p0, Lcom/firebase/client/core/view/QueryParams;->limit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method

.method public static getQueryObjects(Ljava/util/Set;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/firebase/client/core/view/QueryParams;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 26
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 27
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/firebase/client/core/view/QueryParams;

    .line 30
    invoke-direct {p0}, Lcom/firebase/client/core/view/QueryParams;->getQueryObject()Ljava/util/Map;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private startEqual(Lcom/firebase/client/core/view/QueryParams;)Z
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/firebase/client/core/view/QueryParams;->startPriority:Lcom/firebase/client/snapshot/NodePriority;

    iget-object v1, p1, Lcom/firebase/client/core/view/QueryParams;->startPriority:Lcom/firebase/client/snapshot/NodePriority;

    invoke-interface {v0, v1}, Lcom/firebase/client/snapshot/NodePriority;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/firebase/client/core/view/QueryParams;->startName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v1, p1, Lcom/firebase/client/core/view/QueryParams;->startName:Ljava/lang/String;

    if-eqz v1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    iget-object p1, p1, Lcom/firebase/client/core/view/QueryParams;->startName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public endAt(Lcom/firebase/client/snapshot/NodePriority;)Lcom/firebase/client/core/view/QueryParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/firebase/client/FirebaseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0, p1, v0}, Lcom/firebase/client/core/view/QueryParams;->endAt(Lcom/firebase/client/snapshot/NodePriority;Ljava/lang/String;)Lcom/firebase/client/core/view/QueryParams;

    move-result-object p1

    return-object p1
.end method

.method public endAt(Lcom/firebase/client/snapshot/NodePriority;Ljava/lang/String;)Lcom/firebase/client/core/view/QueryParams;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/firebase/client/FirebaseException;
        }
    .end annotation

    .line 122
    invoke-static {p2}, Lcom/firebase/client/utilities/Validation;->validateNullableKey(Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Lcom/firebase/client/core/view/QueryParams;->copy()Lcom/firebase/client/core/view/QueryParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 124
    iput-boolean v1, v0, Lcom/firebase/client/core/view/QueryParams;->endSet:Z

    .line 125
    iput-object p1, v0, Lcom/firebase/client/core/view/QueryParams;->endPriority:Lcom/firebase/client/snapshot/NodePriority;

    .line 126
    iput-object p2, v0, Lcom/firebase/client/core/view/QueryParams;->endName:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 171
    instance-of v0, p1, Lcom/firebase/client/core/view/QueryParams;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 172
    check-cast p1, Lcom/firebase/client/core/view/QueryParams;

    .line 173
    iget-boolean v0, p0, Lcom/firebase/client/core/view/QueryParams;->startSet:Z

    if-nez v0, :cond_0

    iget-boolean v2, p1, Lcom/firebase/client/core/view/QueryParams;->startSet:Z

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v0, :cond_6

    iget-boolean v0, p1, Lcom/firebase/client/core/view/QueryParams;->startSet:Z

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lcom/firebase/client/core/view/QueryParams;->startEqual(Lcom/firebase/client/core/view/QueryParams;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    iget-boolean v0, p0, Lcom/firebase/client/core/view/QueryParams;->endSet:Z

    if-nez v0, :cond_2

    iget-boolean v2, p1, Lcom/firebase/client/core/view/QueryParams;->endSet:Z

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v0, :cond_6

    iget-boolean v0, p1, Lcom/firebase/client/core/view/QueryParams;->endSet:Z

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lcom/firebase/client/core/view/QueryParams;->endEqual(Lcom/firebase/client/core/view/QueryParams;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    iget-boolean v0, p0, Lcom/firebase/client/core/view/QueryParams;->limitSet:Z

    if-nez v0, :cond_4

    iget-boolean v2, p1, Lcom/firebase/client/core/view/QueryParams;->limitSet:Z

    if-eqz v2, :cond_5

    :cond_4
    if-eqz v0, :cond_6

    iget-boolean v0, p1, Lcom/firebase/client/core/view/QueryParams;->limitSet:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/firebase/client/core/view/QueryParams;->limit:I

    iget p1, p1, Lcom/firebase/client/core/view/QueryParams;->limit:I

    if-ne v0, p1, :cond_6

    :cond_5
    const/4 v1, 0x1

    :cond_6
    return v1
.end method

.method public getEndName()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/firebase/client/core/view/QueryParams;->endName:Ljava/lang/String;

    return-object v0
.end method

.method public getEndPriority()Lcom/firebase/client/snapshot/NodePriority;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/firebase/client/core/view/QueryParams;->endPriority:Lcom/firebase/client/snapshot/NodePriority;

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/firebase/client/core/view/QueryParams;->limit:I

    return v0
.end method

.method public getStartName()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/firebase/client/core/view/QueryParams;->startName:Ljava/lang/String;

    return-object v0
.end method

.method public getStartPriority()Lcom/firebase/client/snapshot/NodePriority;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/firebase/client/core/view/QueryParams;->startPriority:Lcom/firebase/client/snapshot/NodePriority;

    return-object v0
.end method

.method public hasEndSet()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lcom/firebase/client/core/view/QueryParams;->endSet:Z

    return v0
.end method

.method public hasLimitSet()Z
    .locals 1

    .line 146
    iget-boolean v0, p0, Lcom/firebase/client/core/view/QueryParams;->limitSet:Z

    return v0
.end method

.method public hasStartSet()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/firebase/client/core/view/QueryParams;->startSet:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 192
    invoke-direct {p0}, Lcom/firebase/client/core/view/QueryParams;->getQueryObject()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDefault()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/firebase/client/core/view/QueryParams;->startSet:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/firebase/client/core/view/QueryParams;->endSet:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/firebase/client/core/view/QueryParams;->limitSet:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/firebase/client/core/view/QueryParams;->startSet:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/firebase/client/core/view/QueryParams;->endSet:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/firebase/client/core/view/QueryParams;->limitSet:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public limit(I)Lcom/firebase/client/core/view/QueryParams;
    .locals 2

    .line 131
    invoke-direct {p0}, Lcom/firebase/client/core/view/QueryParams;->copy()Lcom/firebase/client/core/view/QueryParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 132
    iput-boolean v1, v0, Lcom/firebase/client/core/view/QueryParams;->limitSet:Z

    .line 133
    iput p1, v0, Lcom/firebase/client/core/view/QueryParams;->limit:I

    return-object v0
.end method

.method public startAt(Lcom/firebase/client/snapshot/NodePriority;)Lcom/firebase/client/core/view/QueryParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/firebase/client/FirebaseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0, p1, v0}, Lcom/firebase/client/core/view/QueryParams;->startAt(Lcom/firebase/client/snapshot/NodePriority;Ljava/lang/String;)Lcom/firebase/client/core/view/QueryParams;

    move-result-object p1

    return-object p1
.end method

.method public startAt(Lcom/firebase/client/snapshot/NodePriority;Ljava/lang/String;)Lcom/firebase/client/core/view/QueryParams;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/firebase/client/FirebaseException;
        }
    .end annotation

    .line 109
    invoke-static {p2}, Lcom/firebase/client/utilities/Validation;->validateNullableKey(Ljava/lang/String;)V

    .line 110
    invoke-direct {p0}, Lcom/firebase/client/core/view/QueryParams;->copy()Lcom/firebase/client/core/view/QueryParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 111
    iput-boolean v1, v0, Lcom/firebase/client/core/view/QueryParams;->startSet:Z

    .line 112
    iput-object p1, v0, Lcom/firebase/client/core/view/QueryParams;->startPriority:Lcom/firebase/client/snapshot/NodePriority;

    .line 113
    iput-object p2, v0, Lcom/firebase/client/core/view/QueryParams;->startName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/firebase/client/core/view/QueryParams;->getQueryObject()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
