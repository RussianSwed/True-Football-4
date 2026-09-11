.class public Lpl/mkrstudio/truefootball3/dialogs/DayMatchDialog;
.super Landroid/app/Dialog;
.source "DayMatchDialog.java"


# instance fields
.field match:Lpl/mkrstudio/truefootball3/objects/Match;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/Match;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "context",
            "match"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 32
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/DayMatchDialog;->requestWindowFeature(I)Z

    const p1, 0x7f0a0039

    .line 33
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/DayMatchDialog;->setContentView(I)V

    .line 37
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/DayMatchDialog;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    .line 39
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/DayMatchDialog;->showMatch()V

    return-void
.end method

.method private showEmblem(Landroid/widget/ImageView;Lpl/mkrstudio/truefootball3/objects/Team;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageView",
            "team"
        }
    .end annotation

    .line 78
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/DayMatchDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "True Football 3"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/DayMatchDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 85
    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 86
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 90
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 91
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 93
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 95
    :cond_2
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/DayMatchDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getEmblemFileName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/DayMatchDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {v0, p2, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 96
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method showMatch()V
    .locals 8

    const v0, 0x7f080138

    .line 47
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/DayMatchDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080104

    .line 48
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/dialogs/DayMatchDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0801b1

    .line 49
    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/dialogs/DayMatchDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f08007d

    .line 50
    invoke-virtual {p0, v3}, Lpl/mkrstudio/truefootball3/dialogs/DayMatchDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0802c6

    .line 51
    invoke-virtual {p0, v4}, Lpl/mkrstudio/truefootball3/dialogs/DayMatchDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0801ae

    .line 52
    invoke-virtual {p0, v5}, Lpl/mkrstudio/truefootball3/dialogs/DayMatchDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f08007a

    .line 53
    invoke-virtual {p0, v6}, Lpl/mkrstudio/truefootball3/dialogs/DayMatchDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 55
    iget-object v7, p0, Lpl/mkrstudio/truefootball3/dialogs/DayMatchDialog;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Match;->getDate()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/DayMatchDialog;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/DayMatchDialog;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/DayMatchDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v0, v7}, Lpl/mkrstudio/truefootball3/helpers/StringHelper;->getNameForCompetition(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 59
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    :goto_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/DayMatchDialog;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/DayMatchDialog;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/DayMatchDialog;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lpl/mkrstudio/truefootball3/dialogs/DayMatchDialog;->showEmblem(Landroid/widget/ImageView;Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 68
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/DayMatchDialog;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lpl/mkrstudio/truefootball3/dialogs/DayMatchDialog;->showEmblem(Landroid/widget/ImageView;Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 69
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/DayMatchDialog;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/DayMatchDialog;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/DayMatchDialog;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const-string v0, "-:-"

    .line 72
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method
