.class public Lpl/mkrstudio/truefootball3/objects/ClubStaff;
.super Ljava/lang/Object;
.source "ClubStaff.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6e7cf5c1914e5092L


# instance fields
.field assistant:Lpl/mkrstudio/truefootball3/objects/Employee;

.field doctors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Employee;",
            ">;"
        }
    .end annotation
.end field

.field goalkeeperTrainer:Lpl/mkrstudio/truefootball3/objects/Employee;

.field marketers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Employee;",
            ">;"
        }
    .end annotation
.end field

.field peopleToHire:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Employee;",
            ">;"
        }
    .end annotation
.end field

.field physiotherapists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Employee;",
            ">;"
        }
    .end annotation
.end field

.field scouting:Lpl/mkrstudio/truefootball3/objects/Scouting;

.field youthTrainers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/YouthTrainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->doctors:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->physiotherapists:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->youthTrainers:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->marketers:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->peopleToHire:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Team;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chosenTeam"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->doctors:Ljava/util/List;

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->physiotherapists:Ljava/util/List;

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->youthTrainers:Ljava/util/List;

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->marketers:Ljava/util/List;

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->peopleToHire:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAllEmployees()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Employee;",
            ">;"
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->goalkeeperTrainer:Lpl/mkrstudio/truefootball3/objects/Employee;

    if-eqz v1, :cond_0

    .line 102
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_0
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->youthTrainers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/YouthTrainer;

    .line 104
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 106
    :cond_1
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->scouting:Lpl/mkrstudio/truefootball3/objects/Scouting;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Scouting;->getScouts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Scout;

    .line 107
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 109
    :cond_2
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->doctors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Employee;

    .line 110
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 112
    :cond_3
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->physiotherapists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Employee;

    .line 113
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 115
    :cond_4
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->marketers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Employee;

    .line 116
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    return-object v0
.end method

.method public getAssistant()Lpl/mkrstudio/truefootball3/objects/Employee;
    .locals 1

    .line 294
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->assistant:Lpl/mkrstudio/truefootball3/objects/Employee;

    return-object v0
.end method

.method public getDoctors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Employee;",
            ">;"
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->doctors:Ljava/util/List;

    return-object v0
.end method

.method public getGoalkeeperTrainer()Lpl/mkrstudio/truefootball3/objects/Employee;
    .locals 1

    .line 298
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->goalkeeperTrainer:Lpl/mkrstudio/truefootball3/objects/Employee;

    return-object v0
.end method

.method public getGoalkeepingTrainingLevel()B
    .locals 1

    .line 158
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->goalkeeperTrainer:Lpl/mkrstudio/truefootball3/objects/Employee;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 160
    :cond_0
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Employee;->getExperience()B

    move-result v0

    return v0
.end method

.method public getMarketers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Employee;",
            ">;"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->marketers:Ljava/util/List;

    return-object v0
.end method

.method public getMarketingLevel()B
    .locals 3

    .line 143
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->marketers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 146
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->marketers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Employee;

    .line 147
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Employee;->getExperience()B

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 149
    :cond_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->marketers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/2addr v1, v0

    .line 150
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->marketers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_2

    .line 151
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->marketers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    div-int/lit8 v2, v1, 0xa

    mul-int v0, v0, v2

    add-int/2addr v1, v0

    :cond_2
    const/16 v0, 0x64

    if-le v1, v0, :cond_3

    const/16 v1, 0x64

    :cond_3
    int-to-byte v0, v1

    return v0
.end method

