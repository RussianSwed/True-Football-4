.class public Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;
.super Landroid/app/Activity;
.source "EditTeamsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$InitActivityProgressTask;
    }
.end annotation


# static fields
.field public static chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;


# instance fields
.field PICK_IMAGE:I

.field arrowLeft1:Landroid/widget/Button;

.field arrowLeft2:Landroid/widget/Button;

.field arrowLeft3:Landroid/widget/Button;

.field arrowRight1:Landroid/widget/Button;

.field arrowRight2:Landroid/widget/Button;

.field arrowRight3:Landroid/widget/Button;

.field countries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field countriesSpinnerPosition:I

.field countrySpinner:Landroid/widget/Spinner;

.field leagueAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field leagueNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field leagueSpinner:Landroid/widget/Spinner;

.field leagues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field leaguesSpinnerPosition:I

.field teamSpinner:Landroid/widget/Spinner;

.field teams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field ud:Lpl/mkrstudio/truefootball3/objects/UserData;

.field unsavedChanges:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->unsavedChanges:Z

    const/4 v0, -0x1

    .line 86
    iput v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->countriesSpinnerPosition:I

    .line 87
    iput v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->leaguesSpinnerPosition:I

    const/16 v0, 0x6f

    .line 552
    iput v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->PICK_IMAGE:I

    return-void
.end method

