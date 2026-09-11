.class public Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;
.super Landroid/app/Activity;
.source "LoadGameActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$InitActivityProgressTask;,
        Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$LoadProgressTask;
    }
.end annotation


# instance fields
.field act:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;

.field deleteButton:Landroid/widget/Button;

.field files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field isSDPresent:Z

.field loadButton:Landroid/widget/Button;

.field loadPosition:I

.field loadRunnable:Ljava/lang/Runnable;

.field loaded:Z

.field loadingDialog:Landroid/app/Dialog;

.field savedGames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/SavedGame;",
            ">;"
        }
    .end annotation
.end field

.field ud:Lpl/mkrstudio/truefootball3/objects/UserData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->savedGames:Ljava/util/List;

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->loaded:Z

    .line 97
    iput-object p0, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->act:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;

    .line 364
    new-instance v0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$2;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$2;-><init>(Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;)V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->handler:Landroid/os/Handler;

    .line 374
    new-instance v0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$3;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$3;-><init>(Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;)V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->loadRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;)Landroid/os/Handler;
    .locals 0

    .line 53
    iget-object p0, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newBase"
        }
    .end annotation

    .line 81
    invoke-static {p1}, Lpl/mkrstudio/truefootball3/helpers/LocaleHelper;->getCustomConfig(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method deleteGame(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->savedGames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/SavedGame;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/SavedGame;->getBinFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 89
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->savedGames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/SavedGame;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/SavedGame;->getInfoFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 93
    :cond_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->savedGames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method initViews()V
    .locals 2

    const v0, 0x7f08014b

    .line 287
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->deleteButton:Landroid/widget/Button;

    const v0, 0x7f0801ea

    .line 288
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->loadButton:Landroid/widget/Button;

    .line 289
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->deleteButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 290
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->loadButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 292
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->listSaves()V

    return-void
.end method

.method listSaves()V
    .locals 25

    move-object/from16 v1, p0

    const-string v2, ".bin"

    const-string v3, ".info"

    .line 100
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 101
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 102
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->savedGames:Ljava/util/List;

    .line 106
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->getFilesDir()Ljava/io/File;

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    const/4 v0, 0x2

    const-string v9, ""

    if-ge v8, v0, :cond_c

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v8, :cond_1

    .line 111
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    .line 113
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v12

    :goto_1
    move/from16 v24, v12

    move-object v12, v0

    move/from16 v0, v24

    goto :goto_3

    :cond_0
    move-object v12, v0

    :goto_2
    const/4 v0, 0x1

    goto :goto_3

    :cond_1
    if-ne v8, v11, :cond_2

    .line 115
    iget-boolean v0, v1, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->isSDPresent:Z

    if-eqz v0, :cond_2

    .line 116
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1, v10}, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    const-string v13, "True Football 3"

    invoke-direct {v0, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    .line 118
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v12

    goto :goto_1

    :cond_2
    move-object v12, v10

    goto :goto_2

    :goto_3
    if-eqz v12, :cond_b

    if-eqz v0, :cond_b

    .line 124
    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v13, v0

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v13, :cond_7

    aget-object v16, v0, v14

    .line 128
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    const/16 v10, 0x2e

    invoke-virtual {v15, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    if-lez v10, :cond_3

    .line 130
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v15, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 131
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    :cond_3
    move-object v10, v9

    move-object v11, v10

    :goto_5
    const-string v15, "ext"

    .line 133
    invoke-static {v15, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v15, "name"

    .line 134
    invoke-static {v15, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v15, "bin"

    .line 135
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 136
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_4
    const-string v15, "info"

    .line 137
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 138
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_5
    const-string v15, "sav"

    .line 139
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 140
    new-instance v11, Ljava/util/StringTokenizer;

    const-string v15, "_"

    invoke-direct {v11, v10, v15}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v10, Lpl/mkrstudio/truefootball3/objects/SavedGame;

    const/16 v17, 0x0

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->lastModified()J

    move-result-wide v19

    const/16 v21, 0x0

    move-object v15, v10

    invoke-direct/range {v15 .. v21}, Lpl/mkrstudio/truefootball3/objects/SavedGame;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JZ)V

    .line 142
    iget-object v11, v1, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->savedGames:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_6
    add-int/lit8 v14, v14, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto :goto_4

    .line 146
    :cond_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 147
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 148
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 151
    :cond_9
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 155
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    new-instance v11, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 156
    :try_start_1
    new-instance v11, Ljava/io/DataInputStream;

    invoke-direct {v11, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    :try_start_2
    new-instance v13, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    invoke-direct {v14, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v13, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 158
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    .line 159
    new-instance v13, Lpl/mkrstudio/truefootball3/objects/SavedGame;

    new-instance v14, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v12, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v15, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v15, v12, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v23, v3

    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v12, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v19
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v3, 0x1

    move-object v0, v15

    if-ne v8, v3, :cond_a

    const/16 v21, 0x1

    goto :goto_9

    :cond_a
    const/16 v21, 0x0

    :goto_9
    move-object v15, v13

    move-object/from16 v16, v14

    move-object/from16 v17, v0

    :try_start_4
    invoke-direct/range {v15 .. v21}, Lpl/mkrstudio/truefootball3/objects/SavedGame;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JZ)V

    .line 160
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V

    .line 161
    iget-object v0, v1, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->savedGames:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 166
    :try_start_5
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V

    .line 167
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_d

    :catch_0
    move-exception v0

    goto :goto_c

    :catch_1
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    move-object/from16 v23, v3

    :goto_a
    const/4 v3, 0x1

    goto :goto_c

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object/from16 v22, v10

    const/4 v10, 0x0

    goto :goto_e

    :catch_3
    move-exception v0

    move-object/from16 v23, v3

    const/4 v3, 0x1

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object v2, v0

    const/4 v10, 0x0

    const/16 v22, 0x0

    goto :goto_e

    :catch_4
    move-exception v0

    move-object/from16 v23, v3

    const/4 v3, 0x1

    const/4 v10, 0x0

    :goto_b
    const/4 v11, 0x0

    .line 163
    :goto_c
    :try_start_6
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 166
    :try_start_7
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V

    .line 167
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_d

    :catch_5
    move-exception v0

    .line 169
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_d
    move-object/from16 v3, v23

    const/4 v7, 0x0

    goto/16 :goto_8

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object/from16 v22, v10

    move-object v10, v11

    .line 166
    :goto_e
    :try_start_8
    invoke-virtual {v10}, Ljava/io/DataInputStream;->close()V

    .line 167
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_f

    :catch_6
    move-exception v0

    .line 169
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 171
    :goto_f
    throw v2

    :cond_b
    move-object/from16 v23, v3

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, v23

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_c
    const v0, 0x7f0802e7

    .line 177
    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 178
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 179
    iget-object v3, v1, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->savedGames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/SavedGame;

    .line 180
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 181
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/SavedGame;->getTeamName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "team"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v6, v1, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v6

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/SavedGame;->getTeamName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamByName(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    const-string v7, "emblem"

    if-eqz v6, :cond_d

    .line 184
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Team;->getEmblemFileName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_d
    const-string v6, "-"

    .line 186
    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :goto_11
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 189
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/util/Date;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/SavedGame;->getDateTime()J

    move-result-wide v10

    invoke-direct {v8, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "date"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 193
    :cond_e
    new-instance v3, Lpl/mkrstudio/truefootball3/adapters/SavedGameAdapter;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, v2}, Lpl/mkrstudio/truefootball3/adapters/SavedGameAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 194
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 196
    new-instance v2, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1;

    invoke-direct {v2, v1, v3}, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1;-><init>(Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;Lpl/mkrstudio/truefootball3/adapters/SavedGameAdapter;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 281
    iget-object v0, v1, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->deleteButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 282
    iget-object v0, v1, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->loadButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method load(I)Z
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    const-string v0, "\n"

    .line 302
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->savedGames:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/SavedGame;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/SavedGame;->getBinFile()Ljava/io/File;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 305
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 306
    :try_start_1
    new-instance p1, Ljava/io/ObjectInputStream;

    invoke-direct {p1, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 307
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    :try_start_2
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 318
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/4 p1, 0x1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 320
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v1, v4

    goto/16 :goto_5

    :catch_2
    move-exception p1

    move-object v5, v1

    :goto_1
    move-object v1, v4

    goto :goto_2

    :catchall_1
    move-exception p1

    goto/16 :goto_5

    :catch_3
    move-exception p1

    move-object v5, v1

    .line 310
    :goto_2
    :try_start_4
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 311
    iput v2, v4, Landroid/os/Message;->arg1:I

    .line 312
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    aget-object v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    const/4 v0, 0x2

    aget-object p1, p1, v0

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 313
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_0

    .line 318
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 325
    :goto_3
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 326
    invoke-virtual {v0, v5}, Lpl/mkrstudio/truefootball3/objects/UserData;->copyData(Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;)V

    .line 329
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v1

    .line 330
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/Competition;

    .line 333
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lpl/mkrstudio/truefootball3/objects/Week;

    if-nez v7, :cond_2

    .line 334
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 335
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v10

    if-ne v10, v6, :cond_3

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v10

    if-ne v10, v6, :cond_3

    .line 337
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getDate()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_5

    .line 338
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getDate()Ljava/lang/String;

    move-result-object v1

    const-string v7, "06.30"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 339
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getDate()Ljava/lang/String;

    move-result-object v1

    const-string v10, "07.01"

    invoke-virtual {v1, v7, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lpl/mkrstudio/truefootball3/objects/Match;->setDate(Ljava/lang/String;)V

    .line 341
    :cond_4
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getDate()Ljava/lang/String;

    move-result-object v1

    :cond_5
    const/4 v7, 0x1

    goto :goto_4

    .line 347
    :cond_6
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 350
    :cond_7
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v4, v5, v6}, Ljava/util/GregorianCalendar;->add(II)V

    add-int/2addr v3, v2

    const/16 v4, 0x3e8

    if-gt v3, v4, :cond_8

    .line 352
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_8
    return p1

    :goto_5
    if-eqz v1, :cond_9

    .line 318
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    .line 320
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 323
    :cond_9
    :goto_6
    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 p1, 0x1

    .line 71
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->requestWindowFeature(I)Z

    const p1, 0x7f0a0021

    .line 72
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->setContentView(I)V

    .line 74
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/UserData;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 75
    new-instance p1, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$InitActivityProgressTask;

    invoke-direct {p1, p0, p0}, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$InitActivityProgressTask;-><init>(Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;)V

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/content/Context;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$InitActivityProgressTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onPause()V
    .locals 2

    const v0, 0x7f0801f7

    .line 455
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 456
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 457
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 459
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    const v0, 0x7f0801f7

    .line 448
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f070267

    .line 449
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 450
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
