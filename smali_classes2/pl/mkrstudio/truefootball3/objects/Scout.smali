.class public Lpl/mkrstudio/truefootball3/objects/Scout;
.super Lpl/mkrstudio/truefootball3/objects/Employee;
.source "Scout.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x20243031917de50dL


# instance fields
.field currentAssignment:Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

.field currentReports:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;",
            ">;"
        }
    .end annotation
.end field

.field pastAssignments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;",
            ">;"
        }
    .end annotation
.end field

.field pastReports:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/objects/Employee;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Scout;->pastAssignments:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Scout;->currentReports:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Scout;->pastReports:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public assign(Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scoutAssignment"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Scout;->currentAssignment:Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    return-void
.end method

.method public calculateRecommendationLevel(II)B
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "potential",
            "experience"
        }
    .end annotation

    const/4 v0, 0x1

    if-le p2, p1, :cond_0

    .line 26
    div-int/lit8 p1, p1, 0x14

    :goto_0
    add-int/2addr p1, v0

    int-to-byte p1, p1

    return p1

    :cond_0
    sub-int/2addr p2, p1

    .line 28
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    .line 29
    div-int/lit8 p2, p2, 0x3

    sub-int/2addr p1, p2

    int-to-byte p1, p1

    if-gez p1, :cond_1

    return v0

    .line 32
    :cond_1
    div-int/lit8 p1, p1, 0x14

    goto :goto_0
.end method

.method public getCurrentAssignment()Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;
    .locals 1

    .line 75
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Scout;->currentAssignment:Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    return-object v0
.end method

.method public getCurrentReports()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Scout;->currentReports:Ljava/util/List;

    return-object v0
.end method

.method public getPastAssignments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Scout;->pastAssignments:Ljava/util/List;

    return-object v0
.end method

.method public getPastReports()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Scout;->pastReports:Ljava/util/List;

    return-object v0
.end method

.method public makePossibleRecommendation(Lpl/mkrstudio/truefootball3/objects/Player;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "player"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Scout;->currentAssignment:Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->getRecommendations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;

    .line 38
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    if-ne v3, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 40
    :cond_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Scout;->pastAssignments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    .line 41
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->getRecommendations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;

    .line 42
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v5

    if-ne v5, p1, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    if-nez v2, :cond_5

    const-wide v2, 0x4052c00000000000L    # 75.0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 47
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Scout;->currentAssignment:Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->getFinancing()B

    move-result v0

    int-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v4

    div-double/2addr v2, v6

    double-to-int v0, v2

    .line 48
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 49
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getPotential()I

    move-result v3

    const/16 v4, 0x19

    if-le v3, v4, :cond_5

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getPotential()I

    move-result v0

    iget-byte v2, p0, Lpl/mkrstudio/truefootball3/objects/Scout;->experience:B

    add-int/lit8 v2, v2, 0xa

    if-gt v0, v2, :cond_5

    .line 50
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Scout;->currentAssignment:Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->getRecommendations()Ljava/util/List;

    move-result-object v0

    new-instance v2, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getPotential()I

    move-result v3

    iget-byte v4, p0, Lpl/mkrstudio/truefootball3/objects/Scout;->experience:B

    invoke-virtual {p0, v3, v4}, Lpl/mkrstudio/truefootball3/objects/Scout;->calculateRecommendationLevel(II)B

    move-result v3

    invoke-direct {v2, p1, v3, v1}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;BB)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Scout;->currentAssignment:Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->getRecommendations()Ljava/util/List;

    move-result-object p1

    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Scout$1;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Scout$1;-><init>(Lpl/mkrstudio/truefootball3/objects/Scout;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_5
    return-void
.end method

.method public setCurrentAssignment(Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentAssignment"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Scout;->currentAssignment:Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    return-void
.end method

.method public setCurrentReports(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentReports"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;",
            ">;)V"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Scout;->currentReports:Ljava/util/List;

    return-void
.end method

.method public setPastAssignments(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pastAssignments"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;",
            ">;)V"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Scout;->pastAssignments:Ljava/util/List;

    return-void
.end method

.method public setPastReports(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pastReports"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;",
            ">;)V"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Scout;->pastReports:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Scout;->name:Ljava/lang/String;

    return-object v0
.end method
