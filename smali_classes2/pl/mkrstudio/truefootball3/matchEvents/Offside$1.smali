.class Lpl/mkrstudio/truefootball3/matchEvents/Offside$1;
.super Ljava/lang/Object;
.source "Offside.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/matchEvents/Offside;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/matchEvents/Offside;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/matchEvents/Offside;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/matchEvents/Offside$1;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Offside;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x7

    new-array v1, v0, [Ljava/lang/String;

    .line 36
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/Offside$1;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Offside;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Offside;->context:Landroid/content/Context;

    .line 37
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0406

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/Offside$1;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Offside;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Offside;->context:Landroid/content/Context;

    .line 38
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0407

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/Offside$1;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Offside;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Offside;->context:Landroid/content/Context;

    .line 39
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0408

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/Offside$1;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Offside;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Offside;->context:Landroid/content/Context;

    .line 40
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0409

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/Offside$1;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Offside;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Offside;->context:Landroid/content/Context;

    .line 41
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c040a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/Offside$1;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Offside;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Offside;->context:Landroid/content/Context;

    .line 42
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c040b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/matchEvents/Offside$1;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Offside;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/matchEvents/Offside;->context:Landroid/content/Context;

    .line 43
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0453

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 45
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 46
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/matchEvents/Offside$1;->this$0:Lpl/mkrstudio/truefootball3/matchEvents/Offside;

    iget-object v3, v3, Lpl/mkrstudio/truefootball3/matchEvents/Offside;->context:Landroid/content/Context;

    check-cast v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {v3, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    return-void
.end method
