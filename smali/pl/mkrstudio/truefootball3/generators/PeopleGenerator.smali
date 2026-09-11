.class public Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;
.super Ljava/lang/Object;
.source "PeopleGenerator.java"


# instance fields
.field clubStaff:Lpl/mkrstudio/truefootball3/objects/ClubStaff;

.field context:Landroid/content/Context;

.field dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

.field firstNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Name;",
            ">;>;"
        }
    .end annotation
.end field

.field journalists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Journalist;",
            ">;"
        }
    .end annotation
.end field

.field lastNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Name;",
            ">;>;"
        }
    .end annotation
.end field

.field random:Ljava/util/Random;

.field scouts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Scout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->firstNames:Ljava/util/HashMap;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->lastNames:Ljava/util/HashMap;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->journalists:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->scouts:Ljava/util/List;

    .line 41
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->context:Landroid/content/Context;

    .line 42
    new-instance v0, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-direct {v0, p1}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    .line 43
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->random:Ljava/util/Random;

    return-void
.end method

.method private calculateExperience(F)B
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "skill"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->random:Ljava/util/Random;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x28

    int-to-double v0, v0

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr p1, v2

    float-to-double v2, p1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int p1, v0

    int-to-byte p1, p1

    return p1
.end method

.method private calculateSalary(BLpl/mkrstudio/truefootball3/enums/EmployeeType;)J
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "experience",
            "type"
        }
    .end annotation

    .line 170
    div-int/lit8 v0, p1, 0x6

    int-to-long v0, v0

    const/16 v2, 0x32

    if-ge p1, v2, :cond_0

    .line 171
    div-int/lit8 p1, p1, 0x8

    int-to-long v0, p1

    .line 173
    :cond_0
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->ASSISTANT:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    const-wide v2, 0x3fc999999999999aL    # 0.2

    if-ne p2, p1, :cond_1

    long-to-float p1, v0

    float-to-double v0, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 174
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->random:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v6

    mul-double v6, v6, v2

    add-double/2addr v6, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v6

    double-to-long v0, v0

    .line 175
    :cond_1
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->GOALKEEPER_TRAINER:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    const-wide v4, 0x3ff3333333333333L    # 1.2

    if-ne p2, p1, :cond_2

    long-to-float p1, v0

    float-to-double v0, p1

    const-wide v6, 0x3fb999999999999aL    # 0.1

    .line 176
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->random:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v8

    mul-double v8, v8, v6

    add-double/2addr v8, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v8

    double-to-long v0, v0

    .line 177
    :cond_2
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->PHYSIOTHERAPIST:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    const-wide v6, 0x3fd999999999999aL    # 0.4

    if-ne p2, p1, :cond_3

    long-to-float p1, v0

    float-to-double v0, p1

    .line 178
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->random:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v8

    mul-double v8, v8, v2

    add-double/2addr v8, v6

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v8

    double-to-long v0, v0

    .line 179
    :cond_3
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->DOCTOR:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    const-wide v8, 0x3fd3333333333333L    # 0.3

    if-ne p2, p1, :cond_4

    long-to-float p1, v0

    float-to-double v0, p1

    .line 180
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->random:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v10

    mul-double v10, v10, v8

    add-double/2addr v10, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v10

    double-to-long v0, v0

    .line 181
    :cond_4
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->YOUTH_TRAINER:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    if-ne p2, p1, :cond_5

    long-to-float p1, v0

    float-to-double v0, p1

    const-wide v4, 0x3ff4cccccccccccdL    # 1.3

    .line 182
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->random:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v10

    mul-double v10, v10, v2

    add-double/2addr v10, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v10

    double-to-long v0, v0

    .line 183
    :cond_5
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->SCOUT:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    if-ne p2, p1, :cond_6

    long-to-float p1, v0

    float-to-double v0, p1

    const-wide v2, 0x3ff6666666666666L    # 1.4

    .line 184
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->random:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v4

    mul-double v4, v4, v8

    add-double/2addr v4, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v4

    double-to-long v0, v0

    .line 185
    :cond_6
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->MARKETER:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    if-ne p2, p1, :cond_7

    long-to-float p1, v0

    float-to-double p1, p1

    const-wide v0, 0x3fe999999999999aL    # 0.8

    .line 186
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    mul-double v2, v2, v6

    add-double/2addr v2, v0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v2

    double-to-long v0, p1

    :cond_7
    const-wide/16 p1, 0x1

    cmp-long v2, v0, p1

    if-gez v2, :cond_8

    move-wide v0, p1

    :cond_8
    return-wide v0
