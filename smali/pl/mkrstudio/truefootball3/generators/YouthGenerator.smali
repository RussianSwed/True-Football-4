.class public Lpl/mkrstudio/truefootball3/generators/YouthGenerator;
.super Ljava/lang/Object;
.source "YouthGenerator.java"


# instance fields
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

.field nationalities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/NationChance;",
            ">;"
        }
    .end annotation
.end field

.field random:Ljava/util/Random;


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

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/generators/YouthGenerator;->firstNames:Ljava/util/HashMap;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/generators/YouthGenerator;->lastNames:Ljava/util/HashMap;

    .line 48
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/generators/YouthGenerator;->context:Landroid/content/Context;

    .line 49
    new-instance v0, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-direct {v0, p1}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/generators/YouthGenerator;->dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    return-void
.end method


# virtual methods
.method public generateNameLists(Lpl/mkrstudio/truefootball3/objects/Team;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "team"
        }
    .end annotation

    .line 54
    :try_start_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/generators/YouthGenerator;->dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->copyDataBase()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 58
    :goto_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/generators/YouthGenerator;->dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->open()Z

    .line 60
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/generators/YouthGenerator;->dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->getNationalityChancesForYouth(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/generators/YouthGenerator;->nationalities:Ljava/util/List;

    .line 61
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/NationChance;

    .line 62
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/NationChance;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/generators/YouthGenerator;->firstNames:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 64
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/generators/YouthGenerator;->firstNames:Ljava/util/HashMap;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/generators/YouthGenerator;->dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-virtual {v2, v0}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->getFirstNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/generators/YouthGenerator;->lastNames:Ljava/util/HashMap;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/generators/YouthGenerator;->dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-virtual {v2, v0}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->getLastNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 69
    :cond_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/generators/YouthGenerator;->dbh:Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->close()V

    return-void
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

    .line 75
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/generators/YouthGenerator;->firstNames:Ljava/util/HashMap;

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

    .line 83
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/generators/YouthGenerator;->lastNames:Ljava/util/HashMap;

    return-object v0
.end method

.method public getNationalities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/NationChance;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/generators/YouthGenerator;->nationalities:Ljava/util/List;

    return-object v0
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

    .line 79
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/generators/YouthGenerator;->firstNames:Ljava/util/HashMap;

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

    .line 87
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/generators/YouthGenerator;->lastNames:Ljava/util/HashMap;

    return-void
.end method

.method public setNationalities(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nationalities"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/NationChance;",
            ">;)V"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/generators/YouthGenerator;->nationalities:Ljava/util/List;

    return-void
.end method
