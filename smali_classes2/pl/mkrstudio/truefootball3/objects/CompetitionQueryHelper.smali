.class public Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;
.super Ljava/lang/Object;
.source "CompetitionQueryHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTeamsForEuropeanCommunityCup(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/Competitions;Landroid/content/Context;)V
    .locals 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "competition",
            "world",
            "competitions",
            "context"
        }
    .end annotation

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    .line 1299
    new-instance v11, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-direct {v11, v10}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;-><init>(Landroid/content/Context;)V

    .line 1301
    :try_start_0
    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->copyDataBase()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1303
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1306
    :goto_0
    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->open()Z

    .line 1308
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/World;->getEditedData()Lpl/mkrstudio/truefootball3/objects/EditedData;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lpl/mkrstudio/truefootball3/objects/EditedData;

    const-string v1, "edited_data"

    invoke-direct {v0, v11, v1, v10}, Lpl/mkrstudio/truefootball3/objects/EditedData;-><init>(Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/World;->getEditedData()Lpl/mkrstudio/truefootball3/objects/EditedData;

    move-result-object v0

    .line 1309
    :goto_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "europe"

    .line 1310
    invoke-virtual {v9, v1}, Lpl/mkrstudio/truefootball3/objects/World;->getContinentByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Continent;->getRanking(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    const-string v1, "LIE"

    .line 1311
    invoke-virtual {v9, v1}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    .line 1312
    invoke-interface {v13, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1314
    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1316
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v14

    const-string v15, "9.0"

    .line 1319
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v8, 0x36

    const-string v7, "11.0"

    const-string v6, "10.0"

    const/16 v5, 0x37

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    new-array v3, v5, [I

    .line 1320
    fill-array-data v3, :array_0

    new-array v2, v5, [I

    .line 1327
    fill-array-data v2, :array_1

    new-array v1, v5, [I

    .line 1334
    fill-array-data v1, :array_2

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v5, :cond_1

    .line 1343
    aget v16, v2, v10

    aget v17, v1, v10

    add-int v16, v16, v17

    .line 1344
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lpl/mkrstudio/truefootball3/objects/Country;

    invoke-virtual/range {v17 .. v17}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v17

    aget v18, v3, v10

    add-int v16, v18, v16

    aget v18, v3, v10

    move-object/from16 v19, v1

    move-object/from16 v1, p1

    move-object/from16 v20, v2

    move-object/from16 v2, v17

    move-object/from16 v17, v3

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v21, v15

    const/16 v15, 0x37

    move/from16 v5, v16

    move-object v15, v6

    move/from16 v6, v18

    move-object/from16 v18, v13

    move-object v13, v7

    move-object v7, v0

    move-object/from16 v22, v0

    const/16 v0, 0x36

    move-object v8, v11

    invoke-virtual/range {v1 .. v8}, Lpl/mkrstudio/truefootball3/objects/World;->getSortedTeamsForCountry(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Competitions;Landroid/content/Context;IILpl/mkrstudio/truefootball3/objects/EditedData;Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    move-object v7, v13

    move-object v6, v15

    move-object/from16 v3, v17

    move-object/from16 v13, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v15, v21

    move-object/from16 v0, v22

    const/4 v4, 0x0

    const/16 v5, 0x37

    const/16 v8, 0x36

    goto :goto_2

    :cond_1
    move-object v13, v7

    move-object/from16 v21, v15

    const/16 v0, 0x36

    move-object v15, v6

    goto/16 :goto_4

    :cond_2
    move-object/from16 v22, v0

    move-object/from16 v18, v13

    move-object/from16 v21, v15

    const/16 v0, 0x36

    move-object v15, v6

    move-object v13, v7

    .line 1346
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const-string v1, "RUS"

    .line 1347
    invoke-virtual {v9, v1}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    move-object/from16 v10, v18

    .line 1348
    invoke-interface {v10, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/16 v1, 0x37

    new-array v8, v1, [I

    .line 1350
    fill-array-data v8, :array_3

    new-array v7, v1, [I

    .line 1357
    fill-array-data v7, :array_4

    new-array v6, v1, [I

    .line 1364
    fill-array-data v6, :array_5

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v0, :cond_4

    .line 1373
    aget v1, v7, v5

    aget v2, v6, v5

    add-int/2addr v1, v2

    .line 1374
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Country;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v2

    aget v3, v8, v5

    add-int v16, v3, v1

    aget v17, v8, v5

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v18, v5

    move/from16 v5, v16

    move-object/from16 v16, v6

    move/from16 v6, v17

    move-object/from16 v17, v7

    move-object/from16 v7, v22

    move-object/from16 v19, v8

    move-object v8, v11

    invoke-virtual/range {v1 .. v8}, Lpl/mkrstudio/truefootball3/objects/World;->getSortedTeamsForCountry(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Competitions;Landroid/content/Context;IILpl/mkrstudio/truefootball3/objects/EditedData;Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v18, 0x1

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 v8, v19

    goto :goto_3

    .line 1378
    :cond_4
    :goto_4
    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->close()V

    move-object/from16 v1, v21

    .line 1380
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0x1c

    const/4 v5, 0x6

    const/16 v6, 0x1b

    const/4 v7, 0x2

    const/16 v8, 0xe

    const/4 v9, 0x4

    const/4 v10, 0x1

    const/4 v11, 0x3

    const/4 v4, 0x5

    if-eqz v1, :cond_12

    .line 1382
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v13, 0x0

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x35

    :goto_5
    const/16 v1, 0x22

    if-le v0, v1, :cond_5

    .line 1384
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_5
    const/16 v0, 0x35

    :goto_6
    if-le v0, v3, :cond_6

    .line 1387
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v14

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_6
    const/16 v0, 0x30

    :goto_7
    if-le v0, v6, :cond_7

    .line 1390
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v14

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_7
    :goto_8
    const/16 v0, 0x11

    if-le v1, v0, :cond_8

    .line 1394
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_8
    :goto_9
    if-le v3, v8, :cond_9

    .line 1397
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, -0x1

    goto :goto_9

    :cond_9
    const/16 v1, 0xe

    :goto_a
    if-le v1, v2, :cond_a

    .line 1400
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v3

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_a
    :goto_b
    if-le v6, v8, :cond_b

    .line 1403
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, -0x1

    goto :goto_b

    :cond_b
    :goto_c
    if-le v8, v4, :cond_c

    .line 1406
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, -0x1

    goto :goto_c

    .line 1408
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_d
    const/16 v1, 0xf

    if-le v0, v1, :cond_d

    .line 1412
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_d
    :goto_e
    if-le v2, v4, :cond_e

    .line 1415
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    .line 1417
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1420
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_f
    if-ltz v11, :cond_f

    .line 1422
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, -0x1

    goto :goto_f

    .line 1425
    :cond_f
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 1426
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v2

    invoke-static {v1, v2}, Lpl/mkrstudio/truefootball3/objects/CompetitionHelper;->getPreviousChampionsCupWinners(Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Continent;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    .line 1427
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v3

    invoke-static {v2, v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionHelper;->getPreviousFederationCupWinners(Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Continent;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    .line 1428
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v3

    invoke-static {v0, v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionHelper;->getPreviousCommunityCupWinners(Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Continent;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    if-eqz v1, :cond_10

    .line 1430
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1431
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_10
    if-eqz v2, :cond_11

    .line 1434
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1435
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_11
    if-eqz v0, :cond_20

    .line 1438
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1439
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1a

    :cond_12
    const/4 v0, 0x0

    .line 1442
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1444
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v1

    const/16 v13, 0x35

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x34

    const/16 v13, 0x34

    :goto_10
    const/16 v14, 0x28

    if-lt v13, v14, :cond_14

    .line 1446
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v14

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, -0x1

    goto :goto_10

    :cond_14
    :goto_11
    if-lt v1, v3, :cond_15

    .line 1449
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v13

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    :cond_15
    const/16 v1, 0x2f

    :goto_12
    if-lt v1, v6, :cond_16

    .line 1452
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v3

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    :cond_16
    const/16 v1, 0x27

    :goto_13
    const/16 v3, 0x13

    if-lt v1, v3, :cond_17

    .line 1456
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v3

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    :cond_17
    :goto_14
    if-lt v6, v8, :cond_18

    .line 1459
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, -0x1

    goto :goto_14

    :cond_18
    const/16 v1, 0x1a

    :goto_15
    if-lt v1, v2, :cond_19

    .line 1462
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v3

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    :cond_19
    const/16 v1, 0xd

    :goto_16
    if-lt v1, v5, :cond_1a

    .line 1465
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    .line 1467
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x12

    :goto_17
    const/16 v2, 0x10

    if-lt v1, v2, :cond_1b

    .line 1471
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    :cond_1b
    const/16 v1, 0xa

    :goto_18
    if-lt v1, v5, :cond_1c

    .line 1474
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_18

    .line 1476
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1479
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_19
    if-ltz v11, :cond_1d

    .line 1481
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, -0x1

    goto :goto_19

    .line 1484
    :cond_1d
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 1485
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v3

    invoke-static {v2, v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionHelper;->getPreviousChampionsCupWinners(Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Continent;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    .line 1486
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v4

    invoke-static {v3, v4}, Lpl/mkrstudio/truefootball3/objects/CompetitionHelper;->getPreviousFederationCupWinners(Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Continent;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    .line 1487
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v0

    invoke-static {v1, v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionHelper;->getPreviousCommunityCupWinners(Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Continent;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    if-eqz v2, :cond_1e

    .line 1489
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1490
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1e
    if-eqz v3, :cond_1f

    .line 1493
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1494
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1f
    if-eqz v0, :cond_20

    .line 1497
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1498
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_20
    :goto_1a
    return-void

    :array_0
    .array-data 4
        0x4
        0x4
        0x4
        0x4
        0x3
        0x3
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x4
        0x4
        0x4
        0x3
        0x3
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x0
    .end array-data
.end method

.method public static addTeamsForMexican2Final(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competitions;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "competition",
            "competitions",
            "context"
        }
    .end annotation

    .line 74
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object p2

    const-string v0, "MEX_PLAYOFF3"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {p2, p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object p2

    .line 75
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "MEX_PLAYOFF4"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object p1

    .line 77
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-ne v0, p2, :cond_0

    .line 79
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :goto_0
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    return-void
.end method

.method public static addTeamsForMexican2League(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/History;Lpl/mkrstudio/truefootball3/objects/World;Landroid/content/Context;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "competition",
            "competitions",
            "params",
            "currentHistory",
            "world",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/mkrstudio/truefootball3/objects/Competition;",
            "Lpl/mkrstudio/truefootball3/objects/Competitions;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lpl/mkrstudio/truefootball3/objects/History;",
            "Lpl/mkrstudio/truefootball3/objects/World;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_a

    .line 21
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getPastCompetitions()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/History;->getHistoricalCompetitions()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_a

    .line 22
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string p3, "MEX_2"

    .line 23
    invoke-virtual {p4, p3}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 24
    invoke-virtual {p4, p3}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 25
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper$1;

    invoke-direct {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper$1;-><init>()V

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 45
    :cond_1
    invoke-virtual {p5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p5

    check-cast p5, Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object p5

    const-string v0, "7.0"

    .line 46
    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xe

    const-string v2, "9.0"

    const/16 v3, 0xf

    if-eqz v0, :cond_2

    const/16 v0, 0xd

    goto :goto_1

    :cond_2
    const-string v0, "8.0"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0xe

    goto :goto_1

    :cond_4
    :goto_0
    const/16 v0, 0xf

    .line 48
    :goto_1
    invoke-virtual {p5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v4, 0x11

    if-eqz v2, :cond_5

    invoke-virtual {p4, p3}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p4, p3}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v4, :cond_5

    const/16 v0, 0x10

    :cond_5
    const-string v2, "10.0"

    .line 52
    invoke-virtual {p5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p4, p3}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p4, p3}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v5, 0x12

    if-ne v2, v5, :cond_6

    goto :goto_2

    :cond_6
    move v4, v0

    :goto_2
    const-string v0, "11.0"

    .line 56
    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_7

    invoke-virtual {p4, p3}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object p5

    if-eqz p5, :cond_7

    invoke-virtual {p4, p3}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ne p3, v3, :cond_7

    goto :goto_3

    :cond_7
    move v1, v4

    :goto_3
    const/4 p3, 0x1

    :goto_4
    if-gt p3, v1, :cond_8

    .line 61
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object p4

    add-int/lit8 p5, p3, -0x1

    invoke-interface {p2, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_8
    const-string p2, "MEX_PLAYOFF5"

    .line 64
    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getPreviousOrCurrentCompetition(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object p3

    if-nez p3, :cond_9

    .line 66
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Lpl/mkrstudio/truefootball3/objects/Competition;

    .line 68
    :cond_9
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3, p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_a
    return-void
.end method

.method public static addTeamsForSuperCup(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/util/ArrayList;Lpl/mkrstudio/truefootball3/objects/History;Lpl/mkrstudio/truefootball3/objects/World;Landroid/content/Context;)V
    .locals 39
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "competition",
            "competitions",
            "params",
            "currentHistory",
            "world",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/mkrstudio/truefootball3/objects/Competition;",
            "Lpl/mkrstudio/truefootball3/objects/Competitions;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lpl/mkrstudio/truefootball3/objects/History;",
            "Lpl/mkrstudio/truefootball3/objects/World;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    .line 95
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v4, "EUR"

    const-string v5, "AFR"

    const-string v6, "SAM"

    .line 96
    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "TUR"

    const-string v9, "TKM"

    const-string v10, "POR"

    const-string v11, "POL"

    const-string v12, "KSA"

    const-string v13, "JOR"

    const-string v14, "ITA"

    const-string v15, "ISL"

    const-string v16, "GEO"

    const-string v17, "EST"

    const-string v18, "EGY"

    const-string v19, "CYP"

    const-string v20, "BUL"

    const-string v21, "BLR"

    const-string v22, "BEL"

    const-string v23, "ARM"

    const-string v24, "ANG"

    .line 97
    filled-new-array/range {v8 .. v24}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "TJK"

    const-string v10, "SIN"

    const-string v11, "RUS"

    const-string v12, "ROM"

    const-string v13, "NOR"

    const-string v14, "NED"

    const-string v15, "MLT"

    const-string v16, "LTU"

    const-string v17, "KUW"

    const-string v18, "JPN"

    const-string v19, "ISR"

    const-string v20, "IRQ"

    const-string v21, "HUN"

    const-string v22, "GIB"

    const-string v23, "GER"

    const-string v24, "FRA"

    const-string v25, "ENG"

    const-string v26, "CHN"

    const-string v27, "ARG"

    .line 99
    filled-new-array/range {v9 .. v27}, [Ljava/lang/String;

    move-result-object v9

    const-string v10, "VIE"

    const-string v11, "UZB"

    const-string v12, "URU"

    const-string v13, "UKR"

    const-string v14, "UAE"

    const-string v15, "TUN"

    const-string v16, "TRI"

    const-string v17, "THA"

    const-string v18, "SYR"

    const-string v19, "QAT"

    const-string v20, "NGA"

    const-string v21, "MYA"

    const-string v22, "MKD"

    const-string v23, "MDA"

    const-string v24, "KOS"

    const-string v25, "KGZ"

    const-string v26, "KEN"

    const-string v27, "KAZ"

    const-string v28, "IRN"

    const-string v29, "IRL"

    const-string v30, "HKG"

    const-string v31, "GHA"

    const-string v32, "FRO"

    const-string v33, "CRO"

    const-string v34, "CHI"

    const-string v35, "ANG"

    const-string v36, "ALG"

    const-string v37, "AND"

    const-string v38, "ALB"

    .line 101
    filled-new-array/range {v10 .. v38}, [Ljava/lang/String;

    move-result-object v10

    new-array v11, v3, [Ljava/lang/String;

    .line 105
    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    check-cast v12, Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v12

    const-string v13, "7.0"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string v14, "11.0"

    const-string v15, "10.0"

    const-string v3, "9.0"

    move-object/from16 v16, v11

    const-string v11, "8.0"

    if-eqz v12, :cond_0

    const-string v17, "POL"

    const-string v18, "CYP"

    const-string v19, "BUL"

    const-string v20, "ARM"

    const-string v21, "ROM"

    const-string v22, "LTU"

    const-string v23, "ISR"

    const-string v24, "GIB"

    const-string v25, "UKR"

    const-string v26, "AND"

    .line 106
    filled-new-array/range {v17 .. v26}, [Ljava/lang/String;

    move-result-object v12

    :goto_0
    move-object/from16 p3, v5

    move-object/from16 v16, v6

    const/4 v5, 0x0

    goto/16 :goto_1

    .line 107
    :cond_0
    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    check-cast v12, Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const-string v17, "CYP"

    const-string v18, "BUL"

    const-string v19, "ARM"

    const-string v20, "ROM"

    const-string v21, "ISR"

    const-string v22, "GIB"

    const-string v23, "AND"

    .line 108
    filled-new-array/range {v17 .. v23}, [Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    check-cast v12, Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const-string v17, "CYP"

    const-string v18, "BUL"

    const-string v19, "ARM"

    const-string v20, "ROM"

    const-string v21, "ISR"

    const-string v22, "GIB"

    const-string v23, "AND"

    const-string v24, "TUN"

    .line 110
    filled-new-array/range {v17 .. v24}, [Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    check-cast v12, Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const-string v17, "CYP"

    const-string v18, "BUL"

    const-string v19, "ARM"

    const-string v20, "ROM"

    const-string v21, "ISR"

    const-string v22, "GIB"

    const-string v23, "TUN"

    .line 112
    filled-new-array/range {v17 .. v23}, [Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    .line 113
    :cond_3
    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    check-cast v12, Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const-string v17, "CYP"

    const-string v18, "BUL"

    const-string v19, "ARM"

    const-string v20, "ROM"

    const-string v21, "GIB"

    const-string v22, "TUN"

    .line 114
    filled-new-array/range {v17 .. v22}, [Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    :cond_4
    move-object/from16 p3, v5

    move-object/from16 v12, v16

    const/4 v5, 0x0

    move-object/from16 v16, v6

    :goto_1
    new-array v6, v5, [Ljava/lang/String;

    .line 119
    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    move-object/from16 v17, v6

    const-string v6, "NGA"

    if-eqz v5, :cond_5

    .line 120
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v5

    move-object/from16 v17, v5

    :cond_5
    const-string v5, "TRI"

    move-object/from16 v18, v4

    const-string v4, "KEN"

    .line 123
    filled-new-array {v5, v6, v4}, [Ljava/lang/String;

    move-result-object v4

    .line 125
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 126
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 127
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 128
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 129
    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 130
    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 131
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 133
    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "ESP"

    if-nez v4, :cond_17

    .line 137
    invoke-interface {v9, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "_1C"

    goto :goto_2

    .line 139
    :cond_6
    invoke-interface {v8, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "_1A"

    goto :goto_2

    :cond_7
    const-string v4, "_1"

    .line 145
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getPreviousOrCurrentCompetition(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v8

    if-nez v8, :cond_8

    .line 147
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Competition;

    .line 148
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCurrentWeek()B

    move-result v9

    if-lez v9, :cond_8

    move-object v8, v4

    .line 150
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_CUP"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getPreviousOrCurrentCompetition(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v4

    if-nez v4, :cond_9

    .line 152
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lpl/mkrstudio/truefootball3/objects/Competition;

    .line 153
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCurrentWeek()B

    move-result v10

    if-lez v10, :cond_9

    move-object v4, v9

    .line 155
    :cond_9
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    if-eqz v8, :cond_c

    if-nez v4, :cond_a

    goto :goto_4

    .line 163
    :cond_a
    invoke-virtual {v4, v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 164
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    :goto_3
    const/4 v2, 0x4

    if-ge v3, v2, :cond_28

    .line 166
    invoke-virtual {v8, v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Team;

    if-eq v1, v2, :cond_b

    .line 167
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_b

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 157
    :cond_c
    :goto_4
    invoke-virtual {v1, v5}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object v0

    .line 158
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v1

    const-string v2, "Barcelona"

    invoke-static {v0, v2}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v1

    const-string v2, "A. Madrid"

    invoke-static {v0, v2}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v1

    const-string v2, "R. Madrid"

    invoke-static {v0, v2}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v1

    const-string v2, "A. Bilbao"

    invoke-static {v0, v2}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_d
    const/4 v5, 0x1

    if-eqz v8, :cond_12

    if-nez v4, :cond_e

    goto/16 :goto_5

    .line 189
    :cond_e
    invoke-virtual {v8, v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 190
    invoke-virtual {v4, v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 191
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 192
    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 193
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v8, v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 195
    :cond_f
    invoke-interface {v7, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 196
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v4, v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 199
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v8, v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 203
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 172
    :cond_12
    :goto_5
    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 173
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamForSuperCup(Lpl/mkrstudio/truefootball3/objects/World;Ljava/lang/String;I)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v2, v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamForSuperCup(Lpl/mkrstudio/truefootball3/objects/World;Ljava/lang/String;I)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 175
    :cond_13
    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 176
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamForSuperCup2020(Lpl/mkrstudio/truefootball3/objects/World;Ljava/lang/String;I)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v2, v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamForSuperCup2020(Lpl/mkrstudio/truefootball3/objects/World;Ljava/lang/String;I)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 178
    :cond_14
    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 179
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamForSuperCup2021(Lpl/mkrstudio/truefootball3/objects/World;Ljava/lang/String;I)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v2, v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamForSuperCup2021(Lpl/mkrstudio/truefootball3/objects/World;Ljava/lang/String;I)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 181
    :cond_15
    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 182
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamForSuperCup2022(Lpl/mkrstudio/truefootball3/objects/World;Ljava/lang/String;I)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v2, v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamForSuperCup2022(Lpl/mkrstudio/truefootball3/objects/World;Ljava/lang/String;I)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 184
    :cond_16
    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 185
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamForSuperCup2023(Lpl/mkrstudio/truefootball3/objects/World;Ljava/lang/String;I)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v2, v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamForSuperCup2023(Lpl/mkrstudio/truefootball3/objects/World;Ljava/lang/String;I)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 210
    :cond_17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_CC"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getPreviousOrCurrentCompetition(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v4

    .line 211
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_EC"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getPreviousOrCurrentCompetition(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v6

    if-eqz v4, :cond_19

    if-nez v6, :cond_18

    goto :goto_6

    .line 297
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v4, v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v6, v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 213
    :cond_19
    :goto_6
    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "A. P. Curitiba"

    const-string v6, "ARG"

    const-string v7, "C. London"

    const-string v8, "ENG"

    const-string v9, "EGY"

    const-string v10, "BRA"

    if-eqz v0, :cond_1c

    move-object/from16 v0, v18

    .line 214
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 215
    invoke-virtual {v1, v8}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object v0

    .line 216
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v1

    const-string v2, "Liverpool"

    invoke-static {v0, v2}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v7}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_1a
    move-object/from16 v12, v16

    .line 218
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 219
    invoke-virtual {v1, v6}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object v0

    .line 220
    invoke-virtual {v1, v10}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object v1

    .line 221
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v2

    const-string v3, "R. P. Buenos Aires"

    invoke-static {v0, v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v4}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_1b
    move-object/from16 v13, p3

    .line 223
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "TUN"

    .line 224
    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object v0

    .line 225
    invoke-virtual {v1, v9}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object v1

    .line 226
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v2

    const-string v3, "E. Tunis"

    invoke-static {v0, v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    const-string v2, "Z. Giza"

    invoke-static {v1, v2}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_1c
    move-object/from16 v13, p3

    move-object/from16 v12, v16

    move-object/from16 v0, v18

    .line 229
    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    check-cast v16, Lpl/mkrstudio/truefootball3/objects/UserData;

    move-object/from16 p2, v14

    invoke-virtual/range {v16 .. v16}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v14, "ECU"

    move-object/from16 p1, v4

    const-string v4, "Sevilla"

    move-object/from16 p3, v15

    const-string v15, "GER"

    if-eqz v11, :cond_1f

    .line 230
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 231
    invoke-virtual {v1, v15}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object v0

    .line 232
    invoke-virtual {v1, v5}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object v1

    .line 233
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v2

    const-string v3, "Blue-Reds 1900"

    invoke-static {v0, v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v4}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 235
    :cond_1d
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 236
    invoke-virtual {v1, v14}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object v0

    .line 237
    invoke-virtual {v1, v10}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object v1

    .line 238
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v2

    const-string v3, "C. R. F. Rio de Janeiro"

    invoke-static {v1, v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v1

    const-string v2, "I. Sangolqu\u00ed"

    invoke-static {v0, v2}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 240
    :cond_1e
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "TUN"

    .line 241
    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object v0

    .line 242
    invoke-virtual {v1, v9}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object v1

    .line 243
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v2

    const-string v3, "E. Tunis"

    invoke-static {v0, v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    const-string v2, "Z. Giza"

    invoke-static {v1, v2}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 246
    :cond_1f
    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 247
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 248
    invoke-virtual {v1, v8}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object v0

    .line 249
    invoke-virtual {v1, v5}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object v1

    .line 250
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v7}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    const-string v2, "Villarreal"

    invoke-static {v1, v2}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 252
    :cond_20
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 253
    invoke-virtual {v1, v10}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object v0

    .line 254
    invoke-virtual {v1, v6}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object v1

    .line 255
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v2

    const-string v3, "S. E. P. S\u00e3o Paulo"

    invoke-static {v0, v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    const-string v2, "D. J. Florencio Varela"

    invoke-static {v1, v2}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 257
    :cond_21
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 258
    invoke-virtual {v1, v9}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object v0

    const-string v2, "MAR"

    .line 259
    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object v1

    .line 260
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v2

    const-string v3, "A. Cairo"

    invoke-static {v0, v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    const-string v2, "R. Berkane"

    invoke-static {v1, v2}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 263
    :cond_22
    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v6, p3

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 264
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 265
    invoke-virtual {v1, v5}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object v0

    .line 266
    invoke-virtual {v1, v15}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object v1

    .line 267
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v2

    const-string v3, "R. Madrid"

    invoke-static {v0, v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    const-string v2, "White-Reds 1899"

    invoke-static {v1, v2}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 269
    :cond_23
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 270
    invoke-virtual {v1, v10}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object v0

    .line 271
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v1

    const-string v2, "S. E. P. S\u00e3o Paulo"

    invoke-static {v0, v2}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-static {v0, v2}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 273
    :cond_24
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "MAR"

    .line 274
    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object v0

    .line 275
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v1

    const-string v2, "W. Casablanca"

    invoke-static {v0, v2}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v1

    const-string v2, "R. Berkane"

    invoke-static {v0, v2}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 278
    :cond_25
    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v6, p2

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 279
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 280
    invoke-virtual {v1, v8}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object v0

    .line 281
    invoke-virtual {v1, v5}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object v1

    .line 282
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v2

    const-string v3, "Manchester C."

    invoke-static {v0, v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v4}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 284
    :cond_26
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 285
    invoke-virtual {v1, v10}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object v0

    .line 286
    invoke-virtual {v1, v14}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object v1

    .line 287
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v2

    const-string v3, "C. R. F. Rio de Janeiro"

    invoke-static {v0, v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    const-string v2, "I. Sangolqu\u00ed"

    invoke-static {v1, v2}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 289
    :cond_27
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 290
    invoke-virtual {v1, v9}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object v0

    const-string v2, "ALG"

    .line 291
    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object v1

    .line 292
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v2

    const-string v3, "A. Cairo"

    invoke-static {v0, v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    const-string v2, "U. S. M. Alger"

    invoke-static {v1, v2}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_28
    :goto_7
    return-void
.end method

.method public static getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "teams",
            "originalName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lpl/mkrstudio/truefootball3/objects/Team;"
        }
    .end annotation

    .line 88
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 89
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getTeamForSuperCup(Lpl/mkrstudio/truefootball3/objects/World;Ljava/lang/String;I)Lpl/mkrstudio/truefootball3/objects/Team;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "world",
            "countryCode",
            "i"
        }
    .end annotation

    .line 306
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object p0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object p0

    const-string v0, "VIE"

    .line 307
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    const-string p1, "H\u00e0 N\u1ed9i"

    .line 308
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p1, "B. B\u00ecnh D\u01b0\u01a1ng"

    .line 309
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    const-string v0, "UZB"

    .line 310
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_2

    const-string p1, "L. Toshkent"

    .line 311
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_1

    :cond_2
    const-string p1, "A. G. M. K. Almalyk"

    .line 312
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_3
    const-string v0, "UKR"

    .line 313
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p2, :cond_4

    const-string p1, "S. Donetsk"

    .line 314
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_2

    :cond_4
    const-string p1, "D. Kyiv"

    .line 315
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_5
    const-string v0, "UAE"

    .line 316
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez p2, :cond_6

    const-string p1, "Al Sharjah"

    .line 317
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_3

    :cond_6
    const-string p1, "S. A. Dubai"

    .line 318
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_3
    return-object p0

    :cond_7
    const-string v0, "TUR"

    .line 319
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-nez p2, :cond_8

    const-string p1, "G. \u0130stanbul"

    .line 320
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_4

    :cond_8
    const-string p1, "Akhisar B."

    .line 321
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_4
    return-object p0

    :cond_9
    const-string v0, "TUN"

    .line 322
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-nez p2, :cond_a

    const-string p1, "E. Tunis"

    .line 323
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_5

    :cond_a
    const-string p1, "Bizerte"

    .line 324
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_5
    return-object p0

    :cond_b
    const-string v0, "TRI"

    .line 325
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    if-nez p2, :cond_c

    const-string p1, "N. E. S. Arima"

    .line 326
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_6

    :cond_c
    const-string p1, "W C. Marabella"

    .line 327
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_6
    return-object p0

    :cond_d
    const-string v0, "TKM"

    .line 328
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    if-nez p2, :cond_e

    const-string p1, "A. A. A\u015fgabat"

    .line 329
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_7

    :cond_e
    const-string p1, "K. A\u015fgabat"

    .line 330
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_7
    return-object p0

    :cond_f
    const-string v0, "TJK"

    .line 331
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    if-nez p2, :cond_10

    const-string p1, "I. Dushanbe"

    .line 332
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_8

    :cond_10
    const-string p1, "Khujand"

    .line 333
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_8
    return-object p0

    :cond_11
    const-string v0, "THA"

    .line 334
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    if-nez p2, :cond_12

    const-string p1, "Buriram U."

    .line 335
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_9

    :cond_12
    const-string p1, "Chiang Rai U."

    .line 336
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_9
    return-object p0

    :cond_13
    const-string v0, "SYR"

    .line 337
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    if-nez p2, :cond_14

    const-string p1, "J. Damascus 1947"

    .line 338
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_a

    :cond_14
    const-string p1, "W. Homs"

    .line 339
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_a
    return-object p0

    :cond_15
    const-string v0, "SIN"

    .line 340
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    if-nez p2, :cond_16

    const-string p1, "H. U. Bishan"

    .line 341
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_b

    :cond_16
    const-string p1, "A. N. Singapore"

    .line 342
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_b
    return-object p0

    :cond_17
    const-string v0, "RUS"

    .line 343
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    if-nez p2, :cond_18

    const-string p1, "Z. Saint Petersburg"

    .line 344
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_c

    :cond_18
    const-string p1, "L. Moscow"

    .line 345
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_c
    return-object p0

    :cond_19
    const-string v0, "ROM"

    .line 346
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    if-nez p2, :cond_1a

    const-string p1, "Cluj"

    .line 347
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_d

    :cond_1a
    const-string p1, "V. Constan\u021ba"

    .line 348
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_d
    return-object p0

    :cond_1b
    const-string v0, "QAT"

    .line 349
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    if-nez p2, :cond_1c

    const-string p1, "S. Doha 1969"

    .line 350
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_e

    :cond_1c
    const-string p1, "D. Doha"

    .line 351
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_e
    return-object p0

    :cond_1d
    const-string v0, "POR"

    .line 352
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    if-nez p2, :cond_1e

    const-string p1, "B. Lisboa"

    .line 353
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_f

    :cond_1e
    const-string p1, "S. Lisboa"

    .line 354
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_f
    return-object p0

    :cond_1f
    const-string v0, "POL"

    .line 355
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    if-nez p2, :cond_20

    const-string p1, "P. Gliwice"

    .line 356
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_10

    :cond_20
    const-string p1, "L. Gda\u0144sk"

    .line 357
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_10
    return-object p0

    :cond_21
    const-string v0, "NOR"

    .line 358
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    if-nez p2, :cond_22

    const-string p1, "R. Trondheim"

    .line 359
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_11

    :cond_22
    const-string p1, "Molde"

    .line 360
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_11
    return-object p0

    :cond_23
    const-string v0, "NGA"

    .line 361
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    if-nez p2, :cond_24

    const-string p1, "Enugu R."

    .line 362
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_12

    :cond_24
    const-string p1, "L. S. Makurdi"

    .line 363
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_12
    return-object p0

    :cond_25
    const-string v0, "NED"

    .line 364
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    if-nez p2, :cond_26

    const-string p1, "A. Amsterdam"

    .line 365
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_13

    :cond_26
    const-string p1, "Eindhoven"

    .line 366
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_13
    return-object p0

    :cond_27
    const-string v0, "MYA"

    .line 367
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    if-nez p2, :cond_28

    const-string p1, "Yangon U."

    .line 368
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_14

    :cond_28
    const-string p1, "S. U. Taunggyi"

    .line 369
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_14
    return-object p0

    :cond_29
    const-string v0, "MLT"

    .line 370
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    if-nez p2, :cond_2a

    const-string p1, "Valletta"

    .line 371
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_15

    :cond_2a
    const-string p1, "Balzan"

    .line 372
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_15
    return-object p0

    :cond_2b
    const-string v0, "MKD"

    .line 373
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    if-nez p2, :cond_2c

    const-string p1, "A. P. Strumica"

    .line 374
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_16

    :cond_2c
    const-string p1, "S. Tetovo"

    .line 375
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_16
    return-object p0

    :cond_2d
    const-string v0, "MDA"

    .line 376
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    if-nez p2, :cond_2e

    const-string p1, "M. Orhei"

    .line 377
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_17

    :cond_2e
    const-string p1, "S. Tiraspol"

    .line 378
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_17
    return-object p0

    :cond_2f
    const-string v0, "LTU"

    .line 379
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    if-nez p2, :cond_30

    const-string p1, "S. Marijampol\u0117"

    .line 380
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_18

    :cond_30
    const-string p1, "\u017d. Vilnius"

    .line 381
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_18
    return-object p0

    :cond_31
    const-string v0, "KUW"

    .line 382
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    if-nez p2, :cond_32

    const-string p1, "Q. Kuwait"

    .line 383
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_19

    :cond_32
    const-string p1, "Kuwait S. C."

    .line 384
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_19
    return-object p0

    :cond_33
    const-string v0, "KSA"

    .line 385
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    if-nez p2, :cond_34

    const-string p1, "N. Riyadh"

    .line 386
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_1a

    :cond_34
    const-string p1, "T. Buraydah"

    .line 387
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_1a
    return-object p0

    :cond_35
    const-string v0, "KOS"

    .line 388
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    if-nez p2, :cond_36

    const-string p1, "Pri\u0161tina"

    .line 389
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_1b

    :cond_36
    const-string p1, "F. Glogovac"

    .line 390
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_1b
    return-object p0

    :cond_37
    const-string v0, "KGZ"

    .line 391
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    if-nez p2, :cond_38

    const-string p1, "D. Bishkek"

    .line 392
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_1c

    :cond_38
    const-string p1, "A. Osh 1960"

    .line 393
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_1c
    return-object p0

    :cond_39
    const-string v0, "KEN"

    .line 394
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    if-nez p2, :cond_3a

    const-string p1, "G. M. Nairobi"

    .line 395
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_1d

    :cond_3a
    const-string p1, "K. S. Nairobi"

    .line 396
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_1d
    return-object p0

    :cond_3b
    const-string v0, "KAZ"

    .line 397
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    if-nez p2, :cond_3c

    const-string p1, "K. Almaty"

    .line 398
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_1e

    :cond_3c
    const-string p1, "Astana"

    .line 399
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_1e
    return-object p0

    :cond_3d
    const-string v0, "JPN"

    .line 400
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    if-nez p2, :cond_3e

    const-string p1, "Kawasaki F."

    .line 401
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_1f

    :cond_3e
    const-string p1, "Saitama R. D."

    .line 402
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_1f
    return-object p0

    :cond_3f
    const-string v0, "JOR"

    .line 403
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    if-nez p2, :cond_40

    const-string p1, "Ramtha"

    .line 404
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_20

    :cond_40
    const-string p1, "F. Amman"

    .line 405
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_20
    return-object p0

    :cond_41
    const-string v0, "ITA"

    .line 406
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    if-nez p2, :cond_42

    const-string p1, "J. Torino"

    .line 407
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_21

    :cond_42
    const-string p1, "L. Roma"

    .line 408
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_21
    return-object p0

    :cond_43
    const-string v0, "ISR"

    .line 409
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    if-nez p2, :cond_44

    const-string p1, "B. Y. Tel Aviv"

    .line 410
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_22

    :cond_44
    const-string p1, "M. Tel Aviv"

    .line 411
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_22
    return-object p0

    :cond_45
    const-string v0, "ISL"

    .line 412
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    if-nez p2, :cond_46

    const-string p1, "V. Reykjav\u00edk 1911"

    .line 413
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_23

    :cond_46
    const-string p1, "S. Gar\u00f0ab\u00e6r"

    .line 414
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_23
    return-object p0

    :cond_47
    const-string v0, "IRQ"

    .line 415
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    if-nez p2, :cond_48

    const-string p1, "S. Baghdad 1932"

    .line 416
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_24

    :cond_48
    const-string p1, "Z. Baghdad"

    .line 417
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_24
    return-object p0

    :cond_49
    const-string v0, "IRN"

    .line 418
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    if-nez p2, :cond_4a

    const-string p1, "S. Isfahan"

    .line 419
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_25

    :cond_4a
    const-string p1, "P. Tehran"

    .line 420
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_25
    return-object p0

    :cond_4b
    const-string v0, "IRL"

    .line 421
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    if-nez p2, :cond_4c

    const-string p1, "Cork C."

    .line 422
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_26

    :cond_4c
    const-string p1, "Dundalk"

    .line 423
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_26
    return-object p0

    :cond_4d
    const-string v0, "HUN"

    .line 424
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    if-nez p2, :cond_4e

    const-string p1, "F. Budapest"

    .line 425
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_27

    :cond_4e
    const-string p1, "F. Sz\u00e9kesfeh\u00e9rv\u00e1r"

    .line 426
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_27
    return-object p0

    :cond_4f
    const-string v0, "HKG"

    .line 427
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    if-nez p2, :cond_50

    const-string p1, "K. Mong Kok"

    .line 428
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_28

    :cond_50
    const-string p1, "W. Tai Po"

    .line 429
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_28
    return-object p0

    :cond_51
    const-string v0, "GHA"

    .line 430
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    if-nez p2, :cond_52

    const-string p1, "A. K. Kumasi"

    .line 431
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_29

    :cond_52
    const-string p1, "A. S. Wa"

    .line 432
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_29
    return-object p0

    :cond_53
    const-string v0, "GIB"

    .line 433
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    if-nez p2, :cond_54

    const-string p1, "L. R. I. Gibraltar"

    .line 434
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_2a

    :cond_54
    const-string p1, "E. Gibraltar"

    .line 435
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_2a
    return-object p0

    :cond_55
    const-string v0, "GER"

    .line 436
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    if-nez p2, :cond_56

    const-string p1, "Blue-Reds 1900"

    .line 437
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_2b

    :cond_56
    const-string p1, "Black-Yellows 1909"

    .line 438
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_2b
    return-object p0

    :cond_57
    const-string v0, "GEO"

    .line 439
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    if-nez p2, :cond_58

    const-string p1, "T. Kutaisi"

    .line 440
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_2c

    :cond_58
    const-string p1, "S. Tbilisi"

    .line 441
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_2c
    return-object p0

    :cond_59
    const-string v0, "FRO"

    .line 442
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    if-nez p2, :cond_5a

    const-string p1, "H. B. T\u00f3rshavn"

    .line 443
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_2d

    :cond_5a
    const-string p1, "T\u00f3rshavn 36"

    .line 444
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_2d
    return-object p0

    :cond_5b
    const-string v0, "FRA"

    .line 445
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    if-nez p2, :cond_5c

    const-string p1, "Paris S. G."

    .line 446
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_2e

    :cond_5c
    const-string p1, "Rennes"

    .line 447
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_2e
    return-object p0

    :cond_5d
    const-string v0, "EST"

    .line 448
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    if-nez p2, :cond_5e

    const-string p1, "N. K. Tallinn"

    .line 449
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_2f

    :cond_5e
    const-string p1, "I. L. Tallinn"

    .line 450
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_2f
    return-object p0

    :cond_5f
    const-string v0, "ENG"

    .line 451
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    if-nez p2, :cond_60

    const-string p1, "Manchester C."

    .line 452
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_30

    :cond_60
    const-string p1, "Liverpool"

    .line 453
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_30
    return-object p0

    :cond_61
    const-string v0, "EGY"

    .line 454
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    if-nez p2, :cond_62

    const-string p1, "A. Cairo"

    .line 455
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_31

    :cond_62
    const-string p1, "Z. Giza"

    .line 456
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_31
    return-object p0

    :cond_63
    const-string v0, "CYP"

    .line 457
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    if-nez p2, :cond_64

    const-string p1, "Lefkosia"

    .line 458
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_32

    :cond_64
    const-string p1, "Lemesou"

    .line 459
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_32
    return-object p0

    :cond_65
    const-string v0, "CRO"

    .line 460
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    if-nez p2, :cond_66

    const-string p1, "D. Zagreb"

    .line 461
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_33

    :cond_66
    const-string p1, "Rijeka"

    .line 462
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_33
    return-object p0

    :cond_67
    const-string v0, "CHN"

    .line 463
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    if-nez p2, :cond_68

    const-string p1, "Shanghai S. I. P. G."

    .line 464
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_34

    :cond_68
    const-string p1, "Beijing S. G."

    .line 465
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_34
    return-object p0

    :cond_69
    const-string v0, "CHI"

    .line 466
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    if-nez p2, :cond_6a

    const-string p1, "C. D. U. C. Santiago"

    .line 467
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_35

    :cond_6a
    const-string p1, "P. Santiago"

    .line 468
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_35
    return-object p0

    :cond_6b
    const-string v0, "BUL"

    .line 469
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    if-nez p2, :cond_6c

    const-string p1, "L. Razgrad"

    .line 470
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_36

    :cond_6c
    const-string p1, "L. Plovdiv"

    .line 471
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_36
    return-object p0

    :cond_6d
    const-string v0, "BLR"

    .line 472
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    if-nez p2, :cond_6e

    const-string p1, "D. Brest"

    .line 473
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_37

    :cond_6e
    const-string p1, "Borisov"

    .line 474
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_37
    return-object p0

    :cond_6f
    const-string v0, "BEL"

    .line 475
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    if-nez p2, :cond_70

    const-string p1, "R. Genk"

    .line 476
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_38

    :cond_70
    const-string p1, "K. V. Mechelen"

    .line 477
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_38
    return-object p0

    :cond_71
    const-string v0, "ARM"

    .line 478
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    if-nez p2, :cond_72

    const-string p1, "A. A. Yerevan"

    .line 479
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_39

    :cond_72
    const-string p1, "A. Martuni"

    .line 480
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_39
    return-object p0

    :cond_73
    const-string v0, "ARG"

    .line 481
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    if-nez p2, :cond_74

    const-string p1, "Rosario C."

    .line 482
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_3a

    :cond_74
    const-string p1, "B. J. Buenos Aires"

    .line 483
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_3a
    return-object p0

    :cond_75
    const-string v0, "ANG"

    .line 484
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    if-nez p2, :cond_76

    const-string p1, "P. A. Luanda"

    .line 485
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_3b

    :cond_76
    const-string p1, "H. Lubango"

    .line 486
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_3b
    return-object p0

    :cond_77
    const-string v0, "AND"

    .line 487
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    if-nez p2, :cond_78

    const-string p1, "Santa Coloma"

    .line 488
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_3c

    :cond_78
    const-string p1, "Engordany"

    .line 489
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_3c
    return-object p0

    :cond_79
    const-string v0, "ALG"

    .line 490
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    if-nez p2, :cond_7a

    const-string p1, "U. S. M. Alger"

    .line 491
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_3d

    :cond_7a
    const-string p1, "B. Alger"

    .line 492
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_3d
    return-object p0

    :cond_7b
    const-string v0, "ALB"

    .line 493
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7d

    if-nez p2, :cond_7c

    const-string p1, "P. Tirana"

    .line 494
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_3e

    :cond_7c
    const-string p1, "Kuk\u00ebsi"

    .line 495
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_3e
    return-object p0

    :cond_7d
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getTeamForSuperCup2020(Lpl/mkrstudio/truefootball3/objects/World;Ljava/lang/String;I)Lpl/mkrstudio/truefootball3/objects/Team;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "world",
            "countryCode",
            "i"
        }
    .end annotation

    .line 501
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object p0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object p0

    const-string v0, "VIE"

    .line 502
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    const-string p1, "H\u00e0 N\u1ed9i"

    .line 503
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p1, "Ho Chi Minh City"

    .line 504
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    const-string v0, "UZB"

    .line 505
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_2

    const-string p1, "P. Toshkent"

    .line 506
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_1

    :cond_2
    const-string p1, "A. G. M. K. Almalyk"

    .line 507
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_3
    const-string v0, "UKR"

    .line 508
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p2, :cond_4

    const-string p1, "S. Donetsk"

    .line 509
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_2

    :cond_4
    const-string p1, "D. Kyiv"

    .line 510
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_5
    const-string v0, "UAE"

    .line 511
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez p2, :cond_6

    const-string p1, "Al Ain"

    .line 512
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_3

    :cond_6
    const-string p1, "S. A. Dubai"

    .line 513
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_3
    return-object p0

    :cond_7
    const-string v0, "TUR"

    .line 514
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-nez p2, :cond_8

    const-string p1, "\u0130stanbul B."

    .line 515
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_4

    :cond_8
    const-string p1, "Trabzon"

    .line 516
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_4
    return-object p0

    :cond_9
    const-string v0, "TUN"

    .line 517
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-nez p2, :cond_a

    const-string p1, "E. Tunis"

    .line 518
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_5

    :cond_a
    const-string p1, "Sfax"

    .line 519
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_5
    return-object p0

    :cond_b
    const-string v0, "TRI"

    .line 520
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    if-nez p2, :cond_c

    const-string p1, "D. F. Chaguaramas"

    .line 521
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_6

    :cond_c
    const-string p1, "La Horquetta R."

    .line 522
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_6
    return-object p0

    :cond_d
    const-string v0, "TKM"

    .line 523
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    if-nez p2, :cond_e

    const-string p1, "A. A. A\u015fgabat"

    .line 524
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_7

    :cond_e
    const-string p1, "A. \u00c4new"

    .line 525
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_7
    return-object p0

    :cond_f
    const-string v0, "TJK"

    .line 526
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    if-nez p2, :cond_10

    const-string p1, "I. Dushanbe"

    .line 527
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_8

    :cond_10
    const-string p1, "Khujand"

    .line 528
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_8
    return-object p0

    :cond_11
    const-string v0, "THA"

    .line 529
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    if-nez p2, :cond_12

    const-string p1, "P. U. Thanyaburi"

    .line 530
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_9

    :cond_12
    const-string p1, "Chiang Rai U."

    .line 531
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_9
    return-object p0

    :cond_13
    const-string v0, "SYR"

    .line 532
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    if-nez p2, :cond_14

    const-string p1, "T. Latakia"

    .line 533
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_a

    :cond_14
    const-string p1, "W. Damascus"

    .line 534
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_a
    return-object p0

    :cond_15
    const-string v0, "SIN"

    .line 535
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    if-nez p2, :cond_16

    const-string p1, "H. U. Bishan"

    .line 536
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_b

    :cond_16
    const-string p1, "A. N. Singapore"

    .line 537
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_b
    return-object p0

    :cond_17
    const-string v0, "RUS"

    .line 538
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    if-nez p2, :cond_18

    const-string p1, "Z. Saint Petersburg"

    .line 539
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_c

    :cond_18
    const-string p1, "L. Moscow"

    .line 540
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_c
    return-object p0

    :cond_19
    const-string v0, "ROM"

    .line 541
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    if-nez p2, :cond_1a

    const-string p1, "Cluj"

    .line 542
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_d

    :cond_1a
    const-string p1, "S. Bucure\u0219ti"

    .line 543
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_d
    return-object p0

    :cond_1b
    const-string v0, "QAT"

    .line 544
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    if-nez p2, :cond_1c

    const-string p1, "S. Doha 1969"

    .line 545
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_e

    :cond_1c
    const-string p1, "D. Doha"

    .line 546
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_e
    return-object p0

    :cond_1d
    const-string v0, "POR"

    .line 547
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    if-nez p2, :cond_1e

    const-string p1, "B. Lisboa"

    .line 548
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_f

    :cond_1e
    const-string p1, "Porto"

    .line 549
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_f
    return-object p0

    :cond_1f
    const-string v0, "POL"

    .line 550
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    if-nez p2, :cond_20

    const-string p1, "L. Warszawa"

    .line 551
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_10

    :cond_20
    const-string p1, "C. Krak\u00f3w"

    .line 552
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_10
    return-object p0

    :cond_21
    const-string v0, "NOR"

    .line 553
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    if-nez p2, :cond_22

    const-string p1, "V. Stavanger"

    .line 554
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_11

    :cond_22
    const-string p1, "Molde"

    .line 555
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_11
    return-object p0

    :cond_23
    const-string v0, "NGA"

    .line 556
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    if-nez p2, :cond_24

    const-string p1, "E. Aba"

    .line 557
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_12

    :cond_24
    const-string p1, "Kano P."

    .line 558
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_12
    return-object p0

    :cond_25
    const-string v0, "NED"

    .line 559
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    if-nez p2, :cond_26

    const-string p1, "A. Amsterdam"

    .line 560
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_13

    :cond_26
    const-string p1, "Eindhoven"

    .line 561
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_13
    return-object p0

    :cond_27
    const-string v0, "MYA"

    .line 562
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    if-nez p2, :cond_28

    const-string p1, "Yangon U."

    .line 563
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_14

    :cond_28
    const-string p1, "S. U. Taunggyi"

    .line 564
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_14
    return-object p0

    :cond_29
    const-string v0, "MLT"

    .line 565
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    if-nez p2, :cond_2a

    const-string p1, "H. Paola"

    .line 566
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_15

    :cond_2a
    const-string p1, "Floriana"

    .line 567
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_15
    return-object p0

    :cond_2b
    const-string v0, "MKD"

    .line 568
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    if-nez p2, :cond_2c

    const-string p1, "A. P. Strumica"

    .line 569
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_16

    :cond_2c
    const-string p1, "V. Skopje"

    .line 570
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_16
    return-object p0

    :cond_2d
    const-string v0, "MDA"

    .line 571
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    if-nez p2, :cond_2e

    const-string p1, "P. H. S\u0103rata-Galben\u0103"

    .line 572
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_17

    :cond_2e
    const-string p1, "S. Tiraspol"

    .line 573
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_17
    return-object p0

    :cond_2f
    const-string v0, "LTU"

    .line 574
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    if-nez p2, :cond_30

    const-string p1, "S. Marijampol\u0117"

    .line 575
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_18

    :cond_30
    const-string p1, "\u017d. Vilnius"

    .line 576
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_18
    return-object p0

    :cond_31
    const-string v0, "KUW"

    .line 577
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    if-nez p2, :cond_32

    const-string p1, "A. Kuwait"

    .line 578
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_19

    :cond_32
    const-string p1, "Kuwait S. C."

    .line 579
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_19
    return-object p0

    :cond_33
    const-string v0, "KSA"

    .line 580
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    if-nez p2, :cond_34

    const-string p1, "N. Riyadh"

    .line 581
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_1a

    :cond_34
    const-string p1, "T. Buraydah"

    .line 582
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_1a
    return-object p0

    :cond_35
    const-string v0, "KOS"

    .line 583
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    if-nez p2, :cond_36

    const-string p1, "Pri\u0161tina"

    .line 584
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_1b

    :cond_36
    const-string p1, "D. Gnjilane"

    .line 585
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_1b
    return-object p0

    :cond_37
    const-string v0, "KGZ"

    .line 586
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    if-nez p2, :cond_38

    const-string p1, "D. Bishkek"

    .line 587
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_1c

    :cond_38
    const-string p1, "A. Osh 1960"

    .line 588
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_1c
    return-object p0

    :cond_39
    const-string v0, "KEN"

    .line 589
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    if-nez p2, :cond_3a

    const-string p1, "G. M. Nairobi"

    .line 590
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_1d

    :cond_3a
    const-string p1, "K. S. Nairobi"

    .line 591
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_1d
    return-object p0

    :cond_3b
    const-string v0, "KAZ"

    .line 592
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    if-nez p2, :cond_3c

    const-string p1, "K. Q\u0131z\u0131lorda"

    .line 593
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_1e

    :cond_3c
    const-string p1, "Astana"

    .line 594
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_1e
    return-object p0

    :cond_3d
    const-string v0, "JPN"

    .line 595
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    if-nez p2, :cond_3e

    const-string p1, "Yokohama"

    .line 596
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_1f

    :cond_3e
    const-string p1, "V. Kobe"

    .line 597
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_1f
    return-object p0

    :cond_3f
    const-string v0, "JOR"

    .line 598
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    if-nez p2, :cond_40

    const-string p1, "J. Amman"

    .line 599
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_20

    :cond_40
    const-string p1, "F. Amman"

    .line 600
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_20
    return-object p0

    :cond_41
    const-string v0, "ITA"

    .line 601
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    if-nez p2, :cond_42

    const-string p1, "J. Torino"

    .line 602
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_21

    :cond_42
    const-string p1, "Napoli"

    .line 603
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_21
    return-object p0

    :cond_43
    const-string v0, "ISR"

    .line 604
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    if-nez p2, :cond_44

    const-string p1, "H. Be\'er Sheva"

    .line 605
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_22

    :cond_44
    const-string p1, "M. Tel Aviv"

    .line 606
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_22
    return-object p0

    :cond_45
    const-string v0, "ISL"

    .line 607
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    if-nez p2, :cond_46

    const-string p1, "V. Reykjav\u00edk 1908"

    .line 608
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_23

    :cond_46
    const-string p1, "Reykjav\u00edk"

    .line 609
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_23
    return-object p0

    :cond_47
    const-string v0, "IRQ"

    .line 610
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    if-nez p2, :cond_48

    const-string p1, "S. Baghdad 1932"

    .line 611
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_24

    :cond_48
    const-string p1, "Z. Baghdad"

    .line 612
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_24
    return-object p0

    :cond_49
    const-string v0, "IRN"

    .line 613
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    if-nez p2, :cond_4a

    const-string p1, "T. S. Tabriz"

    .line 614
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_25

    :cond_4a
    const-string p1, "P. Tehran"

    .line 615
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_25
    return-object p0

    :cond_4b
    const-string v0, "IRL"

    .line 616
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    if-nez p2, :cond_4c

    const-string p1, "S. R. Dublin"

    .line 617
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_26

    :cond_4c
    const-string p1, "Dundalk"

    .line 618
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_26
    return-object p0

    :cond_4d
    const-string v0, "HUN"

    .line 619
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    if-nez p2, :cond_4e

    const-string p1, "F. Budapest"

    .line 620
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_27

    :cond_4e
    const-string p1, "Budapest H."

    .line 621
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_27
    return-object p0

    :cond_4f
    const-string v0, "HKG"

    .line 622
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    if-nez p2, :cond_50

    const-string p1, "K. Mong Kok"

    .line 623
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_28

    :cond_50
    const-string p1, "W. Tai Po"

    .line 624
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_28
    return-object p0

    :cond_51
    const-string v0, "GHA"

    .line 625
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    if-nez p2, :cond_52

    const-string p1, "A. K. Kumasi"

    .line 626
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_29

    :cond_52
    const-string p1, "A. S. Wa"

    .line 627
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_29
    return-object p0

    :cond_53
    const-string v0, "GIB"

    .line 628
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    if-nez p2, :cond_54

    const-string p1, "L. R. I. Gibraltar"

    .line 629
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_2a

    :cond_54
    const-string p1, "E. Gibraltar"

    .line 630
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_2a
    return-object p0

    :cond_55
    const-string v0, "GER"

    .line 631
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    if-nez p2, :cond_56

    const-string p1, "Blue-Reds 1900"

    .line 632
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_2b

    :cond_56
    const-string p1, "Black-Yellows 1909"

    .line 633
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_2b
    return-object p0

    :cond_57
    const-string v0, "GEO"

    .line 634
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    if-nez p2, :cond_58

    const-string p1, "D. Tbilisi"

    .line 635
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_2c

    :cond_58
    const-string p1, "S. Tbilisi"

    .line 636
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_2c
    return-object p0

    :cond_59
    const-string v0, "FRO"

    .line 637
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    if-nez p2, :cond_5a

    const-string p1, "H. B. T\u00f3rshavn"

    .line 638
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_2d

    :cond_5a
    const-string p1, "Klaksv\u00edk"

    .line 639
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_2d
    return-object p0

    :cond_5b
    const-string v0, "FRA"

    .line 640
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    if-nez p2, :cond_5c

    const-string p1, "Paris S. G."

    .line 641
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_2e

    :cond_5c
    const-string p1, "O. Marseille"

    .line 642
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_2e
    return-object p0

    :cond_5d
    const-string v0, "EST"

    .line 643
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    if-nez p2, :cond_5e

    const-string p1, "F. Tallinn"

    .line 644
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_2f

    :cond_5e
    const-string p1, "Narva T."

    .line 645
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_2f
    return-object p0

    :cond_5f
    const-string v0, "ENG"

    .line 646
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    if-nez p2, :cond_60

    const-string p1, "A. London"

    .line 647
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_30

    :cond_60
    const-string p1, "Liverpool"

    .line 648
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_30
    return-object p0

    :cond_61
    const-string v0, "EGY"

    .line 649
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    if-nez p2, :cond_62

    const-string p1, "A. Cairo"

    .line 650
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_31

    :cond_62
    const-string p1, "Z. Giza"

    .line 651
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_31
    return-object p0

    :cond_63
    const-string v0, "CYP"

    .line 652
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    if-nez p2, :cond_64

    const-string p1, "Paphos"

    .line 653
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_32

    :cond_64
    const-string p1, "Lefkosia"

    .line 654
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_32
    return-object p0

    :cond_65
    const-string v0, "CRO"

    .line 655
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    if-nez p2, :cond_66

    const-string p1, "D. Zagreb"

    .line 656
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_33

    :cond_66
    const-string p1, "Rijeka"

    .line 657
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_33
    return-object p0

    :cond_67
    const-string v0, "CHN"

    .line 658
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    if-nez p2, :cond_68

    const-string p1, "Guangzhou E."

    .line 659
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_34

    :cond_68
    const-string p1, "Shanghai G. S."

    .line 660
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_34
    return-object p0

    :cond_69
    const-string v0, "CHI"

    .line 661
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    if-nez p2, :cond_6a

    const-string p1, "C. D. U. C. Santiago"

    .line 662
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_35

    :cond_6a
    const-string p1, "C. C. Macul"

    .line 663
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_35
    return-object p0

    :cond_6b
    const-string v0, "BUL"

    .line 664
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    if-nez p2, :cond_6c

    const-string p1, "L. Razgrad"

    .line 665
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_36

    :cond_6c
    const-string p1, "L. Plovdiv"

    .line 666
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_36
    return-object p0

    :cond_6d
    const-string v0, "BLR"

    .line 667
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    if-nez p2, :cond_6e

    const-string p1, "D. Brest"

    .line 668
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_37

    :cond_6e
    const-string p1, "S. Salihorsk"

    .line 669
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_37
    return-object p0

    :cond_6f
    const-string v0, "BEL"

    .line 670
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    if-nez p2, :cond_70

    const-string p1, "R. Genk"

    .line 671
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_38

    :cond_70
    const-string p1, "K. V. Mechelen"

    .line 672
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_38
    return-object p0

    :cond_71
    const-string v0, "ARM"

    .line 673
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    if-nez p2, :cond_72

    const-string p1, "A. A. Yerevan"

    .line 674
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_39

    :cond_72
    const-string p1, "N. Yerevan"

    .line 675
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_39
    return-object p0

    :cond_73
    const-string v0, "ARG"

    .line 676
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    if-nez p2, :cond_74

    const-string p1, "Rosario C."

    .line 677
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_3a

    :cond_74
    const-string p1, "B. J. Buenos Aires"

    .line 678
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_3a
    return-object p0

    :cond_75
    const-string v0, "ANG"

    .line 679
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    if-nez p2, :cond_76

    const-string p1, "P. A. Luanda"

    .line 680
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_3b

    :cond_76
    const-string p1, "A. P. Luanda"

    .line 681
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_3b
    return-object p0

    :cond_77
    const-string v0, "AND"

    .line 682
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    if-nez p2, :cond_78

    const-string p1, "I. C. Escaldes"

    .line 683
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_3c

    :cond_78
    const-string p1, "Santa Coloma"

    .line 684
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_3c
    return-object p0

    :cond_79
    const-string v0, "ALG"

    .line 685
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    if-nez p2, :cond_7a

    const-string p1, "U. S. M. Alger"

    .line 686
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_3d

    :cond_7a
    const-string p1, "B. Alger"

    .line 687
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_3d
    return-object p0

    :cond_7b
    const-string v0, "ALB"

    .line 688
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7d

    if-nez p2, :cond_7c

    const-string p1, "Tirana"

    .line 689
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_3e

    :cond_7c
    const-string p1, "T. Durr\u00ebs"

    .line 690
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_3e
    return-object p0

    :cond_7d
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getTeamForSuperCup2021(Lpl/mkrstudio/truefootball3/objects/World;Ljava/lang/String;I)Lpl/mkrstudio/truefootball3/objects/Team;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "world",
            "countryCode",
            "i"
        }
    .end annotation

    .line 696
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object p0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object p0

    const-string v0, "VIE"

    .line 697
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    const-string p1, "H\u00e0 N\u1ed9i"

    .line 698
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p1, "V. H\u00e0 N\u1ed9i"

    .line 699
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    const-string v0, "UZB"

    .line 700
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_2

    const-string p1, "P. Toshkent"

    .line 701
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_1

    :cond_2
    const-string p1, "N. Qarshi"

    .line 702
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_3
    const-string v0, "UKR"

    .line 703
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p2, :cond_4

    const-string p1, "S. Donetsk"

    .line 704
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_2

    :cond_4
    const-string p1, "D. Kyiv"

    .line 705
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_5
    const-string v0, "UAE"

    .line 706
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez p2, :cond_6

    const-string p1, "J. Abu Dhabi"

    .line 707
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_3

    :cond_6
    const-string p1, "S. A. Dubai"

    .line 708
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_3
    return-object p0

    :cond_7
    const-string v0, "TUR"

    .line 709
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-nez p2, :cond_8

    const-string p1, "B. \u0130stanbul"

    .line 710
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_4

    :cond_8
    const-string p1, "Antalya"

    .line 711
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_4
    return-object p0

    :cond_9
    const-string v0, "TUN"

    .line 712
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-nez p2, :cond_a

    const-string p1, "E. Tunis"

    .line 713
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_5

    :cond_a
    const-string p1, "Sfax"

    .line 714
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_5
    return-object p0

    :cond_b
    const-string v0, "TRI"

    .line 715
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    if-nez p2, :cond_c

    const-string p1, "D. F. Chaguaramas"

    .line 716
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_6

    :cond_c
    const-string p1, "La Horquetta R."

    .line 717
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_6
    return-object p0

    :cond_d
    const-string v0, "TKM"

    .line 718
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    if-nez p2, :cond_e

    const-string p1, "A. A. A\u015fgabat"

    .line 719
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_7

    :cond_e
    const-string p1, "K. A\u015fgabat"

    .line 720
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_7
    return-object p0

    :cond_f
    const-string v0, "TJK"

    .line 721
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    if-nez p2, :cond_10

    const-string p1, "I. Dushanbe"

    .line 722
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_8

    :cond_10
    const-string p1, "R. Kulob"

    .line 723
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_8
    return-object p0

    :cond_11
    const-string v0, "THA"

    .line 724
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    if-nez p2, :cond_12

    const-string p1, "P. U. Thanyaburi"

    .line 725
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_9

    :cond_12
    const-string p1, "Chiang Rai U."

    .line 726
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_9
    return-object p0

    :cond_13
    const-string v0, "SYR"

    .line 727
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    if-nez p2, :cond_14

    const-string p1, "T. Latakia"

    .line 728
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_a

    :cond_14
    const-string p1, "W. Damascus"

    .line 729
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_a
    return-object p0

    :cond_15
    const-string v0, "SIN"

    .line 730
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    if-nez p2, :cond_16

    const-string p1, "H. U. Bishan"

    .line 731
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_b

    :cond_16
    const-string p1, "A. N. Singapore"

    .line 732
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_b
    return-object p0

    :cond_17
    const-string v0, "RUS"

    .line 733
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    if-nez p2, :cond_18

    const-string p1, "Z. Saint Petersburg"

    .line 734
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_c

    :cond_18
    const-string p1, "L. Moscow"

    .line 735
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_c
    return-object p0

    :cond_19
    const-string v0, "ROM"

    .line 736
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    if-nez p2, :cond_1a

    const-string p1, "Cluj"

    .line 737
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_d

    :cond_1a
    const-string p1, "C. S. U. Craiova"

    .line 738
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_d
    return-object p0

    :cond_1b
    const-string v0, "QAT"

    .line 739
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    if-nez p2, :cond_1c

    const-string p1, "S. Doha 1969"

    .line 740
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_e

    :cond_1c
    const-string p1, "D. Doha"

    .line 741
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_e
    return-object p0

    :cond_1d
    const-string v0, "POR"

    .line 742
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    if-nez p2, :cond_1e

    const-string p1, "S. Lisboa"

    .line 743
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_f

    :cond_1e
    const-string p1, "S. Braga"

    .line 744
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_f
    return-object p0

    :cond_1f
    const-string v0, "POL"

    .line 745
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    if-nez p2, :cond_20

    const-string p1, "L. Warszawa"

    .line 746
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_10

    :cond_20
    const-string p1, "R. Cz\u0119stochowa"

    .line 747
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_10
    return-object p0

    :cond_21
    const-string v0, "NOR"

    .line 748
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    if-nez p2, :cond_22

    const-string p1, "V. Stavanger"

    .line 749
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_11

    :cond_22
    const-string p1, "Molde"

    .line 750
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_11
    return-object p0

    :cond_23
    const-string v0, "NGA"

    .line 751
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    if-nez p2, :cond_24

    const-string p1, "E. Aba"

    .line 752
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_12

    :cond_24
    const-string p1, "Kano P."

    .line 753
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_12
    return-object p0

    :cond_25
    const-string v0, "NED"

    .line 754
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    if-nez p2, :cond_26

    const-string p1, "Eindhoven"

    .line 755
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_13

    :cond_26
    const-string p1, "A. Amsterdam"

    .line 756
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_13
    return-object p0

    :cond_27
    const-string v0, "MYA"

    .line 757
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    if-nez p2, :cond_28

    const-string p1, "Yangon U."

    .line 758
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_14

    :cond_28
    const-string p1, "S. U. Taunggyi"

    .line 759
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_14
    return-object p0

    :cond_29
    const-string v0, "MLT"

    .line 760
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    if-nez p2, :cond_2a

    const-string p1, "H. Paola"

    .line 761
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_15

    :cond_2a
    const-string p1, "Floriana"

    .line 762
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_15
    return-object p0

    :cond_2b
    const-string v0, "MKD"

    .line 763
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    if-nez p2, :cond_2c

    const-string p1, "S. Tetovo"

    .line 764
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_16

    :cond_2c
    const-string p1, "S. Kratovo"

    .line 765
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_16
    return-object p0

    :cond_2d
    const-string v0, "MDA"

    .line 766
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    if-nez p2, :cond_2e

    const-string p1, "S. G. Suruceni"

    .line 767
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_17

    :cond_2e
    const-string p1, "S. Tiraspol"

    .line 768
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_17
    return-object p0

    :cond_2f
    const-string v0, "LTU"

    .line 769
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    if-nez p2, :cond_30

    const-string p1, "Panev\u0117\u017eys"

    .line 770
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_18

    :cond_30
    const-string p1, "\u017d. Vilnius"

    .line 771
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_18
    return-object p0

    :cond_31
    const-string v0, "KUW"

    .line 772
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    if-nez p2, :cond_32

    const-string p1, "A. Kuwait"

    .line 773
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_19

    :cond_32
    const-string p1, "Kuwait S. C."

    .line 774
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_19
    return-object p0

    :cond_33
    const-string v0, "KSA"

    .line 775
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    if-nez p2, :cond_34

    const-string p1, "H. Riyadh"

    .line 776
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_1a

    :cond_34
    const-string p1, "N. Riyadh"

    .line 777
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_1a
    return-object p0

    :cond_35
    const-string v0, "KOS"

    .line 778
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    if-nez p2, :cond_36

    const-string p1, "Pri\u0161tina"

    .line 779
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_1b

    :cond_36
    const-string p1, "L. Podujevo"

    .line 780
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_1b
    return-object p0

    :cond_37
    const-string v0, "KGZ"

    .line 781
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    if-nez p2, :cond_38

    const-string p1, "D. Bishkek"

    .line 782
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_1c

    :cond_38
    const-string p1, "N. Kochkor-Ata"

    .line 783
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_1c
    return-object p0

    :cond_39
    const-string v0, "KEN"

    .line 784
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    if-nez p2, :cond_3a

    const-string p1, "G. M. Nairobi"

    .line 785
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_1d

    :cond_3a
    const-string p1, "B. Mombasa"

    .line 786
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_1d
    return-object p0

    :cond_3b
    const-string v0, "KAZ"

    .line 787
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    if-nez p2, :cond_3c

    const-string p1, "T. Qostanay"

    .line 788
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_1e

    :cond_3c
    const-string p1, "Astana"

    .line 789
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_1e
    return-object p0

    :cond_3d
    const-string v0, "JPN"

    .line 790
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    if-nez p2, :cond_3e

    const-string p1, "Kawasaki F."

    .line 791
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_1f

    :cond_3e
    const-string p1, "G. Osaka"

    .line 792
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_1f
    return-object p0

    :cond_3f
    const-string v0, "JOR"

    .line 793
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    if-nez p2, :cond_40

    const-string p1, "J. Amman"

    .line 794
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_20

    :cond_40
    const-string p1, "W. Amman"

    .line 795
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_20
    return-object p0

    :cond_41
    const-string v0, "ITA"

    .line 796
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    if-nez p2, :cond_42

    const-string p1, "I. Milano"

    .line 797
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_21

    :cond_42
    const-string p1, "J. Torino"

    .line 798
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_21
    return-object p0

    :cond_43
    const-string v0, "ISR"

    .line 799
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    if-nez p2, :cond_44

    const-string p1, "M. Haifa"

    .line 800
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_22

    :cond_44
    const-string p1, "M. Tel Aviv"

    .line 801
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_22
    return-object p0

    :cond_45
    const-string v0, "ISL"

    .line 802
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    if-nez p2, :cond_46

    const-string p1, "V. Reykjav\u00edk 1911"

    .line 803
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_23

    :cond_46
    const-string p1, "Hafnarfj\u00f6r\u00f0ur"

    .line 804
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_23
    return-object p0

    :cond_47
    const-string v0, "IRQ"

    .line 805
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    if-nez p2, :cond_48

    const-string p1, "Q. J. Baghdad"

    .line 806
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_24

    :cond_48
    const-string p1, "Z. Baghdad"

    .line 807
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_24
    return-object p0

    :cond_49
    const-string v0, "IRN"

    .line 808
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    if-nez p2, :cond_4a

    const-string p1, "F. Ahvaz"

    .line 809
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_25

    :cond_4a
    const-string p1, "P. Tehran"

    .line 810
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_25
    return-object p0

    :cond_4b
    const-string v0, "IRL"

    .line 811
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    if-nez p2, :cond_4c

    const-string p1, "S. R. Dublin"

    .line 812
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_26

    :cond_4c
    const-string p1, "Dundalk"

    .line 813
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_26
    return-object p0

    :cond_4d
    const-string v0, "HUN"

    .line 814
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    if-nez p2, :cond_4e

    const-string p1, "F. Budapest"

    .line 815
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_27

    :cond_4e
    const-string p1, "\u00da. Budapest"

    .line 816
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_27
    return-object p0

    :cond_4f
    const-string v0, "HKG"

    .line 817
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    if-nez p2, :cond_50

    const-string p1, "K. Mong Kok"

    .line 818
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_28

    :cond_50
    const-string p1, "W. Tai Po"

    .line 819
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_28
    return-object p0

    :cond_51
    const-string v0, "GHA"

    .line 820
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    if-nez p2, :cond_52

    const-string p1, "A. K. Kumasi"

    .line 821
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_29

    :cond_52
    const-string p1, "A. S. Wa"

    .line 822
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_29
    return-object p0

    :cond_53
    const-string v0, "GIB"

    .line 823
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    if-nez p2, :cond_54

    const-string p1, "L. R. I. Gibraltar"

    .line 824
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_2a

    :cond_54
    const-string p1, "E. Gibraltar"

    .line 825
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_2a
    return-object p0

    :cond_55
    const-string v0, "GER"

    .line 826
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    if-nez p2, :cond_56

    const-string p1, "Blue-Reds 1900"

    .line 827
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_2b

    :cond_56
    const-string p1, "Black-Yellows 1909"

    .line 828
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_2b
    return-object p0

    :cond_57
    const-string v0, "GEO"

    .line 829
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    if-nez p2, :cond_58

    const-string p1, "D. Tbilisi"

    .line 830
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_2c

    :cond_58
    const-string p1, "Gagra"

    .line 831
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_2c
    return-object p0

    :cond_59
    const-string v0, "FRO"

    .line 832
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    if-nez p2, :cond_5a

    const-string p1, "H. B. T\u00f3rshavn"

    .line 833
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_2d

    :cond_5a
    const-string p1, "Runav\u00edk"

    .line 834
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_2d
    return-object p0

    :cond_5b
    const-string v0, "FRA"

    .line 835
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    if-nez p2, :cond_5c

    const-string p1, "Lille"

    .line 836
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_2e

    :cond_5c
    const-string p1, "Paris S. G."

    .line 837
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_2e
    return-object p0

    :cond_5d
    const-string v0, "EST"

    .line 838
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    if-nez p2, :cond_5e

    const-string p1, "F. Tallinn"

    .line 839
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_2f

    :cond_5e
    const-string p1, "Paide L."

    .line 840
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_2f
    return-object p0

    :cond_5f
    const-string v0, "ENG"

    .line 841
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    if-nez p2, :cond_60

    const-string p1, "Leicester C."

    .line 842
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_30

    :cond_60
    const-string p1, "Manchester C."

    .line 843
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_30
    return-object p0

    :cond_61
    const-string v0, "EGY"

    .line 844
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    if-nez p2, :cond_62

    const-string p1, "A. Cairo"

    .line 845
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_31

    :cond_62
    const-string p1, "T. G. Cairo"

    .line 846
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_31
    return-object p0

    :cond_63
    const-string v0, "CYP"

    .line 847
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    if-nez p2, :cond_64

    const-string p1, "O. Lefkosia"

    .line 848
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_32

    :cond_64
    const-string p1, "A. Ammochostou"

    .line 849
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_32
    return-object p0

    :cond_65
    const-string v0, "CRO"

    .line 850
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    if-nez p2, :cond_66

    const-string p1, "D. Zagreb"

    .line 851
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_33

    :cond_66
    const-string p1, "I. Pula"

    .line 852
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_33
    return-object p0

    :cond_67
    const-string v0, "CHN"

    .line 853
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    if-nez p2, :cond_68

    const-string p1, "Guangzhou"

    .line 854
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_34

    :cond_68
    const-string p1, "Shanghai G. S."

    .line 855
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_34
    return-object p0

    :cond_69
    const-string v0, "CHI"

    .line 856
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    if-nez p2, :cond_6a

    const-string p1, "C. D. U. C. Santiago"

    .line 857
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_35

    :cond_6a
    const-string p1, "\u00d1. Chill\u00e1n"

    .line 858
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_35
    return-object p0

    :cond_6b
    const-string v0, "BUL"

    .line 859
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    if-nez p2, :cond_6c

    const-string p1, "L. Razgrad"

    .line 860
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_36

    :cond_6c
    const-string p1, "Sofia"

    .line 861
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_36
    return-object p0

    :cond_6d
    const-string v0, "BLR"

    .line 862
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    if-nez p2, :cond_6e

    const-string p1, "S. Salihorsk"

    .line 863
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_37

    :cond_6e
    const-string p1, "Borisov"

    .line 864
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_37
    return-object p0

    :cond_6f
    const-string v0, "BEL"

    .line 865
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    if-nez p2, :cond_70

    const-string p1, "Brugge"

    .line 866
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_38

    :cond_70
    const-string p1, "R. Genk"

    .line 867
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_38
    return-object p0

    :cond_71
    const-string v0, "ARM"

    .line 868
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    if-nez p2, :cond_72

    const-string p1, "A. Yerevan 1935"

    .line 869
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_39

    :cond_72
    const-string p1, "A. Martuni"

    .line 870
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_39
    return-object p0

    :cond_73
    const-string v0, "ARG"

    .line 871
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    if-nez p2, :cond_74

    const-string p1, "R. P. Buenos Aires"

    .line 872
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_3a

    :cond_74
    const-string p1, "R. Avellaneda"

    .line 873
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_3a
    return-object p0

    :cond_75
    const-string v0, "ANG"

    .line 874
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    if-nez p2, :cond_76

    const-string p1, "S. E. Dundo"

    .line 875
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_3b

    :cond_76
    const-string p1, "A. P. Luanda"

    .line 876
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_3b
    return-object p0

    :cond_77
    const-string v0, "AND"

    .line 877
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    if-nez p2, :cond_78

    const-string p1, "I. C. Escaldes"

    .line 878
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_3c

    :cond_78
    const-string p1, "Sant Juli\u00e0"

    .line 879
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_3c
    return-object p0

    :cond_79
    const-string v0, "ALG"

    .line 880
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    if-nez p2, :cond_7a

    const-string p1, "K. Tizi Ouzou"

    .line 881
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_3d

    :cond_7a
    const-string p1, "B. Alger"

    .line 882
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_3d
    return-object p0

    :cond_7b
    const-string v0, "ALB"

    .line 883
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7d

    if-nez p2, :cond_7c

    const-string p1, "V. Shkod\u00ebr"

    .line 884
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_3e

    :cond_7c
    const-string p1, "T. Durr\u00ebs"

    .line 885
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_3e
    return-object p0

    :cond_7d
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getTeamForSuperCup2022(Lpl/mkrstudio/truefootball3/objects/World;Ljava/lang/String;I)Lpl/mkrstudio/truefootball3/objects/Team;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "world",
            "countryCode",
            "i"
        }
    .end annotation

    .line 891
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object p0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object p0

    const-string v0, "VIE"

    .line 892
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    const-string p1, "H\u00e0 N\u1ed9i"

    .line 893
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p1, "V. H\u00e0 N\u1ed9i"

    .line 894
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    const-string v0, "UZB"

    .line 895
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_2

    const-string p1, "P. Toshkent"

    .line 896
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_1

    :cond_2
    const-string p1, "N. Qarshi"

    .line 897
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_3
    const-string v0, "UKR"

    .line 898
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p2, :cond_4

    const-string p1, "S. Donetsk"

    .line 899
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_2

    :cond_4
    const-string p1, "D. Kyiv"

    .line 900
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_5
    const-string v0, "UAE"

    .line 901
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez p2, :cond_6

    const-string p1, "Al Ain"

    .line 902
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_3

    :cond_6
    const-string p1, "Al Sharjah"

    .line 903
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_3
    return-object p0

    :cond_7
    const-string v0, "TUR"

    .line 904
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-nez p2, :cond_8

    const-string p1, "Trabzon"

    .line 905
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_4

    :cond_8
    const-string p1, "Sivas"

    .line 906
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_4
    return-object p0

    :cond_9
    const-string v0, "TUN"

    .line 907
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-nez p2, :cond_a

    const-string p1, "E. Tunis"

    .line 908
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_5

    :cond_a
    const-string p1, "Sfax"

    .line 909
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_5
    return-object p0

    :cond_b
    const-string v0, "TRI"

    .line 910
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    if-nez p2, :cond_c

    const-string p1, "D. F. Chaguaramas"

    .line 911
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_6

    :cond_c
    const-string p1, "La Horquetta R."

    .line 912
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_6
    return-object p0

    :cond_d
    const-string v0, "TKM"

    .line 913
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    if-nez p2, :cond_e

    const-string p1, "A. A. A\u015fgabat"

    .line 914
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_7

    :cond_e
    const-string p1, "K. A\u015fgabat"

    .line 915
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_7
    return-object p0

    :cond_f
    const-string v0, "TJK"

    .line 916
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    if-nez p2, :cond_10

    const-string p1, "I. Dushanbe"

    .line 917
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_8

    :cond_10
    const-string p1, "Khujand"

    .line 918
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_8
    return-object p0

    :cond_11
    const-string v0, "THA"

    .line 919
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    if-nez p2, :cond_12

    const-string p1, "Buriram U."

    .line 920
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_9

    :cond_12
    const-string p1, "P. U. Thanyaburi"

    .line 921
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_9
    return-object p0

    :cond_13
    const-string v0, "SYR"

    .line 922
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    if-nez p2, :cond_14

    const-string p1, "T. Latakia"

    .line 923
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_a

    :cond_14
    const-string p1, "W. Damascus"

    .line 924
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_a
    return-object p0

    :cond_15
    const-string v0, "SIN"

    .line 925
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    if-nez p2, :cond_16

    const-string p1, "L. C. S. Kallang"

    .line 926
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_b

    :cond_16
    const-string p1, "A. N. Singapore"

    .line 927
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_b
    return-object p0

    :cond_17
    const-string v0, "RUS"

    .line 928
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    if-nez p2, :cond_18

    const-string p1, "Z. Saint Petersburg"

    .line 929
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_c

    :cond_18
    const-string p1, "S. Moscow"

    .line 930
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_c
    return-object p0

    :cond_19
    const-string v0, "ROM"

    .line 931
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    if-nez p2, :cond_1a

    const-string p1, "Cluj"

    .line 932
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_d

    :cond_1a
    const-string p1, "S. Sf\u00e2ntu Gheorghe"

    .line 933
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_d
    return-object p0

    :cond_1b
    const-string v0, "QAT"

    .line 934
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    if-nez p2, :cond_1c

    const-string p1, "S. Doha 1969"

    .line 935
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_e

    :cond_1c
    const-string p1, "D. Doha"

    .line 936
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_e
    return-object p0

    :cond_1d
    const-string v0, "POR"

    .line 937
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    if-nez p2, :cond_1e

    const-string p1, "Porto"

    .line 938
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_f

    :cond_1e
    const-string p1, "Tondela"

    .line 939
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_f
    return-object p0

    :cond_1f
    const-string v0, "POL"

    .line 940
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    if-nez p2, :cond_20

    const-string p1, "L. Pozna\u0144"

    .line 941
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_10

    :cond_20
    const-string p1, "R. Cz\u0119stochowa"

    .line 942
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_10
    return-object p0

    :cond_21
    const-string v0, "NOR"

    .line 943
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    if-nez p2, :cond_22

    const-string p1, "V. Stavanger"

    .line 944
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_11

    :cond_22
    const-string p1, "Molde"

    .line 945
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_11
    return-object p0

    :cond_23
    const-string v0, "NGA"

    .line 946
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    if-nez p2, :cond_24

    const-string p1, "E. Aba"

    .line 947
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_12

    :cond_24
    const-string p1, "Kano P."

    .line 948
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_12
    return-object p0

    :cond_25
    const-string v0, "NED"

    .line 949
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    if-nez p2, :cond_26

    const-string p1, "T. Enschede"

    .line 950
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_13

    :cond_26
    const-string p1, "A. Amsterdam"

    .line 951
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_13
    return-object p0

    :cond_27
    const-string v0, "MYA"

    .line 952
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    if-nez p2, :cond_28

    const-string p1, "Yangon U."

    .line 953
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_14

    :cond_28
    const-string p1, "S. U. Taunggyi"

    .line 954
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_14
    return-object p0

    :cond_29
    const-string v0, "MLT"

    .line 955
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    if-nez p2, :cond_2a

    const-string p1, "H. Paola"

    .line 956
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_15

    :cond_2a
    const-string p1, "Floriana"

    .line 957
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_15
    return-object p0

    :cond_2b
    const-string v0, "MKD"

    .line 958
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    if-nez p2, :cond_2c

    const-string p1, "M. Gjor\u010de Petrov"

    .line 959
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_16

    :cond_2c
    const-string p1, "S. Skopje"

    .line 960
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_16
    return-object p0

    :cond_2d
    const-string v0, "MDA"

    .line 961
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    if-nez p2, :cond_2e

    const-string p1, "S. Tiraspol"

    .line 962
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_17

    :cond_2e
    const-string p1, "S. G. Suruceni"

    .line 963
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_17
    return-object p0

    :cond_2f
    const-string v0, "LTU"

    .line 964
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    if-nez p2, :cond_30

    const-string p1, "S. Marijampol\u0117"

    .line 965
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_18

    :cond_30
    const-string p1, "\u017d. Vilnius"

    .line 966
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_18
    return-object p0

    :cond_31
    const-string v0, "KUW"

    .line 967
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    if-nez p2, :cond_32

    const-string p1, "Kuwait S. C."

    .line 968
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_19

    :cond_32
    const-string p1, "K. Adiliya"

    .line 969
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_19
    return-object p0

    :cond_33
    const-string v0, "KSA"

    .line 970
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    if-nez p2, :cond_34

    const-string p1, "H. Riyadh"

    .line 971
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_1a

    :cond_34
    const-string p1, "F. Harmah"

    .line 972
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_1a
    return-object p0

    :cond_35
    const-string v0, "KOS"

    .line 973
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    if-nez p2, :cond_36

    const-string p1, "B. Suva Reka"

    .line 974
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_1b

    :cond_36
    const-string p1, "L. Podujevo"

    .line 975
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_1b
    return-object p0

    :cond_37
    const-string v0, "KGZ"

    .line 976
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    if-nez p2, :cond_38

    const-string p1, "D. Bishkek"

    .line 977
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_1c

    :cond_38
    const-string p1, "A. Osh 1960"

    .line 978
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_1c
    return-object p0

    :cond_39
    const-string v0, "KEN"

    .line 979
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    if-nez p2, :cond_3a

    const-string p1, "T. Nairobi 1969"

    .line 980
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_1d

    :cond_3a
    const-string p1, "G. M. Nairobi"

    .line 981
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_1d
    return-object p0

    :cond_3b
    const-string v0, "KAZ"

    .line 982
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    if-nez p2, :cond_3c

    const-string p1, "T. Qostanay"

    .line 983
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_1e

    :cond_3c
    const-string p1, "K. Almaty"

    .line 984
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_1e
    return-object p0

    :cond_3d
    const-string v0, "JPN"

    .line 985
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    if-nez p2, :cond_3e

    const-string p1, "Kawasaki F."

    .line 986
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_1f

    :cond_3e
    const-string p1, "Saitama R. D."

    .line 987
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_1f
    return-object p0

    :cond_3f
    const-string v0, "JOR"

    .line 988
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    if-nez p2, :cond_40

    const-string p1, "Ramtha"

    .line 989
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_20

    :cond_40
    const-string p1, "F. Amman"

    .line 990
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_20
    return-object p0

    :cond_41
    const-string v0, "ITA"

    .line 991
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    if-nez p2, :cond_42

    const-string p1, "Milano"

    .line 992
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_21

    :cond_42
    const-string p1, "I. Milano"

    .line 993
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_21
    return-object p0

    :cond_43
    const-string v0, "ISR"

    .line 994
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    if-nez p2, :cond_44

    const-string p1, "M. Haifa"

    .line 995
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_22

    :cond_44
    const-string p1, "H. Be\'er Sheva"

    .line 996
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_22
    return-object p0

    :cond_45
    const-string v0, "ISL"

    .line 997
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    if-nez p2, :cond_46

    const-string p1, "V. Reykjav\u00edk 1908"

    .line 998
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_23

    :cond_46
    const-string p1, "B. K\u00f3pavogur"

    .line 999
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_23
    return-object p0

    :cond_47
    const-string v0, "IRQ"

    .line 1000
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    if-nez p2, :cond_48

    const-string p1, "S. Baghdad 1932"

    .line 1001
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_24

    :cond_48
    const-string p1, "K. Baghdad 1963"

    .line 1002
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_24
    return-object p0

    :cond_49
    const-string v0, "IRN"

    .line 1003
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    if-nez p2, :cond_4a

    const-string p1, "E. Tehran"

    .line 1004
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_25

    :cond_4a
    const-string p1, "N. Mazandaran"

    .line 1005
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_25
    return-object p0

    :cond_4b
    const-string v0, "IRL"

    .line 1006
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    if-nez p2, :cond_4c

    const-string p1, "S. R. Dublin"

    .line 1007
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_26

    :cond_4c
    const-string p1, "St. P. Dublin"

    .line 1008
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_26
    return-object p0

    :cond_4d
    const-string v0, "HUN"

    .line 1009
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    if-nez p2, :cond_4e

    const-string p1, "F. Budapest"

    .line 1010
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_27

    :cond_4e
    const-string p1, "Paks"

    .line 1011
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_27
    return-object p0

    :cond_4f
    const-string v0, "HKG"

    .line 1012
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    if-nez p2, :cond_50

    const-string p1, "K. Mong Kok"

    .line 1013
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_28

    :cond_50
    const-string p1, "W. Tai Po"

    .line 1014
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_28
    return-object p0

    :cond_51
    const-string v0, "GHA"

    .line 1015
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    if-nez p2, :cond_52

    const-string p1, "A. K. Kumasi"

    .line 1016
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_29

    :cond_52
    const-string p1, "H. O. Accra"

    .line 1017
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_29
    return-object p0

    :cond_53
    const-string v0, "GIB"

    .line 1018
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    if-nez p2, :cond_54

    const-string p1, "L. R. I. Gibraltar"

    .line 1019
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_2a

    :cond_54
    const-string p1, "E. Gibraltar"

    .line 1020
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_2a
    return-object p0

    :cond_55
    const-string v0, "GER"

    .line 1021
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    if-nez p2, :cond_56

    const-string p1, "Blue-Reds 1900"

    .line 1022
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_2b

    :cond_56
    const-string p1, "Red-Whites 2009"

    .line 1023
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_2b
    return-object p0

    :cond_57
    const-string v0, "GEO"

    .line 1024
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    if-nez p2, :cond_58

    const-string p1, "D. Batumi"

    .line 1025
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_2c

    :cond_58
    const-string p1, "S. Tbilisi"

    .line 1026
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_2c
    return-object p0

    :cond_59
    const-string v0, "FRO"

    .line 1027
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    if-nez p2, :cond_5a

    const-string p1, "Klaksv\u00edk"

    .line 1028
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_2d

    :cond_5a
    const-string p1, "T\u00f3rshavn 36"

    .line 1029
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_2d
    return-object p0

    :cond_5b
    const-string v0, "FRA"

    .line 1030
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    if-nez p2, :cond_5c

    const-string p1, "Paris S. G."

    .line 1031
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_2e

    :cond_5c
    const-string p1, "Nantes"

    .line 1032
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_2e
    return-object p0

    :cond_5d
    const-string v0, "EST"

    .line 1033
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    if-nez p2, :cond_5e

    const-string p1, "L. Tallinn"

    .line 1034
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_2f

    :cond_5e
    const-string p1, "F. Tallinn"

    .line 1035
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_2f
    return-object p0

    :cond_5f
    const-string v0, "ENG"

    .line 1036
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    if-nez p2, :cond_60

    const-string p1, "Liverpool"

    .line 1037
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_30

    :cond_60
    const-string p1, "Manchester C."

    .line 1038
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_30
    return-object p0

    :cond_61
    const-string v0, "EGY"

    .line 1039
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    if-nez p2, :cond_62

    const-string p1, "A. Cairo"

    .line 1040
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_31

    :cond_62
    const-string p1, "Z. Giza"

    .line 1041
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_31
    return-object p0

    :cond_63
    const-string v0, "CYP"

    .line 1042
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    if-nez p2, :cond_64

    const-string p1, "A. Lemesou"

    .line 1043
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_32

    :cond_64
    const-string p1, "O. Lefkosia"

    .line 1044
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_32
    return-object p0

    :cond_65
    const-string v0, "CRO"

    .line 1045
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    if-nez p2, :cond_66

    const-string p1, "D. Zagreb"

    .line 1046
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_33

    :cond_66
    const-string p1, "H. Split"

    .line 1047
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_33
    return-object p0

    :cond_67
    const-string v0, "CHN"

    .line 1048
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    if-nez p2, :cond_68

    const-string p1, "Guangzhou"

    .line 1049
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_34

    :cond_68
    const-string p1, "Shanghai S."

    .line 1050
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_34
    return-object p0

    :cond_69
    const-string v0, "CHI"

    .line 1051
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    if-nez p2, :cond_6a

    const-string p1, "C. D. U. C. Santiago"

    .line 1052
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_35

    :cond_6a
    const-string p1, "C. C. Macul"

    .line 1053
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_35
    return-object p0

    :cond_6b
    const-string v0, "BUL"

    .line 1054
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    if-nez p2, :cond_6c

    const-string p1, "L. Razgrad"

    .line 1055
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_36

    :cond_6c
    const-string p1, "L. Sofia 1914"

    .line 1056
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_36
    return-object p0

    :cond_6d
    const-string v0, "BLR"

    .line 1057
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    if-nez p2, :cond_6e

    const-string p1, "S. Salihorsk"

    .line 1058
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_37

    :cond_6e
    const-string p1, "Borisov"

    .line 1059
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_37
    return-object p0

    :cond_6f
    const-string v0, "BEL"

    .line 1060
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    if-nez p2, :cond_70

    const-string p1, "Brugge"

    .line 1061
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_38

    :cond_70
    const-string p1, "Gent"

    .line 1062
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_38
    return-object p0

    :cond_71
    const-string v0, "ARM"

    .line 1063
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    if-nez p2, :cond_72

    const-string p1, "U. Yerevan 1992"

    .line 1064
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_39

    :cond_72
    const-string p1, "P. Yerevan"

    .line 1065
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_39
    return-object p0

    :cond_73
    const-string v0, "ARG"

    .line 1066
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    if-nez p2, :cond_74

    const-string p1, "P. Paran\u00e1"

    .line 1067
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_3a

    :cond_74
    const-string p1, "B. J. Buenos Aires"

    .line 1068
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_3a
    return-object p0

    :cond_75
    const-string v0, "ANG"

    .line 1069
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    if-nez p2, :cond_76

    const-string p1, "S. E. Dundo"

    .line 1070
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_3b

    :cond_76
    const-string p1, "A. P. Luanda"

    .line 1071
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_3b
    return-object p0

    :cond_77
    const-string v0, "AND"

    .line 1072
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    if-nez p2, :cond_78

    const-string p1, "I. C. Escaldes"

    .line 1073
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_3c

    :cond_78
    const-string p1, "A. Escaldes"

    .line 1074
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_3c
    return-object p0

    :cond_79
    const-string v0, "ALG"

    .line 1075
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    if-nez p2, :cond_7a

    const-string p1, "K. Tizi Ouzou"

    .line 1076
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_3d

    :cond_7a
    const-string p1, "B. Alger"

    .line 1077
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_3d
    return-object p0

    :cond_7b
    const-string v0, "ALB"

    .line 1078
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    if-nez p2, :cond_7c

    const-string p1, "V. Shkod\u00ebr"

    .line 1079
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_3e

    :cond_7c
    const-string p1, "Tirana"

    .line 1080
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_3e
    return-object p0

    :cond_7d
    const-string v0, "MGL"

    .line 1083
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    if-nez p2, :cond_7e

    const-string p1, "K. K. E. Ulaanbaatar"

    .line 1084
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_3f

    :cond_7e
    const-string p1, "Ulaanbaatar"

    .line 1085
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_3f
    return-object p0

    :cond_7f
    const-string v0, "BRA"

    .line 1087
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_81

    if-nez p2, :cond_80

    const-string p1, "A. M. Belo Horizonte"

    .line 1088
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_40

    :cond_80
    const-string p1, "C. R. F. Rio de Janeiro"

    .line 1089
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_40
    return-object p0

    :cond_81
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getTeamForSuperCup2023(Lpl/mkrstudio/truefootball3/objects/World;Ljava/lang/String;I)Lpl/mkrstudio/truefootball3/objects/Team;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "world",
            "countryCode",
            "i"
        }
    .end annotation

    .line 1095
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object p0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object p0

    const-string v0, "VIE"

    .line 1096
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    const-string p1, "H\u00e0 N\u1ed9i"

    .line 1097
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p1, "H\u1ea3i Ph\u00f2ng"

    .line 1098
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    const-string v0, "UZB"

    .line 1099
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_2

    const-string p1, "N. Qarshi"

    .line 1100
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_1

    :cond_2
    const-string p1, "P. Toshkent"

    .line 1101
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_3
    const-string v0, "UKR"

    .line 1102
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p2, :cond_4

    const-string p1, "S. Donetsk"

    .line 1103
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_2

    :cond_4
    const-string p1, "D. Kyiv"

    .line 1104
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_5
    const-string v0, "UAE"

    .line 1105
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez p2, :cond_6

    const-string p1, "S. A. Dubai"

    .line 1106
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_3

    :cond_6
    const-string p1, "Al Sharjah"

    .line 1107
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_3
    return-object p0

    :cond_7
    const-string v0, "TUR"

    .line 1108
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-nez p2, :cond_8

    const-string p1, "G. \u0130stanbul"

    .line 1109
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_4

    :cond_8
    const-string p1, "F. \u0130stanbul"

    .line 1110
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_4
    return-object p0

    :cond_9
    const-string v0, "TUN"

    .line 1111
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-nez p2, :cond_a

    const-string p1, "\u00c9. S. Sousse"

    .line 1112
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_5

    :cond_a
    const-string p1, "O. B\u00e9ja"

    .line 1113
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_5
    return-object p0

    :cond_b
    const-string v0, "TRI"

    .line 1114
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    if-nez p2, :cond_c

    const-string p1, "D. F. Chaguaramas"

    .line 1115
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_6

    :cond_c
    const-string p1, "La Horquetta R."

    .line 1116
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_6
    return-object p0

    :cond_d
    const-string v0, "TKM"

    .line 1117
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    if-nez p2, :cond_e

    const-string p1, "A. A. A\u015fgabat"

    .line 1118
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_7

    :cond_e
    const-string p1, "\u015e. T\u00fcrkmenba\u015fy"

    .line 1119
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_7
    return-object p0

    :cond_f
    const-string v0, "TJK"

    .line 1120
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    if-nez p2, :cond_10

    const-string p1, "I. Dushanbe"

    .line 1121
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_8

    :cond_10
    const-string p1, "R. Kulob"

    .line 1122
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_8
    return-object p0

    :cond_11
    const-string v0, "THA"

    .line 1123
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    if-nez p2, :cond_12

    const-string p1, "Buriram U."

    .line 1124
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_9

    :cond_12
    const-string p1, "Bangkok U."

    .line 1125
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_9
    return-object p0

    :cond_13
    const-string v0, "SYR"

    .line 1126
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    if-nez p2, :cond_14

    const-string p1, "T. Latakia"

    .line 1127
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_a

    :cond_14
    const-string p1, "W. Damascus"

    .line 1128
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_a
    return-object p0

    :cond_15
    const-string v0, "SIN"

    .line 1129
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    if-nez p2, :cond_16

    const-string p1, "Tampines R."

    .line 1130
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_b

    :cond_16
    const-string p1, "Hougang U."

    .line 1131
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_b
    return-object p0

    :cond_17
    const-string v0, "RUS"

    .line 1132
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    if-nez p2, :cond_18

    const-string p1, "Z. Saint Petersburg"

    .line 1133
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_c

    :cond_18
    const-string p1, "Moscow"

    .line 1134
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_c
    return-object p0

    :cond_19
    const-string v0, "ROM"

    .line 1135
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    if-nez p2, :cond_1a

    const-string p1, "F. Constan\u021ba"

    .line 1136
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_d

    :cond_1a
    const-string p1, "S. Sf\u00e2ntu Gheorghe"

    .line 1137
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_d
    return-object p0

    :cond_1b
    const-string v0, "QAT"

    .line 1138
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    if-nez p2, :cond_1c

    const-string p1, "S. Doha 1969"

    .line 1139
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_e

    :cond_1c
    const-string p1, "D. Doha"

    .line 1140
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_e
    return-object p0

    :cond_1d
    const-string v0, "POR"

    .line 1141
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    if-nez p2, :cond_1e

    const-string p1, "B. Lisboa"

    .line 1142
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_f

    :cond_1e
    const-string p1, "Porto"

    .line 1143
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_f
    return-object p0

    :cond_1f
    const-string v0, "POL"

    .line 1144
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    if-nez p2, :cond_20

    const-string p1, "R. Cz\u0119stochowa"

    .line 1145
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_10

    :cond_20
    const-string p1, "L. Warszawa"

    .line 1146
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_10
    return-object p0

    :cond_21
    const-string v0, "NOR"

    .line 1147
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    if-nez p2, :cond_22

    const-string p1, "Molde"

    .line 1148
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_11

    :cond_22
    const-string p1, "B. Bergen"

    .line 1149
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_11
    return-object p0

    :cond_23
    const-string v0, "NGA"

    .line 1150
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    if-nez p2, :cond_24

    const-string p1, "E. Aba"

    .line 1151
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_12

    :cond_24
    const-string p1, "Kano P."

    .line 1152
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_12
    return-object p0

    :cond_25
    const-string v0, "NED"

    .line 1153
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    if-nez p2, :cond_26

    const-string p1, "Eindhoven"

    .line 1154
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_13

    :cond_26
    const-string p1, "F. Rotterdam"

    .line 1155
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_13
    return-object p0

    :cond_27
    const-string v0, "MYA"

    .line 1156
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    if-nez p2, :cond_28

    const-string p1, "Yangon U."

    .line 1157
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_14

    :cond_28
    const-string p1, "S. U. Taunggyi"

    .line 1158
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_14
    return-object p0

    :cond_29
    const-string v0, "MLT"

    .line 1159
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    if-nez p2, :cond_2a

    const-string p1, "\u0126amrun S."

    .line 1160
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_15

    :cond_2a
    const-string p1, "Birkirkara"

    .line 1161
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_15
    return-object p0

    :cond_2b
    const-string v0, "MKD"

    .line 1162
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    if-nez p2, :cond_2c

    const-string p1, "Struga"

    .line 1163
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_16

    :cond_2c
    const-string p1, "M. Gjor\u010de Petrov"

    .line 1164
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_16
    return-object p0

    :cond_2d
    const-string v0, "MDA"

    .line 1165
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    if-nez p2, :cond_2e

    const-string p1, "S. Tiraspol"

    .line 1166
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_17

    :cond_2e
    const-string p1, "B\u0103l\u021bi"

    .line 1167
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_17
    return-object p0

    :cond_2f
    const-string v0, "LTU"

    .line 1168
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    if-nez p2, :cond_30

    const-string p1, "\u017d. Vilnius"

    .line 1169
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_18

    :cond_30
    const-string p1, "\u017d. Kaunas"

    .line 1170
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_18
    return-object p0

    :cond_31
    const-string v0, "KUW"

    .line 1171
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    if-nez p2, :cond_32

    const-string p1, "Kuwait S. C."

    .line 1172
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_19

    :cond_32
    const-string p1, "K. Adiliya"

    .line 1173
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_19
    return-object p0

    :cond_33
    const-string v0, "KSA"

    .line 1174
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    if-nez p2, :cond_34

    const-string p1, "I. Jeddah"

    .line 1175
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_1a

    :cond_34
    const-string p1, "W. Makkah"

    .line 1176
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_1a
    return-object p0

    :cond_35
    const-string v0, "KOS"

    .line 1177
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    if-nez p2, :cond_36

    const-string p1, "B. Suva Reka"

    .line 1178
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_1b

    :cond_36
    const-string p1, "L. Podujevo"

    .line 1179
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_1b
    return-object p0

    :cond_37
    const-string v0, "KGZ"

    .line 1180
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    if-nez p2, :cond_38

    const-string p1, "D. Bishkek"

    .line 1181
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_1c

    :cond_38
    const-string p1, "A. Osh 1960"

    .line 1182
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_1c
    return-object p0

    :cond_39
    const-string v0, "KEN"

    .line 1183
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    if-nez p2, :cond_3a

    const-string p1, "T. Nairobi 1969"

    .line 1184
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_1d

    :cond_3a
    const-string p1, "G. M. Nairobi"

    .line 1185
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_1d
    return-object p0

    :cond_3b
    const-string v0, "KAZ"

    .line 1186
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    if-nez p2, :cond_3c

    const-string p1, "Astana"

    .line 1187
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_1e

    :cond_3c
    const-string p1, "O. \u015e\u0131mkent"

    .line 1188
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_1e
    return-object p0

    :cond_3d
    const-string v0, "JPN"

    .line 1189
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    if-nez p2, :cond_3e

    const-string p1, "Yokohama F. M."

    .line 1190
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_1f

    :cond_3e
    const-string p1, "V. Kofu"

    .line 1191
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_1f
    return-object p0

    :cond_3f
    const-string v0, "JOR"

    .line 1192
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    if-nez p2, :cond_40

    const-string p1, "W. Amman"

    .line 1193
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_20

    :cond_40
    const-string p1, "F. Amman"

    .line 1194
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_20
    return-object p0

    :cond_41
    const-string v0, "ITA"

    .line 1195
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    if-nez p2, :cond_42

    const-string p1, "Napoli"

    .line 1196
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_21

    :cond_42
    const-string p1, "I. Milano"

    .line 1197
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_21
    return-object p0

    :cond_43
    const-string v0, "ISR"

    .line 1198
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    if-nez p2, :cond_44

    const-string p1, "M. Haifa"

    .line 1199
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_22

    :cond_44
    const-string p1, "B. Jerusalem"

    .line 1200
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_22
    return-object p0

    :cond_45
    const-string v0, "ISL"

    .line 1201
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    if-nez p2, :cond_46

    const-string p1, "B. K\u00f3pavogur"

    .line 1202
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_23

    :cond_46
    const-string p1, "V. Reykjav\u00edk 1908"

    .line 1203
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_23
    return-object p0

    :cond_47
    const-string v0, "IRQ"

    .line 1204
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    if-nez p2, :cond_48

    const-string p1, "S. Baghdad 1932"

    .line 1205
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_24

    :cond_48
    const-string p1, "K. Baghdad 1963"

    .line 1206
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_24
    return-object p0

    :cond_49
    const-string v0, "IRN"

    .line 1207
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    if-nez p2, :cond_4a

    const-string p1, "P. Tehran"

    .line 1208
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_25

    :cond_4a
    const-string p1, "E. Tehran"

    .line 1209
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_25
    return-object p0

    :cond_4b
    const-string v0, "IRL"

    .line 1210
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    if-nez p2, :cond_4c

    const-string p1, "Derry C."

    .line 1211
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_26

    :cond_4c
    const-string p1, "S. R. Dublin"

    .line 1212
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_26
    return-object p0

    :cond_4d
    const-string v0, "HUN"

    .line 1213
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    if-nez p2, :cond_4e

    const-string p1, "F. Budapest"

    .line 1214
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_27

    :cond_4e
    const-string p1, "Zalaegerszeg"

    .line 1215
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_27
    return-object p0

    :cond_4f
    const-string v0, "HKG"

    .line 1216
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    if-nez p2, :cond_50

    const-string p1, "K. Mong Kok"

    .line 1217
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_28

    :cond_50
    const-string p1, "W. Tai Po"

    .line 1218
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_28
    return-object p0

    :cond_51
    const-string v0, "GHA"

    .line 1219
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    if-nez p2, :cond_52

    const-string p1, "M. Tarkwa"

    .line 1220
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_29

    :cond_52
    const-string p1, "D. Dawu"

    .line 1221
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_29
    return-object p0

    :cond_53
    const-string v0, "GIB"

    .line 1222
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    if-nez p2, :cond_54

    const-string p1, "B. M. Gibraltar"

    .line 1223
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_2a

    :cond_54
    const-string p1, "L. R. I. Gibraltar"

    .line 1224
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_2a
    return-object p0

    :cond_55
    const-string v0, "GER"

    .line 1225
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    if-nez p2, :cond_56

    const-string p1, "Blue-Reds 1900"

    .line 1226
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_2b

    :cond_56
    const-string p1, "Red-Whites 2009"

    .line 1227
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_2b
    return-object p0

    :cond_57
    const-string v0, "GEO"

    .line 1228
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    if-nez p2, :cond_58

    const-string p1, "D. Tbilisi"

    .line 1229
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_2c

    :cond_58
    const-string p1, "T. Kutaisi"

    .line 1230
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_2c
    return-object p0

    :cond_59
    const-string v0, "FRO"

    .line 1231
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    if-nez p2, :cond_5a

    const-string p1, "Klaksv\u00edk"

    .line 1232
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_2d

    :cond_5a
    const-string p1, "V. G\u00f8ta"

    .line 1233
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_2d
    return-object p0

    :cond_5b
    const-string v0, "FRA"

    .line 1234
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    if-nez p2, :cond_5c

    const-string p1, "Paris S. G."

    .line 1235
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_2e

    :cond_5c
    const-string p1, "Toulouse"

    .line 1236
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_2e
    return-object p0

    :cond_5d
    const-string v0, "EST"

    .line 1237
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    if-nez p2, :cond_5e

    const-string p1, "Paide L."

    .line 1238
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_2f

    :cond_5e
    const-string p1, "F. Tallinn"

    .line 1239
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_2f
    return-object p0

    :cond_5f
    const-string v0, "ENG"

    .line 1240
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    if-nez p2, :cond_60

    const-string p1, "A. London"

    .line 1241
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_30

    :cond_60
    const-string p1, "Manchester C."

    .line 1242
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_30
    return-object p0

    :cond_61
    const-string v0, "EGY"

    .line 1243
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    if-nez p2, :cond_62

    const-string p1, "A. Cairo"

    .line 1244
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_31

    :cond_62
    const-string p1, "P. Cairo"

    .line 1245
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_31
    return-object p0

    :cond_63
    const-string v0, "CYP"

    .line 1246
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    if-nez p2, :cond_64

    const-string p1, "A. Lemesou 1930"

    .line 1247
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_32

    :cond_64
    const-string p1, "O. Lefkosia"

    .line 1248
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_32
    return-object p0

    :cond_65
    const-string v0, "CRO"

    .line 1249
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    if-nez p2, :cond_66

    const-string p1, "D. Zagreb"

    .line 1250
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_33

    :cond_66
    const-string p1, "H. Split"

    .line 1251
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_33
    return-object p0

    :cond_67
    const-string v0, "CHN"

    .line 1252
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    if-nez p2, :cond_68

    const-string p1, "Wuhan T. T."

    .line 1253
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_34

    :cond_68
    const-string p1, "Shandong T."

    .line 1254
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_34
    return-object p0

    :cond_69
    const-string v0, "CHI"

    .line 1255
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    if-nez p2, :cond_6a

    const-string p1, "D. M. San Bernardo"

    .line 1256
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_35

    :cond_6a
    const-string p1, "C. C. Macul"

    .line 1257
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_35
    return-object p0

    :cond_6b
    const-string v0, "BUL"

    .line 1258
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    if-nez p2, :cond_6c

    const-string p1, "L. Razgrad"

    .line 1259
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_36

    :cond_6c
    const-string p1, "Sofia"

    .line 1260
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_36
    return-object p0

    :cond_6d
    const-string v0, "BLR"

    .line 1261
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    if-nez p2, :cond_6e

    const-string p1, "S. Salihorsk"

    .line 1262
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_37

    :cond_6e
    const-string p1, "Gomel"

    .line 1263
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_37
    return-object p0

    :cond_6f
    const-string v0, "BEL"

    .line 1264
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    if-nez p2, :cond_70

    const-string p1, "R. Antwerpen"

    .line 1265
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_38

    :cond_70
    const-string p1, "K. V. Mechelen"

    .line 1266
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_38
    return-object p0

    :cond_71
    const-string v0, "ARM"

    .line 1267
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    if-nez p2, :cond_72

    const-string p1, "S. Gyumri"

    .line 1268
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_39

    :cond_72
    const-string p1, "U. Yerevan 1992"

    .line 1269
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_39
    return-object p0

    :cond_73
    const-string v0, "ARG"

    .line 1270
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    if-nez p2, :cond_74

    const-string p1, "P. Paran\u00e1"

    .line 1271
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_3a

    :cond_74
    const-string p1, "B. J. Buenos Aires"

    .line 1272
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_3a
    return-object p0

    :cond_75
    const-string v0, "ANG"

    .line 1273
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    if-nez p2, :cond_76

    const-string p1, "S. E. Dundo"

    .line 1274
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_3b

    :cond_76
    const-string p1, "A. P. Luanda"

    .line 1275
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_3b
    return-object p0

    :cond_77
    const-string v0, "AND"

    .line 1276
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    if-nez p2, :cond_78

    const-string p1, "I. C. Escaldes"

    .line 1277
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_3c

    :cond_78
    const-string p1, "A. Escaldes"

    .line 1278
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_3c
    return-object p0

    :cond_79
    const-string v0, "ALG"

    .line 1279
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    if-nez p2, :cond_7a

    const-string p1, "B. Alger"

    .line 1280
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_3d

    :cond_7a
    const-string p1, "Chlef"

    .line 1281
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_3d
    return-object p0

    :cond_7b
    const-string v0, "ALB"

    .line 1282
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    if-nez p2, :cond_7c

    const-string p1, "P. Tirana"

    .line 1283
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_3e

    :cond_7c
    const-string p1, "E. Rrogozhin\u00eb"

    .line 1284
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_3e
    return-object p0

    :cond_7d
    const-string v0, "MGL"

    .line 1287
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    if-nez p2, :cond_7e

    const-string p1, "Ulaanbaatar"

    .line 1288
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_3f

    :cond_7e
    const-string p1, "Deren"

    .line 1289
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_3f
    return-object p0

    :cond_7f
    const-string v0, "BRA"

    .line 1291
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_81

    if-nez p2, :cond_80

    const-string p1, "S. E. P. S\u00e3o Paulo"

    .line 1292
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    goto :goto_40

    :cond_80
    const-string p1, "C. R. F. Rio de Janeiro"

    .line 1293
    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->getTeamByOriginalName(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    :goto_40
    return-object p0

    :cond_81
    const/4 p0, 0x0

    return-object p0
.end method