.end method


# virtual methods
.method public generateClubStaff(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/World;ZLpl/mkrstudio/truefootball3/activities/ProgressTask;)V
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "chosenTeam",
            "world",
            "generatePeopleToHire",
            "task"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    .line 48
    :try_start_0
    iget-object v0, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->copyDataBase()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 52
    :goto_0
    iget-object v0, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->open()Z

    .line 56
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, p2

    invoke-virtual {v3, v0}, Lpl/mkrstudio/truefootball3/objects/World;->getContinentByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCountries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Country;

    .line 58
    invoke-interface {v2, v5}, Lpl/mkrstudio/truefootball3/activities/ProgressTask;->doProgress(I)V

    .line 59
    iget-object v5, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->firstNames:Ljava/util/HashMap;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->getFirstNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v5, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->lastNames:Ljava/util/HashMap;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->getLastNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 63
    :cond_0
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    invoke-direct {v0}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;-><init>()V

    iput-object v0, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->clubStaff:Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    .line 67
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v4

    iget-object v6, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->random:Ljava/util/Random;

    const/16 v7, 0xf

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    const/16 v8, 0x1e

    add-int/2addr v6, v8

    int-to-byte v6, v6

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->GOALKEEPER_TRAINER:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    invoke-virtual {v1, v0, v4, v6, v9}, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->generatePerson(Lpl/mkrstudio/truefootball3/objects/Country;FBLpl/mkrstudio/truefootball3/enums/EmployeeType;)Lpl/mkrstudio/truefootball3/objects/Employee;

    move-result-object v0

    .line 68
    iget-object v4, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->clubStaff:Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    invoke-virtual {v4, v0}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->setGoalkeeperTrainer(Lpl/mkrstudio/truefootball3/objects/Employee;)V

    const/4 v4, 0x0

    :goto_2
    const/4 v6, 0x3

    if-ge v4, v6, :cond_1

    .line 70
    iget-object v6, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->clubStaff:Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->getPhysiotherapists()Ljava/util/List;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v10

    iget-object v11, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->random:Ljava/util/Random;

    invoke-virtual {v11, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    add-int/2addr v11, v8

    int-to-byte v11, v11

    sget-object v12, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->PHYSIOTHERAPIST:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    invoke-virtual {v1, v9, v10, v11, v12}, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->generatePerson(Lpl/mkrstudio/truefootball3/objects/Country;FBLpl/mkrstudio/truefootball3/enums/EmployeeType;)Lpl/mkrstudio/truefootball3/objects/Employee;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_3
    const/4 v9, 0x2

    if-ge v4, v9, :cond_2

    .line 73
    iget-object v9, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->clubStaff:Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->getDoctors()Ljava/util/List;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v11

    iget-object v12, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->random:Ljava/util/Random;

    invoke-virtual {v12, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    add-int/lit8 v12, v12, 0x28

    int-to-byte v12, v12

    sget-object v13, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->DOCTOR:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    invoke-virtual {v1, v10, v11, v12, v13}, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->generatePerson(Lpl/mkrstudio/truefootball3/objects/Country;FBLpl/mkrstudio/truefootball3/enums/EmployeeType;)Lpl/mkrstudio/truefootball3/objects/Employee;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v6, :cond_3

    .line 76
    iget-object v10, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->clubStaff:Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->getYouthTrainers()Ljava/util/List;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v12

    iget-object v13, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->random:Ljava/util/Random;

    invoke-virtual {v13, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    add-int/2addr v13, v8

    int-to-byte v13, v13

    sget-object v14, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->YOUTH_TRAINER:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    invoke-virtual {v1, v11, v12, v13, v14}, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->generatePerson(Lpl/mkrstudio/truefootball3/objects/Country;FBLpl/mkrstudio/truefootball3/enums/EmployeeType;)Lpl/mkrstudio/truefootball3/objects/Employee;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/YouthTrainer;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_3
    const/4 v4, 0x0

    :goto_5
    const/16 v6, 0x19

    if-ge v4, v9, :cond_4

    .line 79
    iget-object v10, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->scouts:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v12

    iget-object v13, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->random:Ljava/util/Random;

    invoke-virtual {v13, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/2addr v6, v8

    int-to-byte v6, v6

    sget-object v13, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->SCOUT:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    invoke-virtual {v1, v11, v12, v6, v13}, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->generatePerson(Lpl/mkrstudio/truefootball3/objects/Country;FBLpl/mkrstudio/truefootball3/enums/EmployeeType;)Lpl/mkrstudio/truefootball3/objects/Employee;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Scout;

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_4
    const/4 v4, 0x0

    :goto_6
    if-ge v4, v9, :cond_5

    .line 82
    iget-object v10, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->clubStaff:Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->getMarketers()Ljava/util/List;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v12

    iget-object v13, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->random:Ljava/util/Random;

    invoke-virtual {v13, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    add-int/2addr v13, v6

    int-to-byte v13, v13

    sget-object v14, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->MARKETER:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    invoke-virtual {v1, v11, v12, v13, v14}, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->generatePerson(Lpl/mkrstudio/truefootball3/objects/Country;FBLpl/mkrstudio/truefootball3/enums/EmployeeType;)Lpl/mkrstudio/truefootball3/objects/Employee;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_5
    if-eqz p3, :cond_21

    .line 87
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 88
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/World;->getContinents()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Continent;

    .line 89
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCountries()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Country;

    .line 90
    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 93
    :cond_7
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v10, 0x0

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_21

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Country;

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v12

    const-string v13, "ZAN"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_20

    add-int/lit8 v10, v10, 0x1

    .line 94
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    const/16 v13, 0xa

    div-int/2addr v12, v13

    rem-int v12, v10, v12

    if-nez v12, :cond_8

    .line 95
    invoke-interface {v2, v5}, Lpl/mkrstudio/truefootball3/activities/ProgressTask;->doProgress(I)V

    .line 103
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v12

    if-ne v11, v12, :cond_9

    const/16 v12, 0x19

    goto :goto_9

    :cond_9
    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v15

    invoke-virtual {v15}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v15

    if-ne v12, v15, :cond_a

    const/4 v12, 0x4

    goto :goto_9

    :cond_a
    const/4 v12, 0x2

    .line 104
    :goto_9
    iget-object v15, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->random:Ljava/util/Random;

    invoke-virtual {v15, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    const/4 v15, 0x0

    :goto_a
    const/16 v0, 0x50

    const/high16 v16, 0x41200000    # 10.0f

    const/high16 v17, 0x42c80000    # 100.0f

    if-ge v15, v12, :cond_c

    .line 106
    iget-object v9, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->random:Ljava/util/Random;

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Country;->getSkill()F

    move-result v18

    mul-float v18, v18, v16

    add-float v14, v18, v17

    float-to-int v14, v14

    invoke-virtual {v9, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    if-le v9, v0, :cond_b

    .line 108
    iget-object v0, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->clubStaff:Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->getPeopleToHire()Ljava/util/List;

    move-result-object v0

    iget-object v9, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->random:Ljava/util/Random;

    invoke-virtual {v9, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    add-int/2addr v9, v5

    int-to-float v9, v9

    iget-object v14, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->random:Ljava/util/Random;

    invoke-virtual {v14, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    add-int/2addr v14, v8

    int-to-byte v14, v14

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->GOALKEEPER_TRAINER:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    invoke-virtual {v1, v11, v9, v14, v6}, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->generatePerson(Lpl/mkrstudio/truefootball3/objects/Country;FBLpl/mkrstudio/truefootball3/enums/EmployeeType;)Lpl/mkrstudio/truefootball3/objects/Employee;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v15, v15, 0x1

    const/16 v6, 0x19

    const/4 v9, 0x2

    goto :goto_a

    .line 110
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v6

    if-ne v11, v6, :cond_d

    const/16 v6, 0x19

    goto :goto_b

    :cond_d
    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v9

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v9

    if-ne v6, v9, :cond_e

    const/4 v6, 0x4

    goto :goto_b

    :cond_e
    const/4 v6, 0x2

    .line 111
    :goto_b
    iget-object v9, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->random:Ljava/util/Random;

    invoke-virtual {v9, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    const/4 v9, 0x0

    :goto_c
    if-ge v9, v6, :cond_10

    .line 113
    iget-object v12, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->random:Ljava/util/Random;

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Country;->getSkill()F

    move-result v14

    mul-float v14, v14, v16

    add-float v14, v14, v17

    float-to-int v14, v14

    invoke-virtual {v12, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    if-le v12, v0, :cond_f

    .line 115
    iget-object v12, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->clubStaff:Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->getPeopleToHire()Ljava/util/List;

    move-result-object v12

    iget-object v14, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->random:Ljava/util/Random;

    invoke-virtual {v14, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    add-int/2addr v14, v5

    int-to-float v14, v14

    iget-object v15, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->random:Ljava/util/Random;

    invoke-virtual {v15, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v15

    add-int/2addr v15, v8

    int-to-byte v15, v15

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->PHYSIOTHERAPIST:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    invoke-virtual {v1, v11, v14, v15, v7}, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->generatePerson(Lpl/mkrstudio/truefootball3/objects/Country;FBLpl/mkrstudio/truefootball3/enums/EmployeeType;)Lpl/mkrstudio/truefootball3/objects/Employee;

    move-result-object v7

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    add-int/lit8 v9, v9, 0x1

    const/16 v7, 0xf

    goto :goto_c

    .line 117
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v6

    if-ne v11, v6, :cond_11

    const/16 v6, 0x19

    goto :goto_d

    :cond_11
    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v7

    if-ne v6, v7, :cond_12

    const/4 v6, 0x4

    goto :goto_d

    :cond_12
    const/4 v6, 0x2

    .line 118
    :goto_d
    iget-object v7, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->random:Ljava/util/Random;

    invoke-virtual {v7, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    const/4 v7, 0x0

    :goto_e
    if-ge v7, v6, :cond_14

    .line 120
    iget-object v9, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->random:Ljava/util/Random;

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Country;->getSkill()F

    move-result v12

    mul-float v12, v12, v16

    add-float v12, v12, v17

    float-to-int v12, v12

    invoke-virtual {v9, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    if-le v9, v0, :cond_13

    .line 122
    iget-object v9, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->clubStaff:Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->getPeopleToHire()Ljava/util/List;

    move-result-object v9

    iget-object v12, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->random:Ljava/util/Random;

    invoke-virtual {v12, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    add-int/2addr v12, v5

    int-to-float v12, v12

    iget-object v14, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->random:Ljava/util/Random;

    invoke-virtual {v14, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    add-int/lit8 v14, v14, 0x28

    int-to-byte v14, v14

    sget-object v15, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->DOCTOR:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    invoke-virtual {v1, v11, v12, v14, v15}, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->generatePerson(Lpl/mkrstudio/truefootball3/objects/Country;FBLpl/mkrstudio/truefootball3/enums/EmployeeType;)Lpl/mkrstudio/truefootball3/objects/Employee;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    .line 124
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v6

    if-ne v11, v6, :cond_15

    const/16 v6, 0x19

    goto :goto_f

    :cond_15
    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v7

    if-ne v6, v7, :cond_16

    const/4 v6, 0x4

    goto :goto_f

    :cond_16
    const/4 v6, 0x2

    .line 125
    :goto_f
    iget-object v7, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->random:Ljava/util/Random;

    invoke-virtual {v7, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    const/4 v7, 0x0

    :goto_10
    if-ge v7, v6, :cond_18

    .line 127
    iget-object v9, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->random:Ljava/util/Random;

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Country;->getSkill()F

    move-result v12

    mul-float v12, v12, v16

    add-float v12, v12, v17

    float-to-int v12, v12

    invoke-virtual {v9, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    if-le v9, v0, :cond_17

    .line 129
    iget-object v9, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->clubStaff:Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->getPeopleToHire()Ljava/util/List;

    move-result-object v9

    iget-object v12, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->random:Ljava/util/Random;

    invoke-virtual {v12, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    add-int/2addr v12, v5

    int-to-float v12, v12

    iget-object v14, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->random:Ljava/util/Random;

    const/16 v15, 0xf

    invoke-virtual {v14, v15}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    add-int/2addr v14, v8

    int-to-byte v14, v14

    sget-object v15, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->YOUTH_TRAINER:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    invoke-virtual {v1, v11, v12, v14, v15}, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->generatePerson(Lpl/mkrstudio/truefootball3/objects/Country;FBLpl/mkrstudio/truefootball3/enums/EmployeeType;)Lpl/mkrstudio/truefootball3/objects/Employee;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    .line 131
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v6

    if-ne v11, v6, :cond_19

    const/16 v6, 0x19

    goto :goto_11

    :cond_19
    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v7

    if-ne v6, v7, :cond_1a

    const/4 v6, 0x4

    goto :goto_11

    :cond_1a
    const/4 v6, 0x2

    .line 132
    :goto_11
    iget-object v7, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->random:Ljava/util/Random;

    invoke-virtual {v7, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    const/4 v7, 0x0

    :goto_12
    if-ge v7, v6, :cond_1c

    .line 134
    iget-object v9, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->random:Ljava/util/Random;

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Country;->getSkill()F

    move-result v12

    mul-float v12, v12, v16

    add-float v12, v12, v17

    float-to-int v12, v12

    invoke-virtual {v9, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    if-le v9, v0, :cond_1b

    .line 136
    iget-object v9, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->clubStaff:Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->getPeopleToHire()Ljava/util/List;

    move-result-object v9

    iget-object v12, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->random:Ljava/util/Random;

    invoke-virtual {v12, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    add-int/2addr v12, v5

    int-to-float v12, v12

    iget-object v14, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->random:Ljava/util/Random;

    const/16 v15, 0x19

    invoke-virtual {v14, v15}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    add-int/2addr v14, v8

    int-to-byte v14, v14

    sget-object v15, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->SCOUT:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    invoke-virtual {v1, v11, v12, v14, v15}, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->generatePerson(Lpl/mkrstudio/truefootball3/objects/Country;FBLpl/mkrstudio/truefootball3/enums/EmployeeType;)Lpl/mkrstudio/truefootball3/objects/Employee;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    .line 138
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v6

    if-ne v11, v6, :cond_1d

    const/16 v14, 0x19

    goto :goto_13

    :cond_1d
    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v7

    if-ne v6, v7, :cond_1e

    const/4 v14, 0x4

    goto :goto_13

    :cond_1e
    const/4 v14, 0x2

    .line 139
    :goto_13
    iget-object v6, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->random:Ljava/util/Random;

    invoke-virtual {v6, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    const/4 v7, 0x0

    :goto_14
    if-ge v7, v6, :cond_20

    .line 141
    iget-object v9, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->random:Ljava/util/Random;

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Country;->getSkill()F

    move-result v12

    mul-float v12, v12, v16

    add-float v12, v12, v17

    float-to-int v12, v12

    invoke-virtual {v9, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    if-le v9, v0, :cond_1f

    .line 143
    iget-object v9, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->clubStaff:Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->getPeopleToHire()Ljava/util/List;

    move-result-object v9

    iget-object v12, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->random:Ljava/util/Random;

    invoke-virtual {v12, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    add-int/2addr v12, v5

    int-to-float v12, v12

    iget-object v14, v1, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->random:Ljava/util/Random;

    const/16 v15, 0xf

    invoke-virtual {v14, v15}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    const/16 v18, 0x19

    add-int/lit8 v14, v14, 0x19

    int-to-byte v14, v14

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->MARKETER:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    invoke-virtual {v1, v11, v12, v14, v0}, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->generatePerson(Lpl/mkrstudio/truefootball3/objects/Country;FBLpl/mkrstudio/truefootball3/enums/EmployeeType;)Lpl/mkrstudio/truefootball3/objects/Employee;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_1f
    const/16 v15, 0xf

    const/16 v18, 0x19

    :goto_15
    add-int/lit8 v7, v7, 0x1

    const/16 v0, 0x50

    goto :goto_14

    :cond_20
    const/16 v15, 0xf

    const/16 v18, 0x19

    const/16 v6, 0x19

    const/16 v7, 0xf

    const/4 v9, 0x2

    goto/16 :goto_8

    :cond_21
    return-void
.end method

.method public generateJournalists(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/World;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "chosenTeam",
            "world",
            "howMany"
        }
    .end annotation

    .line 152
    :try_start_0
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->copyDataBase()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 154
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 156
    :goto_0
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->open()Z

    .line 158
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->firstNames:Ljava/util/HashMap;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->getFirstNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->lastNames:Ljava/util/HashMap;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->getLastNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    :goto_1
    if-ge p2, p3, :cond_0

    .line 162
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Journalist;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->firstNames:Ljava/util/HashMap;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lpl/mkrstudio/truefootball3/helpers/NameHelper;->getRandomFirstName(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->lastNames:Ljava/util/HashMap;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lpl/mkrstudio/truefootball3/helpers/NameHelper;->getRandomLastName(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getFaces()Lpl/mkrstudio/truefootball3/enums/Faces;

    move-result-object v2

    const/16 v3, 0x32

    invoke-direct {v0, v1, v2, v3}, Lpl/mkrstudio/truefootball3/objects/Journalist;-><init>(Ljava/lang/String;Lpl/mkrstudio/truefootball3/enums/Faces;I)V

    .line 163
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->journalists:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method public generateOneJournalist(Lpl/mkrstudio/truefootball3/objects/Country;)Lpl/mkrstudio/truefootball3/objects/Journalist;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "country"
        }
    .end annotation

    .line 242
    :try_start_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->copyDataBase()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 244
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 246
    :goto_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->open()Z

    .line 248
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->firstNames:Ljava/util/HashMap;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->getFirstNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->lastNames:Ljava/util/HashMap;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->getLastNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Journalist;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->firstNames:Ljava/util/HashMap;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lpl/mkrstudio/truefootball3/helpers/NameHelper;->getRandomFirstName(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->lastNames:Ljava/util/HashMap;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lpl/mkrstudio/truefootball3/helpers/NameHelper;->getRandomLastName(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getFaces()Lpl/mkrstudio/truefootball3/enums/Faces;

    move-result-object p1

    const/16 v2, 0x32

    invoke-direct {v0, v1, p1, v2}, Lpl/mkrstudio/truefootball3/objects/Journalist;-><init>(Ljava/lang/String;Lpl/mkrstudio/truefootball3/enums/Faces;I)V

    .line 253
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->close()V

    return-object v0
.end method

.method public generateOnePerson(Lpl/mkrstudio/truefootball3/objects/Country;FBLpl/mkrstudio/truefootball3/enums/EmployeeType;)Lpl/mkrstudio/truefootball3/objects/Employee;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "country",
            "skill",
            "age",
            "type"
        }
    .end annotation

    .line 227
    :try_start_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->copyDataBase()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 229
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 231
    :goto_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->open()Z

    .line 233
    invoke-virtual {p0, p1, p2, p3, p4}, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->generatePerson(Lpl/mkrstudio/truefootball3/objects/Country;FBLpl/mkrstudio/truefootball3/enums/EmployeeType;)Lpl/mkrstudio/truefootball3/objects/Employee;

    move-result-object p1

    .line 235
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->close()V

    return-object p1
.end method

.method public generatePerson(Lpl/mkrstudio/truefootball3/objects/Country;FBLpl/mkrstudio/truefootball3/enums/EmployeeType;)Lpl/mkrstudio/truefootball3/objects/Employee;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "country",
            "skill",
            "age",
            "type"
        }
    .end annotation

    .line 197
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 199
    new-instance v1, Lpl/mkrstudio/truefootball3/objects/Employee;

    invoke-direct {v1}, Lpl/mkrstudio/truefootball3/objects/Employee;-><init>()V

    .line 200
    sget-object v2, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->SCOUT:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    if-ne p4, v2, :cond_0

    .line 201
    new-instance v1, Lpl/mkrstudio/truefootball3/objects/Scout;

    invoke-direct {v1}, Lpl/mkrstudio/truefootball3/objects/Scout;-><init>()V

    .line 202
    :cond_0
    sget-object v2, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->YOUTH_TRAINER:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    if-ne p4, v2, :cond_1

    .line 203
    new-instance v1, Lpl/mkrstudio/truefootball3/objects/YouthTrainer;

    invoke-direct {v1}, Lpl/mkrstudio/truefootball3/objects/YouthTrainer;-><init>()V

    .line 205
    :cond_1
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->firstNames:Ljava/util/HashMap;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 206
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->firstNames:Ljava/util/HashMap;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->getFirstNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->lastNames:Ljava/util/HashMap;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->getLastNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_2
    invoke-virtual {v1, p4}, Lpl/mkrstudio/truefootball3/objects/Employee;->setType(Lpl/mkrstudio/truefootball3/enums/EmployeeType;)V

    if-nez p3, :cond_3

    const/16 p3, 0x1e

    .line 212
    invoke-virtual {v0, p3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, p3

    int-to-byte p3, v2

    .line 213
    :cond_3
    invoke-virtual {v1, p3}, Lpl/mkrstudio/truefootball3/objects/Employee;->setAge(B)V

    .line 215
    invoke-virtual {v1, p1}, Lpl/mkrstudio/truefootball3/objects/Employee;->setNationality(Lpl/mkrstudio/truefootball3/objects/Country;)V

    .line 216
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->firstNames:Ljava/util/HashMap;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lpl/mkrstudio/truefootball3/helpers/NameHelper;->getRandomFirstName(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->lastNames:Ljava/util/HashMap;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lpl/mkrstudio/truefootball3/helpers/NameHelper;->getRandomLastName(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lpl/mkrstudio/truefootball3/objects/Employee;->setName(Ljava/lang/String;)V

    float-to-double v2, p2

    const-wide/16 v4, 0x0

    cmpl-double p1, v2, v4

    if-nez p1, :cond_4

    .line 218
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result p1

    const/high16 p2, 0x41200000    # 10.0f

    mul-float p2, p2, p1

    .line 219
    :cond_4
    invoke-direct {p0, p2}, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->calculateExperience(F)B

    move-result p1

    invoke-virtual {v1, p1}, Lpl/mkrstudio/truefootball3/objects/Employee;->setExperience(B)V

    .line 220
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Employee;->getExperience()B

    move-result p1

    invoke-direct {p0, p1, p4}, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->calculateSalary(BLpl/mkrstudio/truefootball3/enums/EmployeeType;)J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Lpl/mkrstudio/truefootball3/objects/Employee;->setMonthlySalary(J)V

    return-object v1
.end method

.method public getClubStaff()Lpl/mkrstudio/truefootball3/objects/ClubStaff;
    .locals 1

    .line 261
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->clubStaff:Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    return-object v0
.end method

.method public getFirstNames()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Name;",
            ">;>;"
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->firstNames:Ljava/util/HashMap;

    return-object v0
.end method

.method public getJournalists()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Journalist;",
            ">;"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->journalists:Ljava/util/List;

    return-object v0
.end method

.method public getLastNames()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Name;",
            ">;>;"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->lastNames:Ljava/util/HashMap;

    return-object v0
.end method

.method public getScouts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Scout;",
            ">;"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->scouts:Ljava/util/List;

    return-object v0
.end method

.method public setClubStaff(Lpl/mkrstudio/truefootball3/objects/ClubStaff;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clubStaff"
        }
    .end annotation

    .line 265
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->clubStaff:Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    return-void
.end method

.method public setFirstNames(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "firstNames"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Name;",
            ">;>;)V"
        }
    .end annotation

    .line 289
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->firstNames:Ljava/util/HashMap;

    return-void
.end method

.method public setJournalists(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "journalists"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Journalist;",
            ">;)V"
        }
    .end annotation

    .line 273
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->journalists:Ljava/util/List;

    return-void
.end method

.method public setLastNames(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lastNames"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Name;",
            ">;>;)V"
        }
    .end annotation

    .line 297
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->lastNames:Ljava/util/HashMap;

    return-void
.end method

.method public setScouts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scouts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Scout;",
            ">;)V"
        }
    .end annotation

    .line 281
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->scouts:Ljava/util/List;

    return-void
.end method
