.class public Lpl/mkrstudio/truefootball3/activities/EditorActivity;
.super Landroid/app/Activity;
.source "EditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/mkrstudio/truefootball3/activities/EditorActivity$InitActivityProgressTask;
    }
.end annotation


# static fields
.field private static final FILE_SELECT_CODE:I = 0x0

.field private static final PICK_FILE:I = 0x2


# instance fields
.field currentEditedData:Lpl/mkrstudio/truefootball3/objects/EditedData;

.field editedDataFile:Ljava/io/File;

.field folder:Ljava/io/File;

.field lastEditDateTV:Landroid/widget/TextView;

.field leagueNamesEditedTV:Landroid/widget/TextView;

.field leagueNamesFile:Ljava/io/File;

.field playersEditedTV:Landroid/widget/TextView;

.field teamEmblemsEditedTV:Landroid/widget/TextView;

.field teamNamesEditedTV:Landroid/widget/TextView;

.field teamsSwappedTV:Landroid/widget/TextView;

.field ud:Lpl/mkrstudio/truefootball3/objects/UserData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lpl/mkrstudio/truefootball3/activities/EditorActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->initLeagueNames()V

    return-void
.end method

.method static synthetic access$100(Lpl/mkrstudio/truefootball3/activities/EditorActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->showFileChooser()V

    return-void
.end method

.method private copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "in",
            "file"
        }
    .end annotation

    const/4 v0, 0x0

    .line 363
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p2, 0x400

    :try_start_1
    new-array p2, p2, [B

    .line 366
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x0

    .line 367
    invoke-virtual {v1, p2, v2, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 377
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 382
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception p2

    move-object v0, v1

    goto :goto_3

    :catch_0
    move-exception p2

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p2

    goto :goto_3

    :catch_1
    move-exception p2

    .line 371
    :goto_1
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_1

    .line 377
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 382
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 385
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-void

    :goto_3
    if-eqz v0, :cond_2

    .line 377
    :try_start_5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 382
    :cond_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    .line 385
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 387
    :goto_4
    goto :goto_6

    :goto_5
    throw p2

    :goto_6
    goto :goto_5
.end method

.method private getExtension(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 354
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initLeagueNames()V
    .locals 5

    .line 154
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    .line 156
    iput-object v1, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->leagueNamesFile:Ljava/io/File;

    .line 157
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "True Football 3/league_names.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->leagueNamesFile:Ljava/io/File;

    goto :goto_0

    .line 160
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "league_names.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->leagueNamesFile:Ljava/io/File;

    .line 163
    :goto_0
    :try_start_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->leagueNamesFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->leagueNamesFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 165
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getLeagueNames()Ljava/util/HashMap;

    move-result-object v1

    .line 167
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_1

    const-string v3, "\\|"

    .line 170
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 171
    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 174
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method private showFileChooser()V
    .locals 2

    .line 445
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    .line 446
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "application/octet-stream"

    .line 447
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x2

    .line 453
    invoke-virtual {p0, v0, v1}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
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

.method copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "src",
            "dst"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    .line 392
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p2

    const-wide/16 v2, 0x0

    .line 394
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 397
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V

    :cond_0
    if-eqz p2, :cond_1

    .line 399
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_2

    .line 397
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V

    :cond_2
    if-eqz p2, :cond_3

    .line 399
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->close()V

    .line 400
    :cond_3
    throw v0
.end method

.method initViews()V
    .locals 7

    const v0, 0x7f0801c8

    .line 183
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->lastEditDateTV:Landroid/widget/TextView;

    const v0, 0x7f080373

    .line 184
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->teamNamesEditedTV:Landroid/widget/TextView;

    const v0, 0x7f080371

    .line 185
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->teamEmblemsEditedTV:Landroid/widget/TextView;

    const v0, 0x7f080296

    .line 186
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->playersEditedTV:Landroid/widget/TextView;

    const v0, 0x7f0801d8

    .line 187
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->leagueNamesEditedTV:Landroid/widget/TextView;

    const v0, 0x7f080374

    .line 188
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->teamsSwappedTV:Landroid/widget/TextView;

    .line 190
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->lastEditDateTV:Landroid/widget/TextView;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->teamNamesEditedTV:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->teamEmblemsEditedTV:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->playersEditedTV:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->leagueNamesEditedTV:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->teamsSwappedTV:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    new-instance v0, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;-><init>(Landroid/content/Context;)V

    .line 199
    :try_start_0
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->copyDataBase()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 201
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 203
    :goto_0
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->open()Z

    .line 204
    new-instance v1, Lpl/mkrstudio/truefootball3/objects/EditedData;

    const-string v2, "edited_data"

    invoke-direct {v1, v0, v2, p0}, Lpl/mkrstudio/truefootball3/objects/EditedData;-><init>(Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->currentEditedData:Lpl/mkrstudio/truefootball3/objects/EditedData;

    .line 205
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->close()V

    .line 208
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->currentEditedData:Lpl/mkrstudio/truefootball3/objects/EditedData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/EditedData;->getEditedPlayers()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 210
    :try_start_1
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->currentEditedData:Lpl/mkrstudio/truefootball3/objects/EditedData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/EditedData;->getEditedPlayers()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/2addr v2, v3

    goto :goto_1

    :catch_1
    nop

    goto :goto_1

    .line 215
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->playersEditedTV:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->teamNamesEditedTV:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->currentEditedData:Lpl/mkrstudio/truefootball3/objects/EditedData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/EditedData;->getEditedTeamNames()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 219
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->currentEditedData:Lpl/mkrstudio/truefootball3/objects/EditedData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/EditedData;->getEditedDivisionSwaps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/DivisionSwap;

    .line 220
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/DivisionSwap;->getTeamFrom()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/DivisionSwap;->getTeamFrom()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_2
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/DivisionSwap;->getTeamTo()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/DivisionSwap;->getTeamTo()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 223
    :cond_3
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->teamsSwappedTV:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x0

    .line 227
    iput-object v2, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->editedDataFile:Ljava/io/File;

    .line 228
    iput-object v2, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->folder:Ljava/io/File;

    .line 229
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v3, "edited_data.bin"

    if-eqz v0, :cond_4

    .line 230
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v5, "True Football 3"

    invoke-direct {v0, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->folder:Ljava/io/File;

    .line 231
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->folder:Ljava/io/File;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->editedDataFile:Ljava/io/File;

    goto :goto_3

    .line 233
    :cond_4
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->folder:Ljava/io/File;

    .line 234
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->folder:Ljava/io/File;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->editedDataFile:Ljava/io/File;

    .line 236
    :goto_3
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->editedDataFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 237
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "MM/dd/yyyy HH:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 238
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->lastEditDateTV:Landroid/widget/TextView;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->editedDataFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    :cond_5
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->folder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 272
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->folder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x0

    .line 274
    :goto_4
    array-length v3, v0

    if-ge v1, v3, :cond_8

    .line 275
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_7

    aget-object v3, v0, v1

    invoke-direct {p0, v3}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "jpg"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    aget-object v3, v0, v1

    invoke-direct {p0, v3}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "png"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    add-int/lit8 v2, v2, 0x1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    move v1, v2

    .line 280
    :cond_9
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->teamEmblemsEditedTV:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->leagueNamesEditedTV:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getLeagueNames()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0800a9

    .line 284
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v1, 0x7f0800ca

    .line 285
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v2, 0x7f0800b0

    .line 286
    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v3, 0x7f0800b1

    .line 287
    invoke-virtual {p0, v3}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/views/TileButton;

    .line 289
    new-instance v4, Lpl/mkrstudio/truefootball3/activities/EditorActivity$1;

    invoke-direct {v4, p0}, Lpl/mkrstudio/truefootball3/activities/EditorActivity$1;-><init>(Lpl/mkrstudio/truefootball3/activities/EditorActivity;)V

    invoke-virtual {v0, v4}, Lpl/mkrstudio/truefootball3/views/TileButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    new-instance v0, Lpl/mkrstudio/truefootball3/activities/EditorActivity$2;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/activities/EditorActivity$2;-><init>(Lpl/mkrstudio/truefootball3/activities/EditorActivity;)V

    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/views/TileButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    new-instance v0, Lpl/mkrstudio/truefootball3/activities/EditorActivity$3;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/activities/EditorActivity$3;-><init>(Lpl/mkrstudio/truefootball3/activities/EditorActivity;)V

    invoke-virtual {v2, v0}, Lpl/mkrstudio/truefootball3/views/TileButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    new-instance v0, Lpl/mkrstudio/truefootball3/activities/EditorActivity$4;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/activities/EditorActivity$4;-><init>(Lpl/mkrstudio/truefootball3/activities/EditorActivity;)V

    invoke-virtual {v3, v0}, Lpl/mkrstudio/truefootball3/views/TileButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "intent"
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    .line 408
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 409
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "edited_data.bin"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 410
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->editedDataFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    const v1, 0x7f0c026a

    if-nez p2, :cond_1

    .line 412
    :try_start_0
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->folder:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    .line 413
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->folder:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    .line 415
    :cond_0
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->editedDataFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 417
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 418
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, v0}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->showConfirmationDialog(Ljava/lang/String;Z)V

    .line 422
    :cond_1
    :goto_0
    :try_start_1
    new-instance p2, Ljava/io/File;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {p2, v2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 423
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 425
    :try_start_2
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_1
    move-exception p1

    .line 427
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 429
    :goto_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->editedDataFile:Ljava/io/File;

    invoke-virtual {p0, p2, p1}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->copyFile(Ljava/io/File;Ljava/io/File;)V

    const p1, 0x7f0c025e

    .line 430
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->showConfirmationDialog(Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 432
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 433
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->showConfirmationDialog(Ljava/lang/String;Z)V

    .line 435
    :goto_2
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->initViews()V

    goto :goto_3

    :cond_2
    const p1, 0x7f0c025b

    .line 437
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->showConfirmationDialog(Ljava/lang/String;Z)V

    :cond_3
    :goto_3
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 1227
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
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
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 p1, 0x1

    .line 71
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->requestWindowFeature(I)Z

    const p1, 0x7f0a0020

    .line 72
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->setContentView(I)V

    .line 74
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/UserData;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 76
    new-instance p1, Lpl/mkrstudio/truefootball3/activities/EditorActivity$InitActivityProgressTask;

    invoke-direct {p1, p0, p0}, Lpl/mkrstudio/truefootball3/activities/EditorActivity$InitActivityProgressTask;-><init>(Lpl/mkrstudio/truefootball3/activities/EditorActivity;Lpl/mkrstudio/truefootball3/activities/EditorActivity;)V

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/content/Context;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/activities/EditorActivity$InitActivityProgressTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 1238
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 563
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 564
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f070267

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 565
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/UserData;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 566
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 567
    :cond_0
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditorActivity;->initViews()V

    return-void
.end method

.method showConfirmationDialog(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "message",
            "refresh"
        }
    .end annotation

    .line 540
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 541
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v1, 0x7f0a0033

    .line 542
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f08010f

    .line 544
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 546
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f080259

    .line 548
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 549
    new-instance v1, Lpl/mkrstudio/truefootball3/activities/EditorActivity$5;

    invoke-direct {v1, p0, v0, p2}, Lpl/mkrstudio/truefootball3/activities/EditorActivity$5;-><init>(Lpl/mkrstudio/truefootball3/activities/EditorActivity;Landroid/app/Dialog;Z)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 558
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
