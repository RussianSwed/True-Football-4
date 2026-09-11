.class Lpl/mkrstudio/truefootball3/fragments/HistoryFragment$2;
.super Ljava/lang/Object;
.source "HistoryFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/HistoryFragment;->initTeamsManaged(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryFragment;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/HistoryFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
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

    .line 71
    check-cast p1, Lpl/mkrstudio/truefootball3/objects/History;

    .line 72
    check-cast p2, Lpl/mkrstudio/truefootball3/objects/History;

    .line 74
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/History;->getBeginDate()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/History;->getBeginDate()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
