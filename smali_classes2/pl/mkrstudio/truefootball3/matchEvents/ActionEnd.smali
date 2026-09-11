.class public Lpl/mkrstudio/truefootball3/matchEvents/ActionEnd;
.super Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;
.source "ActionEnd.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;-><init>()V

    .line 8
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/matchEvents/ActionEnd;->context:Landroid/content/Context;

    .line 9
    check-cast p1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getCommentarySpeed()I

    move-result p1

    iput p1, p0, Lpl/mkrstudio/truefootball3/matchEvents/ActionEnd;->delay:I

    return-void
.end method