.method public getMedicalLevel()B
    .locals 7

    .line 172
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->doctors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 176
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 177
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->doctors:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 179
    new-instance v2, Lpl/mkrstudio/truefootball3/objects/ClubStaff$1;

    invoke-direct {v2, p0}, Lpl/mkrstudio/truefootball3/objects/ClubStaff$1;-><init>(Lpl/mkrstudio/truefootball3/objects/ClubStaff;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    .line 192
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->doctors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 193
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->doctors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Employee;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Employee;->getExperience()B

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    :cond_2
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->doctors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/16 v5, 0x64

    if-eq v1, v4, :cond_11

    if-eq v1, v3, :cond_e

    const/4 v6, 0x3

    if-eq v1, v6, :cond_b

    const/4 v3, 0x4

    if-eq v1, v3, :cond_8

    if-eq v1, v2, :cond_5

    .line 238
    div-int/2addr v0, v2

    if-le v0, v5, :cond_3

    goto :goto_1

    :cond_3
    move v5, v0

    :goto_1
    if-gez v5, :cond_4

    goto :goto_2

    :cond_4
    move v4, v5

    :goto_2
    int-to-byte v0, v4

    return v0

    .line 230
    :cond_5
    div-int/2addr v0, v3

    if-le v0, v5, :cond_6

    goto :goto_3

    :cond_6
    move v5, v0

    :goto_3
    if-gez v5, :cond_7

    goto :goto_4

    :cond_7
    move v4, v5

    :goto_4
    int-to-byte v0, v4

    return v0

    .line 222
    :cond_8
    div-int/2addr v0, v6

    if-le v0, v5, :cond_9

    goto :goto_5

    :cond_9
    move v5, v0

    :goto_5
    if-gez v5, :cond_a

    goto :goto_6

    :cond_a
    move v4, v5

    :goto_6
    int-to-byte v0, v4

    return v0

    .line 214
    :cond_b
    div-int/2addr v0, v3

    if-le v0, v5, :cond_c

    goto :goto_7

    :cond_c
    move v5, v0

    :goto_7
    if-gez v5, :cond_d

    goto :goto_8

    :cond_d
    move v4, v5

    :goto_8
    int-to-byte v0, v4

    return v0

    .line 206
    :cond_e
    div-int/2addr v0, v3

    if-le v0, v5, :cond_f

    goto :goto_9

    :cond_f
    move v5, v0

    :goto_9
    if-gez v5, :cond_10

    goto :goto_a

    :cond_10
    move v4, v5

    :goto_a
    int-to-byte v0, v4

    return v0

    .line 198
    :cond_11
    div-int/2addr v0, v3

    if-le v0, v5, :cond_12

    goto :goto_b

    :cond_12
    move v5, v0

    :goto_b
    if-gez v5, :cond_13

    goto :goto_c

    :cond_13
    move v4, v5

    :goto_c
    int-to-byte v0, v4

    return v0
.end method

.method public getMonthlyCost()J
    .locals 5

    .line 123
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->assistant:Lpl/mkrstudio/truefootball3/objects/Employee;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Employee;->getMonthlySalary()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 125
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->goalkeeperTrainer:Lpl/mkrstudio/truefootball3/objects/Employee;

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Employee;->getMonthlySalary()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 127
    :cond_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->doctors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Employee;

    .line 128
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Employee;->getMonthlySalary()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0

    .line 130
    :cond_2
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->physiotherapists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Employee;

    .line 131
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Employee;->getMonthlySalary()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_1

    .line 133
    :cond_3
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->youthTrainers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Employee;

    .line 134
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Employee;->getMonthlySalary()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_2

    .line 136
    :cond_4
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->marketers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Employee;

    .line 137
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Employee;->getMonthlySalary()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_3

    :cond_5
    return-wide v1
.end method

.method public getPeopleToHire()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Employee;",
            ">;"
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->peopleToHire:Ljava/util/List;

    return-object v0
.end method

.method public getPhysiotherapistLevel()B
    .locals 5

    .line 250
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->physiotherapists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 254
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 255
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->physiotherapists:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 257
    new-instance v2, Lpl/mkrstudio/truefootball3/objects/ClubStaff$2;

    invoke-direct {v2, p0}, Lpl/mkrstudio/truefootball3/objects/ClubStaff$2;-><init>(Lpl/mkrstudio/truefootball3/objects/ClubStaff;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_2

    .line 270
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->physiotherapists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 271
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->physiotherapists:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Employee;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Employee;->getExperience()B

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 274
    :cond_2
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->physiotherapists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-eq v1, v3, :cond_7

    const/4 v3, 0x2

    if-eq v1, v3, :cond_6

    if-eq v1, v4, :cond_5

    const/4 v3, 0x4

    if-eq v1, v3, :cond_4

    const/4 v3, 0x5

    if-eq v1, v3, :cond_3

    .line 286
    div-int/2addr v0, v2

    :goto_1
    int-to-byte v0, v0

    return v0

    .line 284
    :cond_3
    div-int/2addr v0, v3

    goto :goto_1

    .line 282
    :cond_4
    div-int/2addr v0, v3

    goto :goto_1

    .line 280
    :cond_5
    div-int/2addr v0, v4

    goto :goto_1

    .line 278
    :cond_6
    div-int/2addr v0, v4

    goto :goto_1

    .line 276
    :cond_7
    div-int/2addr v0, v4

    goto :goto_1
.end method

.method public getPhysiotherapists()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Employee;",
            ">;"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->physiotherapists:Ljava/util/List;

    return-object v0
.end method

.method public getScouting()Lpl/mkrstudio/truefootball3/objects/Scouting;
    .locals 1

    .line 350
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->scouting:Lpl/mkrstudio/truefootball3/objects/Scouting;

    return-object v0
.end method

.method public getYouthTrainers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/YouthTrainer;",
            ">;"
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->youthTrainers:Ljava/util/List;

    return-object v0
.end method

.method public hireEmployee(Lpl/mkrstudio/truefootball3/objects/Employee;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "employee",
            "context"
        }
    .end annotation

    .line 64
    sget-object v0, Lpl/mkrstudio/truefootball3/objects/ClubStaff$3;->$SwitchMap$pl$mkrstudio$truefootball3$enums$EmployeeType:[I

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Employee;->getType()Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 86
    :pswitch_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->youthTrainers:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/YouthTrainer;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 83
    :pswitch_2
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->scouting:Lpl/mkrstudio/truefootball3/objects/Scouting;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Scouting;->getScouts()Ljava/util/List;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Scout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    :pswitch_3
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->physiotherapists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    :pswitch_4
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->marketers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    :pswitch_5
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->goalkeeperTrainer:Lpl/mkrstudio/truefootball3/objects/Employee;

    goto :goto_0

    .line 69
    :pswitch_6
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->doctors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :pswitch_7
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->assistant:Lpl/mkrstudio/truefootball3/objects/Employee;

    .line 92
    :goto_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->peopleToHire:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 93
    new-instance v0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;

    invoke-direct {v0, p2}, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;-><init>(Landroid/content/Context;)V

    .line 94
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Employee;->getNationality()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Employee;->getType()Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    move-result-object p1

    invoke-virtual {v0, p2, v1, v2, p1}, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->generateOnePerson(Lpl/mkrstudio/truefootball3/objects/Country;FBLpl/mkrstudio/truefootball3/enums/EmployeeType;)Lpl/mkrstudio/truefootball3/objects/Employee;

    move-result-object p1

    .line 95
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->peopleToHire:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public isFreeYouthTrainer()Z
    .locals 2

    .line 164
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->youthTrainers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/YouthTrainer;

    .line 165
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/YouthTrainer;->getYouthTeam()Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public nextDay(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Inbox;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "time",
            "chosenTeam",
            "inbox"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->scouting:Lpl/mkrstudio/truefootball3/objects/Scouting;

    invoke-virtual {v0, p1, p2, p3}, Lpl/mkrstudio/truefootball3/objects/Scouting;->nextDay(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Inbox;)V

    return-void
.end method

.method public setAssistant(Lpl/mkrstudio/truefootball3/objects/Employee;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "assistant"
        }
    .end annotation

    .line 314
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->assistant:Lpl/mkrstudio/truefootball3/objects/Employee;

    return-void
.end method

.method public setDoctors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "doctors"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Employee;",
            ">;)V"
        }
    .end annotation

    .line 322
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->doctors:Ljava/util/List;

    return-void
.end method

.method public setGoalkeeperTrainer(Lpl/mkrstudio/truefootball3/objects/Employee;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "goalkeeperTrainer"
        }
    .end annotation

    .line 302
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->goalkeeperTrainer:Lpl/mkrstudio/truefootball3/objects/Employee;

    return-void
.end method

.method public setMarketers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "marketers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Employee;",
            ">;)V"
        }
    .end annotation

    .line 310
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->marketers:Ljava/util/List;

    return-void
.end method

.method public setPeopleToHire(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "peopleToHire"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Employee;",
            ">;)V"
        }
    .end annotation

    .line 338
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->peopleToHire:Ljava/util/List;

    return-void
.end method

.method public setPhysiotherapists(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "physiotherapists"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Employee;",
            ">;)V"
        }
    .end annotation

    .line 330
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->physiotherapists:Ljava/util/List;

    return-void
.end method

.method public setScouting(Lpl/mkrstudio/truefootball3/objects/Scouting;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scouting"
        }
    .end annotation

    .line 354
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->scouting:Lpl/mkrstudio/truefootball3/objects/Scouting;

    return-void
.end method

.method public setYouthTrainers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "youthTrainers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/YouthTrainer;",
            ">;)V"
        }
    .end annotation

    .line 346
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->youthTrainers:Ljava/util/List;

    return-void
.end method

.method public terminateContractWithEmployee(Lpl/mkrstudio/truefootball3/objects/Employee;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "employee"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->assistant:Lpl/mkrstudio/truefootball3/objects/Employee;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    .line 42
    iput-object v1, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->assistant:Lpl/mkrstudio/truefootball3/objects/Employee;

    .line 43
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->goalkeeperTrainer:Lpl/mkrstudio/truefootball3/objects/Employee;

    if-ne v0, p1, :cond_1

    .line 44
    iput-object v1, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->goalkeeperTrainer:Lpl/mkrstudio/truefootball3/objects/Employee;

    .line 45
    :cond_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->doctors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->physiotherapists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->youthTrainers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    move-object v0, p1

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/YouthTrainer;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/YouthTrainer;->getYouthTeam()Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 49
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/YouthTrainer;->getYouthTeam()Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    move-result-object v2

    invoke-virtual {v2, v1}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->setTrainer(Lpl/mkrstudio/truefootball3/objects/YouthTrainer;)V

    .line 50
    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/YouthTrainer;->setYouthTeam(Lpl/mkrstudio/truefootball3/objects/YouthTeam;)V

    .line 52
    :cond_2
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->youthTrainers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 54
    :cond_3
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->marketers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->scouting:Lpl/mkrstudio/truefootball3/objects/Scouting;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Scouting;->getScouts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 56
    move-object v0, p1

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Scout;

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Scout;->setCurrentAssignment(Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;)V

    .line 57
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Scout;->getPastAssignments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 58
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->scouting:Lpl/mkrstudio/truefootball3/objects/Scouting;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Scouting;->getScouts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method
