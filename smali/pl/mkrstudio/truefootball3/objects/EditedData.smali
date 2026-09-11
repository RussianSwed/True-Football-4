.class public Lpl/mkrstudio/truefootball3/objects/EditedData;
.super Ljava/lang/Object;
.source "EditedData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x60016601efe344e9L


# instance fields
.field editedDivisionSwaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/DivisionSwap;",
            ">;"
        }
    .end annotation
.end field

.field editedPlayers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStub;",
            ">;>;"
        }
    .end annotation
.end field

.field editedTeamNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field isSDPresent:Ljava/lang/Boolean;

.field version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;Ljava/lang/String;Landroid/content/Context;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dbh",
            "fileName",
            "context"
        }
    .end annotation

    const-string v0, "1.0"

    const-string v1, "5.0"

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lpl/mkrstudio/truefootball3/objects/EditedData;->editedTeamNames:Ljava/util/HashMap;

    .line 21
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lpl/mkrstudio/truefootball3/objects/EditedData;->editedPlayers:Ljava/util/HashMap;

    .line 22
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lpl/mkrstudio/truefootball3/objects/EditedData;->editedDivisionSwaps:Ljava/util/List;

    .line 23
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lpl/mkrstudio/truefootball3/objects/EditedData;->isSDPresent:Ljava/lang/Boolean;

    const-string v3, ""

    .line 24
    iput-object v3, p0, Lpl/mkrstudio/truefootball3/objects/EditedData;->version:Ljava/lang/String;

    .line 33
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v4, ".bin"

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    .line 34
    new-instance v2, Ljava/io/File;

    invoke-virtual {p3, v5}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "True Football 3/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 41
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 42
    :try_start_1
    new-instance p3, Ljava/io/ObjectInputStream;

    invoke-direct {p3, p2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 43
    invoke-virtual {p3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/EditedData;

    .line 44
    iget-object v4, v2, Lpl/mkrstudio/truefootball3/objects/EditedData;->editedTeamNames:Ljava/util/HashMap;

    iput-object v4, p0, Lpl/mkrstudio/truefootball3/objects/EditedData;->editedTeamNames:Ljava/util/HashMap;

    .line 45
    iget-object v4, v2, Lpl/mkrstudio/truefootball3/objects/EditedData;->editedPlayers:Ljava/util/HashMap;

    iput-object v4, p0, Lpl/mkrstudio/truefootball3/objects/EditedData;->editedPlayers:Ljava/util/HashMap;

    .line 46
    iget-object v4, v2, Lpl/mkrstudio/truefootball3/objects/EditedData;->editedDivisionSwaps:Ljava/util/List;

    if-eqz v4, :cond_1

    iput-object v4, p0, Lpl/mkrstudio/truefootball3/objects/EditedData;->editedDivisionSwaps:Ljava/util/List;

    .line 47
    :cond_1
    iget-object v2, v2, Lpl/mkrstudio/truefootball3/objects/EditedData;->version:Ljava/lang/String;

    iput-object v2, p0, Lpl/mkrstudio/truefootball3/objects/EditedData;->version:Ljava/lang/String;

    .line 48
    invoke-virtual {p3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, p2

    goto :goto_1

    :catchall_0
    move-exception p3

    move-object v5, p2

    goto :goto_4

    :catch_0
    move-exception p3

    move-object v5, p2

    goto :goto_2

    .line 70
    :cond_2
    :goto_1
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/objects/EditedData;->version:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lpl/mkrstudio/truefootball3/objects/EditedData;->version:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 71
    :cond_3
    invoke-virtual {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/EditedData;->addPlayers(Ljava/lang/String;Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;)V

    .line 72
    iput-object v1, p0, Lpl/mkrstudio/truefootball3/objects/EditedData;->version:Ljava/lang/String;

    :cond_4
    if-eqz v5, :cond_7

    .line 77
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 79
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catchall_1
    move-exception p3

    goto :goto_4

    :catch_2
    move-exception p3

    .line 51
    :goto_2
    :try_start_3
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 70
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/objects/EditedData;->version:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lpl/mkrstudio/truefootball3/objects/EditedData;->version:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 71
    :cond_5
    invoke-virtual {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/EditedData;->addPlayers(Ljava/lang/String;Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;)V

    .line 72
    iput-object v1, p0, Lpl/mkrstudio/truefootball3/objects/EditedData;->version:Ljava/lang/String;

    :cond_6
    if-eqz v5, :cond_7

    .line 77
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_7
    :goto_3
    return-void

    .line 70
    :goto_4
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/objects/EditedData;->version:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p2, p0, Lpl/mkrstudio/truefootball3/objects/EditedData;->version:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 71
    :cond_8
    invoke-virtual {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/EditedData;->addPlayers(Ljava/lang/String;Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;)V

    .line 72
    iput-object v1, p0, Lpl/mkrstudio/truefootball3/objects/EditedData;->version:Ljava/lang/String;

    :cond_9
    if-eqz v5, :cond_a

    .line 77
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    .line 79
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    :cond_a
    :goto_5
    throw p3
.end method


# virtual methods
.method addPlayers(Ljava/lang/String;Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "version",
            "dbh"
        }
    .end annotation

    const-string v0, "1.0"

    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {p2, v0}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->fetchPlayers(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 87
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 88
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/EditedData;->editedPlayers:Ljava/util/HashMap;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, "2.0"

    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "3.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    const-string v0, "4.0"

    .line 96
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/EditedData;->editedPlayers:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    const-string p1, "4"

    .line 98
    invoke-virtual {p2, p1}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->fetchPlayers(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 99
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/EditedData;->editedPlayers:Ljava/util/HashMap;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string v0, "5.0"

    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 103
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/EditedData;->editedPlayers:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    const-string p1, "5"

    .line 104
    invoke-virtual {p2, p1}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->fetchPlayers(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 105
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 106
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/EditedData;->editedPlayers:Ljava/util/HashMap;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 91
    :cond_3
    :goto_3
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/EditedData;->editedPlayers:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    const-string p1, "3"

    .line 92
    invoke-virtual {p2, p1}, Lpl/mkrstudio/truefootball3/helpers/DataBaseHelper;->fetchPlayers(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 93
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 94
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/EditedData;->editedPlayers:Ljava/util/HashMap;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    return-void
.end method

.method public getEditedDivisionSwaps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/DivisionSwap;",
            ">;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/EditedData;->editedDivisionSwaps:Ljava/util/List;

    return-object v0
.end method

.method public getEditedPlayers()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStub;",
            ">;>;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/EditedData;->editedPlayers:Ljava/util/HashMap;

    return-object v0
.end method

.method public getEditedTeamNames()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/EditedData;->editedTeamNames:Ljava/util/HashMap;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/EditedData;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setEditedDivisionSwaps(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editedDivisionSwaps"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/DivisionSwap;",
            ">;)V"
        }
    .end annotation

    .line 142
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/EditedData;->editedDivisionSwaps:Ljava/util/List;

    return-void
.end method

.method public setEditedPlayers(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editedPlayers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStub;",
            ">;>;)V"
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/EditedData;->editedPlayers:Ljava/util/HashMap;

    return-void
.end method

.method public setEditedTeamNames(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editedTeamNames"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/EditedData;->editedTeamNames:Ljava/util/HashMap;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    .line 126
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/EditedData;->version:Ljava/lang/String;

    return-void
.end method
