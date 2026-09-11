.class Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;
.super Ljava/lang/Object;
.source "Goal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/matchEvents/Goal;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

.field final synthetic val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/matchEvents/Goal;Lpl/mkrstudio/truefootball3/objects/UserData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$ud"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    move-object/from16 v0, p0

    .line 89
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v1

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getDiff(Lpl/mkrstudio/truefootball3/objects/Team;)D

    move-result-wide v1

    const/16 v8, 0xc

    const/16 v9, 0xb

    const/16 v10, 0xa

    const/16 v11, 0x9

    const/16 v12, 0x8

    const/4 v13, 0x7

    const/4 v14, 0x6

    const/4 v15, 0x5

    const/4 v3, 0x4

    const/16 v16, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v17, 0x0

    const-wide/high16 v18, 0x4008000000000000L    # 3.0

    cmpl-double v20, v1, v18

    if-lez v20, :cond_0

    const/16 v1, 0x14

    new-array v2, v1, [Ljava/lang/String;

    .line 91
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 92
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0c02c5

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v7, v7, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v17

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v17

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 93
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0c02d0

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v7, v7, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->defendingTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v17

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v5

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 94
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0c02d1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v7, v7, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v17

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v4

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 95
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0c02d2

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v16

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 96
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0c02d3

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 97
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c02d4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->defendingTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v17

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v15

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 98
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c02d5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v14

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 99
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c02d6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v17

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v13

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 100
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c02d7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->defendingTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v17

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v12

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 101
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c02c6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v11

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 102
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c02c7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v17

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v10

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 103
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c02c8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v17

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v9

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 104
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c02c9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v17

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v8

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 105
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c02ca

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v17

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xd

    aput-object v1, v2, v3

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 106
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c02cb

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xe

    aput-object v1, v2, v3

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 107
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c02cc

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v17

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xf

    aput-object v1, v2, v3

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 108
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c02cd

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x10

    aput-object v1, v2, v3

    const/16 v1, 0x11

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v3, v3, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 109
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c02ce

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v6, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v6, v6, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->defendingTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v17

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/16 v1, 0x12

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v3, v3, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 110
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c02cf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v6, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v6, v6, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->defendingTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v17

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/16 v1, 0x13

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v3, v3, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 111
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0326

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v5, v5, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v17

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 113
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 114
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v3, v3, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    check-cast v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    const/16 v4, 0x14

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v1, v2, v1

    invoke-virtual {v3, v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v18, v1, v6

    if-lez v18, :cond_1

    const/16 v6, 0xd

    new-array v1, v6, [Ljava/lang/String;

    .line 116
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 117
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0c02d8

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v7, v7, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v17

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v17

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 118
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0c02dc

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v7, v7, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v17

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 119
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0c02dd

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v7, v7, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->defendingTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v17

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 120
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c02de

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v6, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v6, v6, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v17

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v16

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 121
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c02df

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v6, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v6, v6, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v17

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 122
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c02e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v15

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 123
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c02e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->defendingTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v17

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v14

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 124
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c02e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v17

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v13

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 125
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c02e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 126
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c02d9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->defendingTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v17

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 127
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c02da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v17

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 128
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c02db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->defendingTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v17

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 129
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0326

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v17

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 131
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 132
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v3, v3, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    check-cast v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    const/16 v4, 0xd

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v3, v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const v6, 0x7f0c0317

    const/16 v7, 0x5a

    const/16 v9, 0x57

    const-wide/16 v21, 0x0

    cmpl-double v23, v1, v21

    if-lez v23, :cond_2

    .line 133
    iget-object v10, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v10, v10, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    check-cast v10, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getTime()I

    move-result v10

    if-le v10, v9, :cond_2

    iget-object v10, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v10, v10, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    check-cast v10, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getTime()I

    move-result v10

    if-gt v10, v7, :cond_2

    new-array v1, v3, [Ljava/lang/String;

    .line 134
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 135
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v6, v4, [Ljava/lang/Object;

    iget-object v7, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v7, v7, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v17

    iget-object v7, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v7, v7, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v17

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 136
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0c0318

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v7, v7, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v17

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 137
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0c0319

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 138
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c031a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v16

    .line 140
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 141
    iget-object v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    check-cast v4, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v4, v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    cmpl-double v10, v1, v21

    if-lez v10, :cond_3

    .line 142
    iget-object v10, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v10, v10, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    check-cast v10, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getTime()I

    move-result v10

    if-gt v10, v9, :cond_3

    new-array v1, v8, [Ljava/lang/String;

    .line 143
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 144
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0c02e4

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v7, v7, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v17

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v17

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 145
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0c02e7

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v7, v7, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v17

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 146
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0c02e8

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v7, v7, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->defendingTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v17

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 147
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c02e9

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v6, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v6, v6, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v17

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v16

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 148
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c02ea

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v6, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v6, v6, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v17

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 149
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c02eb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v17

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v15

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 150
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c02ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->defendingTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v17

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v14

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 151
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c02ed

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v17

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v13

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 152
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c02ee

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v17

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 153
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c02e5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v17

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 154
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c02e6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->defendingTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v17

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v1, v3

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 155
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0326

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v17

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v1, v3

    .line 157
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 158
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v3, v3, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    check-cast v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v2, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v3, v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    cmpl-double v10, v1, v21

    if-nez v10, :cond_4

    .line 159
    iget-object v10, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v10, v10, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    check-cast v10, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getTime()I

    move-result v10

    if-le v10, v9, :cond_4

    iget-object v10, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v10, v10, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    check-cast v10, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getTime()I

    move-result v10

    if-gt v10, v7, :cond_4

    new-array v1, v12, [Ljava/lang/String;

    .line 160
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 161
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v6, v4, [Ljava/lang/Object;

    iget-object v7, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v7, v7, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v17

    iget-object v7, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v7, v7, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v17

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 162
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0c0318

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v7, v7, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v17

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 163
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0c0319

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 164
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c031a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v16

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 165
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c031b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 166
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c031c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->defendingTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v17

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v15

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 167
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c031d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v14

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 168
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c031e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v17

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v13

    .line 170
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 171
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v3, v3, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    check-cast v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v2, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v3, v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    cmpl-double v6, v1, v21

    if-nez v6, :cond_5

    .line 172
    iget-object v6, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v6, v6, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    check-cast v6, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getTime()I

    move-result v6

    if-gt v6, v9, :cond_5

    new-array v1, v11, [Ljava/lang/String;

    .line 173
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 174
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0c030e

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v7, v7, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->defendingTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v17

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v17

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 175
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0c030f

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v7, v7, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v17

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 176
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0c0310

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 177
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0311

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v16

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 178
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0312

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 179
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0313

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v15

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 180
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0314

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v14

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 181
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0315

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v13

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 182
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0316

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    .line 184
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 185
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v3, v3, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    check-cast v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v2, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v3, v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    cmpg-double v9, v1, v6

    if-gtz v9, :cond_6

    const/16 v1, 0x10

    new-array v2, v1, [Ljava/lang/String;

    .line 187
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 188
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0c02ef

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v7, v7, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v17

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v17

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 189
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0c02f7

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v5

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 190
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0c02f8

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v7, v7, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v17

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v4

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 191
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0c02f9

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v6, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v6, v6, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->defendingTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v17

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v16

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 192
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0c02fa

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v6, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v6, v6, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v17

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 193
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c02fb

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->defendingTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v17

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v15

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 194
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c02fc

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v14

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 195
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c02fd

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v17

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v13

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 196
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c02fe

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v17

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v12

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 197
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c02f0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v17

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v11

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 198
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c02f1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa

    aput-object v1, v2, v3

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 199
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c02f2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xb

    aput-object v1, v2, v3

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 200
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c02f3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v8

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 201
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c02f4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xd

    aput-object v1, v2, v3

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 202
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c02f5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xe

    aput-object v1, v2, v3

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 203
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c02f6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xf

    aput-object v1, v2, v3

    .line 205
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 206
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v3, v3, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    check-cast v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    const/16 v6, 0x10

    invoke-virtual {v1, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v1, v2, v1

    invoke-virtual {v3, v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const/16 v6, 0x10

    new-array v1, v6, [Ljava/lang/String;

    .line 208
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 209
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0c02ff

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v17

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 210
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0c0306

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 211
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0c0307

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 212
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0308

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v16

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 213
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0309

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v6, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v6, v6, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->defendingTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v17

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 214
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c030a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v15

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 215
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c030b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v17

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v14

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 216
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c030c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v13

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 217
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c030d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v17

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 218
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0300

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 219
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0301

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v1, v3

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 220
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0302

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v1, v3

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 221
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0303

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 222
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0304

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xd

    aput-object v2, v1, v3

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 223
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0305

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xe

    aput-object v2, v1, v3

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    .line 224
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c02f6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xf

    aput-object v2, v1, v3

    .line 226
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 227
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/matchEvents/Goal$3;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Goal;

    iget-object v3, v3, Lpl/mkrstudio/truefootball3/matchEvents/Goal;->context:Landroid/content/Context;

    check-cast v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v3, v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
