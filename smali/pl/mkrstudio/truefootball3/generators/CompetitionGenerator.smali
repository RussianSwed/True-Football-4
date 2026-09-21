.class public Lpl/mkrstudio/truefootball3/generators/CompetitionGenerator;
.super Ljava/lang/Object;
.source "CompetitionGenerator.java"


# instance fields
.field context:Landroid/content/Context;

.field firstSeason:Z

.field teamGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;>;"
        }
    .end annotation
.end field

.field year:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/generators/CompetitionGenerator;->context:Landroid/content/Context;

    return-void
.end method

.method private getCompetitionInfoFromFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "fileName",
            "gameVersion"
        }
    .end annotation

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 101
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-direct {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;-><init>()V

    .line 104
    :try_start_0
    invoke-virtual {v3, v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->setId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_10
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "check version 11"

    const-string v6, "11.0"

    const-string v7, ".txt"

    const-string v8, ""

    if-eqz v2, :cond_1

    .line 108
    :try_start_1
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 109
    :cond_0
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "competition_data_v12/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    .line 111
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "version 12"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object/from16 v16, v3

    goto/16 :goto_4

    .line 108
    :cond_1
    new-instance v9, Ljava/io/IOException;

    invoke-direct {v9, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    const-string v9, "10.0"

    if-eqz v2, :cond_3

    .line 114
    :try_start_2
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 115
    :cond_2
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v10, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "competition_data_v11/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 117
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "version 11"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object/from16 v16, v3

    move-object v9, v5

    goto/16 :goto_4

    .line 114
    :cond_3
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_1
    const-string v5, "8.0"

    const-string v10, "9.0"

    if-eqz v2, :cond_5

    .line 120
    :try_start_3
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 122
    :cond_4
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "check version 10"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "competition_data_v10/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    .line 124
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "version 10"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    move-object/from16 v16, v3

    move-object v9, v11

    goto/16 :goto_4

    .line 121
    :cond_5
    new-instance v11, Ljava/io/IOException;

    invoke-direct {v11, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_2
    if-eqz v2, :cond_7

    .line 127
    :try_start_4
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 129
    :cond_6
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "check version 9"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "competition_data_v9/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    .line 131
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "version 9"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_7
    new-instance v11, Ljava/io/IOException;

    invoke-direct {v11, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_3
    if-eqz v2, :cond_9

    .line 134
    :try_start_5
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 136
    :cond_8
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "check version 8"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 137
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "competition_data_v8/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    .line 138
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "version 8"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 135
    :cond_9
    new-instance v11, Ljava/io/IOException;

    invoke-direct {v11, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_4
    const-string v11, "7.0"

    if-eqz v2, :cond_b

    .line 141
    :try_start_6
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 143
    :cond_a
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "check version 7"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 144
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "competition_data_v7/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v12

    .line 145
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, "version 7"

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object/from16 v16, v3

    move-object v9, v12

    goto/16 :goto_4

    .line 142
    :cond_b
    new-instance v12, Ljava/io/IOException;

    invoke-direct {v12, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_5
    const-string v12, "6.0"

    if-eqz v2, :cond_d

    .line 148
    :try_start_7
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 150
    :cond_c
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, "check version 6"

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "competition_data_v6/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v13

    .line 152
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v15, "version 6"

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object/from16 v16, v3

    move-object v9, v13

    goto/16 :goto_4

    .line 149
    :cond_d
    new-instance v13, Ljava/io/IOException;

    invoke-direct {v13, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catch_6
    const-string v13, "5.0"

    if-eqz v2, :cond_f

    .line 155
    :try_start_8
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 157
    :cond_e
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v15, "check version 5"

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "competition_data_v5/"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 159
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v15, "version 5"

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object/from16 v16, v3

    move-object v9, v4

    goto/16 :goto_4

    .line 156
    :cond_f
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catch_7
    const-string v4, "4.0"

    if-eqz v2, :cond_11

    .line 162
    :try_start_9
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_10

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_10

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_10

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_10

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_10

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_10

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_10

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_10

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 164
    :cond_10
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v15, "check version 4"

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 165
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object/from16 v16, v3

    :try_start_a
    const-string v3, "competition_data_v4/"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 166
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v15, "version 4"

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    move-object v9, v3

    goto/16 :goto_4

    :catch_8
    move-object/from16 v16, v3

    goto :goto_2

    :cond_11
    move-object/from16 v16, v3

    .line 163
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catch_9
    :goto_2
    const-string v3, "3.0"

    if-eqz v2, :cond_13

    .line 169
    :try_start_b
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_12

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_12

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_12

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_12

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_12

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_12

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_12

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_12

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_12

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 171
    :cond_12
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v15, "check version 3"

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-object/from16 v17, v3

    :try_start_c
    const-string v3, "competition_data_v3/"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 173
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v15, "version 3"

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :catch_a
    move-object/from16 v17, v3

    goto :goto_3

    :cond_13
    move-object/from16 v17, v3

    .line 170
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :catch_b
    :goto_3
    if-eqz v2, :cond_15

    .line 176
    :try_start_d
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    move-object/from16 v3, v17

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string v3, "2.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 178
    :cond_14
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "check version 2"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 179
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "competition_data_v2/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    .line 180
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "version 2"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 177
    :cond_15
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 182
    :catch_c
    :try_start_e
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "check version 1"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 183
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "competition_data/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    .line 184
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "version 1"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 197
    :goto_4
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_f
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 198
    :try_start_f
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 201
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->valueOf(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v3
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_e
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-object/from16 v4, v16

    :try_start_10
    invoke-virtual {v4, v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->setCompetitionType(Lpl/mkrstudio/truefootball3/enums/CompetitionType;)V

    .line 202
    :cond_16
    :goto_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 203
    new-instance v5, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;

    invoke-direct {v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;-><init>()V

    .line 204
    new-instance v6, Ljava/util/StringTokenizer;

    invoke-direct {v6, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 206
    :goto_6
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_17

    .line 207
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_17
    const-string v6, "fans_behaviour"

    .line 209
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_18

    .line 210
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->setFansBehaviour(D)V

    goto :goto_5

    :cond_18
    const-string v6, "champion"

    .line 211
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v8, 0x1

    if-eqz v6, :cond_19

    .line 212
    invoke-virtual {v4, v8}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->setChampionCompetition(Z)V

    goto :goto_5

    :cond_19
    const-string v6, "cup_winner"

    .line 213
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 214
    invoke-virtual {v4, v8}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->setCupWinnerCompetition(Z)V

    goto :goto_5

    :cond_1a
    const-string v6, "champions_cup_winner"

    .line 215
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 216
    invoke-virtual {v4, v8}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->setChampionsCupWinnerCompetition(Z)V

    goto :goto_5

    :cond_1b
    const-string v6, "continental_cup_winner"

    .line 217
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 218
    invoke-virtual {v4, v8}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->setFederationCupWinnerCompetition(Z)V

    goto :goto_5

    :cond_1c
    const-string v6, "game_over"

    .line 219
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v9, 0x2

    if-eqz v6, :cond_1d

    new-array v3, v9, [B

    .line 220
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v6

    aput-byte v6, v3, v7

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v5

    aput-byte v5, v3, v8

    invoke-virtual {v4, v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->setGameOverPlaces([B)V

    goto/16 :goto_5

    :cond_1d
    const-string v6, "promotion"

    .line 221
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    new-array v3, v9, [B

    .line 222
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v6

    aput-byte v6, v3, v7

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v5

    aput-byte v5, v3, v8

    invoke-virtual {v4, v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->setPromotionPlaces([B)V

    goto/16 :goto_5

    :cond_1e
    const-string v6, "relegation"

    .line 223
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    const-string v10, "next_time"

    const-string v11, "first_time"

    if-eqz v6, :cond_22

    .line 225
    :try_start_11
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 226
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 227
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionHelper;->isFirstSeason(Lpl/mkrstudio/truefootball3/objects/UserData;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 228
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1f
    :goto_7
    const/4 v3, 0x1

    goto :goto_8

    .line 231
    :cond_20
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 232
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionHelper;->isFirstSeason(Lpl/mkrstudio/truefootball3/objects/UserData;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 233
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_7

    :cond_21
    const/4 v3, 0x0

    :goto_8
    if-eqz v3, :cond_16

    new-array v3, v9, [B

    .line 242
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v6

    aput-byte v6, v3, v7

    .line 243
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v5

    aput-byte v5, v3, v8

    .line 240
    invoke-virtual {v4, v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->setRelegationPlaces([B)V

    goto/16 :goto_5

    :cond_22
    const-string v6, "promotion_or_staying"

    .line 246
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    new-array v3, v9, [B

    .line 247
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v6

    aput-byte v6, v3, v7

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v5

    aput-byte v5, v3, v8

    invoke-virtual {v4, v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->setPromotionOrStayingPlaces([B)V

    goto/16 :goto_5

    :cond_23
    const-string v6, "relegation_or_staying"

    .line 248
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    new-array v3, v9, [B

    .line 249
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v6

    aput-byte v6, v3, v7

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v5

    aput-byte v5, v3, v8

    invoke-virtual {v4, v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->setRelegationOrStayingPlaces([B)V

    goto/16 :goto_5

    :cond_24
    const-string v6, "prize"

    .line 250
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 251
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->setMoneyPrize(I)V

    goto/16 :goto_5

    :cond_25
    const-string v6, "tv_rights"

    .line 252
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 253
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->setTvRights(I)V

    goto/16 :goto_5

    :cond_26
    const-string v6, "fans_attendance"

    .line 254
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 255
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->setFansInterest(D)V

    goto/16 :goto_5

    :cond_27
    const-string v6, "table"

    .line 256
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 258
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 259
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 260
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionHelper;->isFirstSeason(Lpl/mkrstudio/truefootball3/objects/UserData;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 261
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_28
    :goto_9
    const/4 v3, 0x1

    goto :goto_a

    .line 264
    :cond_29
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 265
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionHelper;->isFirstSeason(Lpl/mkrstudio/truefootball3/objects/UserData;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 266
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_9

    :cond_2a
    const/4 v3, 0x0

    :goto_a
    if-eqz v3, :cond_16

    const/16 v3, 0x8

    new-array v3, v3, [B

    .line 275
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v3, v7

    .line 276
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v3, v8

    .line 277
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v3, v9

    .line 278
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v3, v7

    .line 279
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v3, v7

    .line 280
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v3, v7

    .line 281
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v3, v7

    const/4 v6, 0x7

    .line 282
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v7, 0x7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v6

    .line 273
    invoke-virtual {v4, v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->setHighlightedPlaces([B)V

    goto/16 :goto_5

    :cond_2b
    const-string v6, "order"

    .line 285
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    const-string v8, "en"

    if-eqz v6, :cond_2c

    .line 286
    :try_start_12
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lpl/mkrstudio/truefootball3/enums/OrderType;->valueOf(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/enums/OrderType;

    move-result-object v3

    invoke-virtual {v4, v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->setOrderType(Lpl/mkrstudio/truefootball3/enums/OrderType;)V

    goto/16 :goto_5

    .line 288
    :cond_2c
    new-instance v6, Ljava/util/Locale;

    invoke-direct {v6, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;->valueOf(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    move-result-object v3

    invoke-virtual {v5, v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->setType(Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;)V

    .line 289
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getQueries()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 292
    :cond_2d
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_d
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 297
    :try_start_13
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_11

    goto :goto_e

    :catch_d
    move-exception v0

    goto :goto_b

    :catch_e
    move-exception v0

    move-object/from16 v4, v16

    :goto_b
    move-object v2, v0

    goto :goto_d

    :catch_f
    move-exception v0

    move-object/from16 v4, v16

    goto :goto_c

    :catchall_0
    move-exception v0

    move-object v1, v0

    const/4 v4, 0x0

    goto :goto_f

    :catch_10
    move-exception v0

    move-object v4, v3

    :goto_c
    move-object v2, v0

    const/4 v1, 0x0

    :goto_d
    :try_start_14
    const-string v3, "Error"

    .line 294
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 297
    :try_start_15
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_11

    goto :goto_e

    :catch_11
    move-exception v0

    move-object v1, v0

    .line 299
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_e
    return-object v4

    :catchall_1
    move-exception v0

    move-object v4, v1

    move-object v1, v0

    .line 297
    :goto_f
    :try_start_16
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_12

    goto :goto_10

    :catch_12
    move-exception v0

    move-object v2, v0

    .line 299
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 301
    :goto_10
    goto :goto_12

    :goto_11
    throw v1

    :goto_12
    goto :goto_11
.end method


# virtual methods
.method public generateCompetition(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/UserData;I)Lpl/mkrstudio/truefootball3/objects/Competition;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "ud",
            "competitionYear"
        }
    .end annotation

    .line 76
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-direct {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;-><init>()V

    const/4 v1, 0x4

    .line 78
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-lt v2, v3, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x39

    if-gt v1, v2, :cond_0

    .line 79
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->LEAGUE:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Competition;->setCompetitionType(Lpl/mkrstudio/truefootball3/enums/CompetitionType;)V

    goto/16 :goto_2

    :cond_0
    const-string v1, "_CC"

    .line 80
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CHAMPIONS_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Competition;->setCompetitionType(Lpl/mkrstudio/truefootball3/enums/CompetitionType;)V

    goto :goto_2

    :cond_1
    const-string v1, "WORLD_CUP"

    .line 82
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_nt_type
    .line 83
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CHAMPIONS_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Competition;->setCompetitionType(Lpl/mkrstudio/truefootball3/enums/CompetitionType;)V

    goto :goto_2

    :cond_2
    const-string v1, "NTWCF"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_nt_type

    const-string v1, "NTEUR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_nt_type

    const-string v1, "NTWCQ"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_nt_type

    const-string v1, "NTEUQ"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_nt_type

    const-string v1, "NTU2Q"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_nt_type

    const-string v1, "NTU2F"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_nt_type

    const-string v1, "_FC"

    .line 84
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "_EC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "EUR_SUP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "SAM_SUP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "AFR_SUP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, "_C"

    .line 86
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "_SUP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    const-string v1, "_PLAYOFF"

    .line 88
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 89
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->LEAGUE_PLAYOFF:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Competition;->setCompetitionType(Lpl/mkrstudio/truefootball3/enums/CompetitionType;)V

    goto :goto_2

    .line 87
    :cond_5
    :goto_0
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->DOMESTIC_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Competition;->setCompetitionType(Lpl/mkrstudio/truefootball3/enums/CompetitionType;)V

    goto :goto_2

    .line 85
    :cond_6
    :goto_1
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CONTINENTAL_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Competition;->setCompetitionType(Lpl/mkrstudio/truefootball3/enums/CompetitionType;)V

    .line 90
    :cond_7
    :goto_2
    invoke-virtual {v0, p3}, Lpl/mkrstudio/truefootball3/objects/Competition;->setYear(I)V

    .line 91
    iget-object p3, p0, Lpl/mkrstudio/truefootball3/generators/CompetitionGenerator;->context:Landroid/content/Context;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, p1, v1}, Lpl/mkrstudio/truefootball3/generators/CompetitionGenerator;->getCompetitionInfoFromFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->setCompetitionInfo(Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;)V

    .line 93
    :try_start_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/generators/CompetitionGenerator;->context:Landroid/content/Context;

    const/4 p3, 0x0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p3, v1, p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->updateFixtures(Landroid/content/Context;ZZLpl/mkrstudio/truefootball3/objects/UserData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 95
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-object v0
.end method

.method public generateCompetitions(Ljava/lang/String;Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/UserData;Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "leagueId",
            "observedCompetitions",
            "ud",
            "task"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lpl/mkrstudio/truefootball3/objects/UserData;",
            "Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;",
            ")V"
        }
    .end annotation

    .line 49
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Competitions;

    invoke-direct {v0}, Lpl/mkrstudio/truefootball3/objects/Competitions;-><init>()V

    invoke-virtual {p3, v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->setCompetitions(Lpl/mkrstudio/truefootball3/objects/Competitions;)V

    .line 50
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    iput v0, p0, Lpl/mkrstudio/truefootball3/generators/CompetitionGenerator;->year:I

    :try_start_nt
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v7

    invoke-static {v7}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->ensure(Lpl/mkrstudio/truefootball3/objects/World;)V
    :try_end_nt
    .catch Ljava/lang/Exception; {:try_start_nt .. :try_end_nt} :catch_nt

    goto :after_nt

    :catch_nt
    :after_nt
    const-string v0, "USA_1E"

    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "CAN_1W"

    const-string v4, "CAN_1E"

    const-string v5, "USA_1W"

    const-string v6, "USA_1"

    if-nez v2, :cond_0

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object p1, v6

    :cond_1
    const-string v2, ""

    .line 53
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 54
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    iget v7, p0, Lpl/mkrstudio/truefootball3/generators/CompetitionGenerator;->year:I

    invoke-virtual {p0, p1, p3, v7}, Lpl/mkrstudio/truefootball3/generators/CompetitionGenerator;->generateCompetition(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/UserData;I)Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v7

    invoke-virtual {v2, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz p4, :cond_4

    .line 57
    invoke-virtual {p4, v1}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;->doProgress(I)V

    .line 58
    :cond_4
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 59
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    iput v7, p0, Lpl/mkrstudio/truefootball3/generators/CompetitionGenerator;->year:I

    .line 60
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    move-object v2, v6

    .line 63
    :cond_6
    iget v7, p0, Lpl/mkrstudio/truefootball3/generators/CompetitionGenerator;->year:I

    .line 64
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Country;->getBeginDate()Ljava/lang/String;

    move-result-object v8

    const-string v9, "07.01"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 65
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 66
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Country;->getBeginDate()Ljava/lang/String;

    move-result-object v8

    const-string v9, "01.01"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    add-int/lit8 v7, v7, 0x1

    .line 70
    :cond_7
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {p0, v2, p3, v7}, Lpl/mkrstudio/truefootball3/generators/CompetitionGenerator;->generateCompetition(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/UserData;I)Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v7

    invoke-virtual {v8, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 333
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/generators/CompetitionGenerator;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getTeamGroups()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;>;"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/generators/CompetitionGenerator;->teamGroups:Ljava/util/HashMap;

    return-object v0
.end method

.method public getYear()I
    .locals 1

    .line 345
    iget v0, p0, Lpl/mkrstudio/truefootball3/generators/CompetitionGenerator;->year:I

    return v0
.end method

.method public isFirstSeason()Z
    .locals 1

    .line 353
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/generators/CompetitionGenerator;->firstSeason:Z

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 337
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/generators/CompetitionGenerator;->context:Landroid/content/Context;

    return-void
.end method

.method public setFirstSeason(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "firstSeason"
        }
    .end annotation

    .line 357
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/generators/CompetitionGenerator;->firstSeason:Z

    return-void
.end method

.method public setTeamGroups(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "teamGroups"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;>;)V"
        }
    .end annotation

    .line 341
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/generators/CompetitionGenerator;->teamGroups:Ljava/util/HashMap;

    return-void
.end method

.method public setYear(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "year"
        }
    .end annotation

    .line 349
    iput p1, p0, Lpl/mkrstudio/truefootball3/generators/CompetitionGenerator;->year:I

    return-void
.end method
