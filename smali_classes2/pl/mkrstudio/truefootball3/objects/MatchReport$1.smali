.class Lpl/mkrstudio/truefootball3/objects/MatchReport$1;
.super Ljava/lang/Object;
.source "MatchReport.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/objects/MatchReport;->sortEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/objects/MatchReport;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/objects/MatchReport;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/MatchReport$1;->this$0:Lpl/mkrstudio/truefootball3/objects/MatchReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "o1",
            "o2"
        }
    .end annotation

    .line 56
    check-cast p1, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;

    .line 57
    check-cast p2, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;

    .line 58
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->getTime()B

    move-result v0

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->getTime()B

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_0

    return v2

    .line 60
    :cond_0
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->getTime()B

    move-result v0

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->getTime()B

    move-result v1

    const/4 v3, 0x1

    if-ne v0, v1, :cond_3

    .line 61
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->getType()Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->YELLOW_CARD:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->getType()Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->RED_CARD:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    if-ne v0, v1, :cond_1

    return v2

    .line 62
    :cond_1
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->getType()Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    move-result-object p1

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->RED_CARD:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    if-ne p1, v0, :cond_2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->getType()Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    move-result-object p1

    sget-object p2, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->YELLOW_CARD:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    if-ne p1, p2, :cond_2

    return v3

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    return v3
.end method
