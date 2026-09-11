.class Lpl/mkrstudio/truefootball3/matchEvents/RedCard$1;
.super Ljava/lang/Object;
.source "RedCard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/matchEvents/RedCard;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/matchEvents/RedCard;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/matchEvents/RedCard;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/matchEvents/RedCard$1;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/RedCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 38
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/RedCard$1;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/RedCard;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/RedCard;->context:Landroid/content/Context;

    .line 39
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0661

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/matchEvents/RedCard$1;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/RedCard;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/matchEvents/RedCard;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/matchEvents/RedCard$1;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/RedCard;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/matchEvents/RedCard;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 41
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 42
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/RedCard$1;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/RedCard;

    iget-object v3, v3, Lpl/mkrstudio/truefootball3/matchEvents/RedCard;->context:Landroid/content/Context;

    check-cast v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {v3, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    return-void
.end method