.method static synthetic access$000(Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->showEmblem()V

    return-void
.end method

.method static synthetic access$100(Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->showFileChooser()V

    return-void
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

    .line 549
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

.method private showEmblem()V
    .locals 6

    const v0, 0x7f08016b

    .line 940
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 942
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 944
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 945
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "True Football 3"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 947
    :cond_0
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 949
    :goto_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 950
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 952
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 953
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 954
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 955
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 956
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 957
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 959
    :cond_2
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getEmblemFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "drawable"

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 960
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void
.end method

.method private showFileChooser()V
    .locals 4

    .line 625
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "image/jpeg"

    const-string v1, "image/png"

    .line 626
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 627
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "android.intent.action.PICK"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "image/*"

    .line 628
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.MIME_TYPES"

    .line 629
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 630
    iget v1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->PICK_IMAGE:I

    invoke-virtual {p0, v0, v1}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->startActivityForResult(Landroid/content/Intent;I)V

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

    .line 102
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

    .line 737
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    .line 738
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p2

    const-wide/16 v2, 0x0

    .line 740
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 743
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V

    :cond_0
    if-eqz p2, :cond_1

    .line 745
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_2

    .line 743
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V

    :cond_2
    if-eqz p2, :cond_3

    .line 745
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->close()V

    .line 746
    :cond_3
    throw v0
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

    .line 770
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public editCustomPlayer(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 778
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lpl/mkrstudio/truefootball3/activities/EditPlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "id"

    .line 779
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 780
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->startActivity(Landroid/content/Intent;)V

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

    .line 774
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method initLeagueSpinner()V
    .locals 4

    .line 461
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->leagues:Ljava/util/List;

    .line 463
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->countries:Ljava/util/List;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "USA"

    .line 465
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 466
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->leagues:Ljava/util/List;

    const-string v1, "USA_1E"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->leagues:Ljava/util/List;

    const-string v1, "USA_1W"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->leagues:Ljava/util/List;

    const-string v1, "USA_OTHER"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const-string v1, "CAN"

    .line 469
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 470
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->leagues:Ljava/util/List;

    const-string v1, "CAN_1E"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->leagues:Ljava/util/List;

    const-string v1, "CAN_1W"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->leagues:Ljava/util/List;

    const-string v1, "CAN_OTHER"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 474
    :cond_1
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v1

    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getTeamGroups()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 478
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->leagues:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 489
    :cond_2
    :goto_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->leagues:Ljava/util/List;

    new-instance v1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$15;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$15;-><init>(Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 502
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->leagueNames:Ljava/util/List;

    .line 503
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->leagues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 504
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->leagueNames:Ljava/util/List;

    invoke-static {v1, p0}, Lpl/mkrstudio/truefootball3/helpers/StringHelper;->getNameForCompetition(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 507
    :cond_3
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f0a00d4

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->leagueNames:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->leagueAdapter:Landroid/widget/ArrayAdapter;

    const v1, 0x1090009

    .line 508
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 509
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->leagueSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->leagueAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 510
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->leagueSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 512
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->leagues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    .line 513
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->arrowLeft2:Landroid/widget/Button;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 514
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->arrowRight2:Landroid/widget/Button;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 516
    :cond_4
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->arrowLeft2:Landroid/widget/Button;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070085

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 517
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->arrowRight2:Landroid/widget/Button;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070086

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_3
    return-void
.end method

.method initTeamSpinner()V
    .locals 4

    .line 523
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->teams:Ljava/util/List;

    .line 524
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->leagueSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 527
    :cond_0
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->leagues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 529
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v2

    invoke-virtual {v2, v0}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 530
    new-instance v2, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$16;

    invoke-direct {v2, p0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$16;-><init>(Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 538
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 539
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->teams:Ljava/util/List;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 542
    :cond_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x7f0a00d4

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->teams:Ljava/util/List;

    invoke-direct {v0, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v2, 0x1090009

    .line 543
    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 544
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->teamSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 545
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->teamSpinner:Landroid/widget/Spinner;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    return-void
.end method

.method initViews()V
    .locals 5

    const v0, 0x7f0801f9

    .line 106
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f08011f

    .line 108
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->countrySpinner:Landroid/widget/Spinner;

    const v0, 0x7f0801d7

    .line 109
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->leagueSpinner:Landroid/widget/Spinner;

    const v0, 0x7f08036d

    .line 110
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->teamSpinner:Landroid/widget/Spinner;

    const v0, 0x7f080060

    .line 111
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->arrowLeft1:Landroid/widget/Button;

    const v0, 0x7f080061

    .line 112
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->arrowLeft2:Landroid/widget/Button;

    const v0, 0x7f080062

    .line 113
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->arrowLeft3:Landroid/widget/Button;

    const v0, 0x7f080068

    .line 114
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->arrowRight1:Landroid/widget/Button;

    const v0, 0x7f080069

    .line 115
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->arrowRight2:Landroid/widget/Button;

    const v0, 0x7f08006a

    .line 116
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->arrowRight3:Landroid/widget/Button;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->countries:Ljava/util/List;

    .line 119
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/World;->getContinents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Continent;

    .line 120
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCountries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Country;

    .line 121
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->hasTeam()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 122
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->countries:Ljava/util/List;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    :cond_2
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->countries:Ljava/util/List;

    const-string v2, "CAN"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 126
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->countries:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_3
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->countries:Ljava/util/List;

    const-string v2, "USA"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 128
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->countries:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_4
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    .line 131
    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 133
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->countries:Ljava/util/List;

    new-instance v3, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$1;

    invoke-direct {v3, p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$1;-><init>(Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;Ljava/text/Collator;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 143
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->countries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 145
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->countrySpinner:Landroid/widget/Spinner;

    new-instance v3, Lpl/mkrstudio/truefootball3/adapters/CountrySpinnerAdapter;

    const v4, 0x7f0a00d2

    invoke-direct {v3, p0, v4, v0, v1}, Lpl/mkrstudio/truefootball3/adapters/CountrySpinnerAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 147
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->countrySpinner:Landroid/widget/Spinner;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 149
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->initLeagueSpinner()V

    .line 150
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->initTeamSpinner()V

    .line 152
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 153
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->leagueSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 154
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->teamSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 156
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->countrySpinner:Landroid/widget/Spinner;

    new-instance v2, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$2;

    invoke-direct {v2, p0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$2;-><init>(Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 168
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->leagueSpinner:Landroid/widget/Spinner;

    new-instance v2, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$3;

    invoke-direct {v2, p0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$3;-><init>(Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 178
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->teamSpinner:Landroid/widget/Spinner;

    new-instance v2, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$4;

    invoke-direct {v2, p0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$4;-><init>(Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 189
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v0

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->leagues:Ljava/util/List;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->leagueSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Team;

    sput-object v0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    .line 190
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->showEmblem()V

    .line 192
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->arrowLeft1:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$5;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$5;-><init>(Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->arrowLeft2:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$6;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$6;-><init>(Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->arrowLeft3:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$7;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$7;-><init>(Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->arrowRight1:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$8;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$8;-><init>(Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->arrowRight2:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$9;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$9;-><init>(Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->arrowRight3:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$10;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$10;-><init>(Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080165

    .line 270
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 271
    new-instance v1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$11;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$11;-><init>(Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080346

    .line 278
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 279
    new-instance v1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$12;-><init>(Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080167

    .line 307
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 308
    new-instance v1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$13;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$13;-><init>(Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080166

    .line 379
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 380
    new-instance v1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$14;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$14;-><init>(Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
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
            "data"
        }
    .end annotation

    .line 556
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 557
    iget v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->PICK_IMAGE:I

    if-ne p1, v0, :cond_4

    const/4 p1, -0x1

    if-ne p2, p1, :cond_4

    if-nez p3, :cond_0

    return-void

    .line 563
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    const/4 p2, 0x0

    :try_start_1
    const-string p3, "file"

    const-string v0, "png"

    .line 567
    invoke-static {p3, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    .line 568
    :try_start_2
    invoke-virtual {p3}, Ljava/io/File;->deleteOnExit()V

    .line 569
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 570
    invoke-static {p1, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object p3, p2

    .line 572
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 577
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selected file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mounted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 581
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 582
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0, p2}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    const-string v0, "True Football 3"

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_2

    .line 584
    :cond_1
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->getFilesDir()Ljava/io/File;

    move-result-object p1

    .line 586
    :goto_2
    new-instance p2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 587
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 588
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 589
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 590
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 591
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 594
    :cond_3
    :try_start_4
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 595
    invoke-virtual {p0, p3, p2}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_2
    move-exception p1

    .line 598
    :try_start_5
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    const p1, 0x7f0c0263

    .line 609
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->showConfirmationDialog(Ljava/lang/String;)V

    .line 610
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->showEmblem()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    .line 615
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_4
    :goto_4
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 907
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->unsavedChanges:Z

    if-eqz v0, :cond_0

    .line 908
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 909
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v1, 0x7f0a0035

    .line 910
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f08010f

    .line 912
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0c0233

    .line 913
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0803d0

    .line 915
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 916
    new-instance v2, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$18;

    invoke-direct {v2, p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$18;-><init>(Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f08022d

    .line 924
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 925
    new-instance v2, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$19;

    invoke-direct {v2, p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$19;-><init>(Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 933
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 935
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :goto_0
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

    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 p1, 0x1

    .line 93
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->requestWindowFeature(I)Z

    const p1, 0x7f0a001f

    .line 94
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->setContentView(I)V

    .line 96
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/UserData;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 97
    new-instance p1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$InitActivityProgressTask;

    invoke-direct {p1, p0, p0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$InitActivityProgressTask;-><init>(Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;)V

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/content/Context;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$InitActivityProgressTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 981
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 966
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 967
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f070267

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    return-void
.end method

.method saveChanges()V
    .locals 4

    .line 854
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 858
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "True Football 3"

    if-eqz v0, :cond_0

    .line 859
    new-instance v0, Ljava/io/File;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 861
    :cond_0
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    :goto_0
    const/4 v2, 0x1

    .line 865
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 866
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    :cond_1
    if-eqz v2, :cond_2

    .line 871
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "edited_data.bin"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 872
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 873
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 874
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/World;->getEditedData()Lpl/mkrstudio/truefootball3/objects/EditedData;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 875
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "I has a error"

    .line 877
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method

.method showConfirmationDialog(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 750
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 751
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v1, 0x7f0a0033

    .line 752
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f08010f

    .line 754
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 756
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f080259

    .line 758
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 759
    new-instance v1, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$17;

    invoke-direct {v1, p0, v0}, Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity$17;-><init>(Lpl/mkrstudio/truefootball3/activities/EditTeamsActivity;Landroid/app/Dialog;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 766
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
