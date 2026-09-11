.class public Lpl/mkrstudio/truefootball3/generators/WorldGenerator;
.super Ljava/lang/Object;
.source "WorldGenerator.java"


# instance fields
.field context:Landroid/content/Context;

.field dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

.field world:Lpl/mkrstudio/truefootball3/objects/World;


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

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/World;

    invoke-direct {v0}, Lpl/mkrstudio/truefootball3/objects/World;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/generators/WorldGenerator;->world:Lpl/mkrstudio/truefootball3/objects/World;

    .line 27
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/generators/WorldGenerator;->context:Landroid/content/Context;

    .line 28
    new-instance v0, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-direct {v0, p1}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/generators/WorldGenerator;->dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    return-void
.end method


# virtual methods
.method public generateWorld(Lpl/mkrstudio/truefootball3/activities/ProgressTask;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .line 33
    :try_start_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/generators/WorldGenerator;->dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->copyDataBase()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 35
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 37
    :goto_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/generators/WorldGenerator;->dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->open()Z

    const/4 v0, 0x1

    .line 39
    invoke-interface {p1, v0}, Lpl/mkrstudio/truefootball3/activities/ProgressTask;->doProgress(I)V

    .line 41
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/generators/WorldGenerator;->dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-virtual {v1, p1}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->fetchZones(Lpl/mkrstudio/truefootball3/activities/ProgressTask;)Ljava/util/List;

    move-result-object v1

    .line 45
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 46
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Zone;

    .line 47
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Zone;->getId()I

    move-result v5

    const/4 v6, 0x7

    if-ge v5, v6, :cond_0

    .line 48
    new-instance v5, Lpl/mkrstudio/truefootball3/objects/Continent;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Zone;->getId()I

    move-result v4

    invoke-direct {v5, v6, v4}, Lpl/mkrstudio/truefootball3/objects/Continent;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 53
    :cond_1
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/generators/WorldGenerator;->world:Lpl/mkrstudio/truefootball3/objects/World;

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/World;->setContinents(Ljava/util/List;)V

    .line 54
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/EditedData;

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/generators/WorldGenerator;->dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/generators/WorldGenerator;->context:Landroid/content/Context;

    const-string v6, "edited_data"

    invoke-direct {v3, v4, v6, v5}, Lpl/mkrstudio/truefootball3/objects/EditedData;-><init>(Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;Ljava/lang/String;Landroid/content/Context;)V

    .line 55
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/generators/WorldGenerator;->world:Lpl/mkrstudio/truefootball3/objects/World;

    invoke-virtual {v4, v3}, Lpl/mkrstudio/truefootball3/objects/World;->setEditedData(Lpl/mkrstudio/truefootball3/objects/EditedData;)V

    .line 57
    invoke-interface {p1, v0}, Lpl/mkrstudio/truefootball3/activities/ProgressTask;->doProgress(I)V

    .line 59
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/generators/WorldGenerator;->dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/generators/WorldGenerator;->world:Lpl/mkrstudio/truefootball3/objects/World;

    invoke-virtual {v0, v3, v1, p1}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->fetchCountries(Lpl/mkrstudio/truefootball3/objects/World;Ljava/util/List;Lpl/mkrstudio/truefootball3/activities/ProgressTask;)Ljava/util/List;

    move-result-object p1

    .line 61
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/generators/WorldGenerator;->dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->close()V

    .line 63
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Continent;

    .line 64
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Country;

    .line 65
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v4

    if-ne v4, v1, :cond_3

    .line 66
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCountries()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-void
.end method

.method public getWorld()Lpl/mkrstudio/truefootball3/objects/World;
    .locals 1

    .line 75
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/generators/WorldGenerator;->world:Lpl/mkrstudio/truefootball3/objects/World;

    return-object v0
.end method

.method public setWorld(Lpl/mkrstudio/truefootball3/objects/World;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "world"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/generators/WorldGenerator;->world:Lpl/mkrstudio/truefootball3/objects/World;

    return-void
.end method
