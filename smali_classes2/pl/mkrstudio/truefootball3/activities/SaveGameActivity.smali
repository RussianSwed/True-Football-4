.class public Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;
.super Landroid/app/Activity;
.source "SaveGameActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$SaveProgressTask;
    }
.end annotation


# instance fields
.field act:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;

.field deleteButton:Landroid/widget/Button;

.field private final handler:Landroid/os/Handler;

.field isSDPresent:Z

.field loadingDialog:Landroid/app/Dialog;

.field saveButton:Landroid/widget/Button;

.field savePosition:I

.field saveRunnable:Ljava/lang/Runnable;

.field saved:Z

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

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->savedGames:Ljava/util/List;

    .line 275
    new-instance v0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$2;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$2;-><init>(Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;)V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->saveRunnable:Ljava/lang/Runnable;

    .line 348
    iput-object p0, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->act:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;

    .line 351
    new-instance v0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$3;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$3;-><init>(Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;)V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->handler:Landroid/os/Handler;

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

    .line 73
    invoke-static {p1}, Lpl/mkrstudio/truefootball3/helpers/LocaleHelper;->getCustomConfig(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public deleteGame(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->savedGames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/SavedGame;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/SavedGame;->getBinFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 341
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->savedGames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/SavedGame;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/SavedGame;->getInfoFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 343
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 344
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 345
    :cond_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->savedGames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method disable(Landroid/widget/Button;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    const/4 v0, 0x0

    .line 77
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method enable(Landroid/widget/Button;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    const/4 v0, 0x1

    .line 81
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method initViews()V
    .locals 1

    const v0, 0x7f08014b

    .line 267
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->deleteButton:Landroid/widget/Button;

    const v0, 0x7f0802e6

    .line 268
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->saveButton:Landroid/widget/Button;

    .line 269
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->deleteButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->disable(Landroid/widget/Button;)V

    .line 270
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->saveButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->disable(Landroid/widget/Button;)V

    .line 272
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->listSaves()V

    return-void
.end method

.method listSaves()V
    .locals 25

    move-object/from16 v1, p0

    const-string v2, ".bin"

    const-string v3, ".info"

    .line 85
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 86
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 87
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->savedGames:Ljava/util/List;

    .line 91
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->getFilesDir()Ljava/io/File;

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    const/4 v0, 0x2

    const-string v9, ""

    if-ge v8, v0, :cond_c

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v8, :cond_1

    .line 96
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    .line 98
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

    .line 100
    iget-boolean v0, v1, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->isSDPresent:Z

    if-eqz v0, :cond_2

    .line 101
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1, v10}, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    const-string v13, "True Football 3"

    invoke-direct {v0, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    .line 103
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v12

    goto :goto_1

    :cond_2
    move-object v12, v10

    goto :goto_2

    :goto_3
    if-eqz v12, :cond_b

    if-eqz v0, :cond_b

    .line 109
    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v13, v0

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v13, :cond_7

    aget-object v16, v0, v14

    .line 113
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    const/16 v10, 0x2e

    invoke-virtual {v15, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    if-lez v10, :cond_3

    .line 115
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v15, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 116
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

    .line 118
    invoke-static {v15, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v15, "name"

    .line 119
    invoke-static {v15, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v15, "bin"

    .line 120
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 121
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_4
    const-string v15, "info"

    .line 122
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 123
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_5
    const-string v15, "sav"

    .line 124
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 125
    new-instance v11, Ljava/util/StringTokenizer;

    const-string v15, "_"

    invoke-direct {v11, v10, v15}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v10, Lpl/mkrstudio/truefootball3/objects/SavedGame;

    const/16 v17, 0x0

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->lastModified()J

    move-result-wide v19

    const/16 v21, 0x0

    move-object v15, v10

    invoke-direct/range {v15 .. v21}, Lpl/mkrstudio/truefootball3/objects/SavedGame;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JZ)V

    .line 127
    iget-object v11, v1, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->savedGames:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_6
    add-int/lit8 v14, v14, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto :goto_4

    .line 131
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

    .line 132
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 133
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 136
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

    .line 140
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

    .line 141
    :try_start_1
    new-instance v11, Ljava/io/DataInputStream;

    invoke-direct {v11, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    :try_start_2
    new-instance v13, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    invoke-direct {v14, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v13, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 143
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    .line 144
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

    .line 145
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V

    .line 146
    iget-object v0, v1, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->savedGames:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 151
    :try_start_5
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V

    .line 152
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

    .line 148
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

    .line 151
    :try_start_7
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V

    .line 152
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_d

    :catch_5
    move-exception v0

    .line 154
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

    .line 151
    :goto_e
    :try_start_8
    invoke-virtual {v10}, Ljava/io/DataInputStream;->close()V

    .line 152
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_f

    :catch_6
    move-exception v0

    .line 154
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 156
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

    .line 162
    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 163
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 164
    iget-object v3, v1, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->savedGames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "-"

    const-string v6, "date"

    const-string v7, "team"

    const-string v8, "emblem"

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/SavedGame;

    .line 165
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 166
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/SavedGame;->getTeamName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v7, v1, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v7

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/SavedGame;->getTeamName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamByName(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 169
    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getEmblemFileName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v10, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 171
    :cond_d
    invoke-interface {v10, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :goto_11
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v5, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 174
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/util/Date;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/SavedGame;->getDateTime()J

    move-result-wide v11

    invoke-direct {v8, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 177
    :cond_e
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 178
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v10, 0x7f0c03f6

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-interface {v3, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-interface {v3, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v3, Lpl/mkrstudio/truefootball3/adapters/SavedGameAdapter;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, v2}, Lpl/mkrstudio/truefootball3/adapters/SavedGameAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 184
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 186
    new-instance v4, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1;

    invoke-direct {v4, v1, v3, v2}, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1;-><init>(Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;Lpl/mkrstudio/truefootball3/adapters/SavedGameAdapter;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 257
    iget-object v0, v1, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->deleteButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->disable(Landroid/widget/Button;)V

    .line 258
    iget-object v0, v1, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->saveButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->disable(Landroid/widget/Button;)V

    return-void
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

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 p1, 0x1

    .line 62
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->requestWindowFeature(I)Z

    const p1, 0x7f0a0027

    .line 63
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->setContentView(I)V

    .line 65
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/UserData;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 67
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mounted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->isSDPresent:Z

    .line 68
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->initViews()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const v0, 0x7f0801f7

    .line 420
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 421
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 422
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 424
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    const v0, 0x7f0801f7

    .line 413
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f070267

    .line 414
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 415
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public save()Z
    .locals 8

    .line 298
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 304
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 307
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 308
    new-instance v4, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;

    invoke-direct {v4}, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;-><init>()V

    .line 309
    invoke-virtual {v4, v1}, Lpl/mkrstudio/truefootball3/objects/UserDataSerializable;->copyData(Lpl/mkrstudio/truefootball3/objects/UserData;)V

    .line 311
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 312
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".sav"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 314
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 315
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 316
    invoke-virtual {v1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 317
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 318
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    .line 322
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 323
    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 324
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 325
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    aget-object v6, v6, v3

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    aget-object v2, v6, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 326
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return v3

    :cond_2
    const-string v0, "failure"

    .line 331
    invoke-static {v0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method
